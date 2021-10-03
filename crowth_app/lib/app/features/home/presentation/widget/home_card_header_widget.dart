import '../../domain/entity/home_card_entity.dart';
import 'package:design_systems/design_systems.dart';
import 'package:flutter/material.dart';

class HomeCardHeaderWidget extends StatefulWidget {
  final HomeCardEntity dataSource;
  const HomeCardHeaderWidget({
    Key? key,
    required this.dataSource,
  }) : super(key: key);

  @override
  State<HomeCardHeaderWidget> createState() => _HomeCardHeaderState();
}

class _HomeCardHeaderState extends State<HomeCardHeaderWidget> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        children: [
          _builderPageScroll(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFavoriteActionHeader(),
              _buildPagination(),
            ],
          )
        ],
      ),
    );
  }

  Widget _builderPageScroll() {
    return PageView.builder(
      itemCount: widget.dataSource.images.length,
      itemBuilder: (context, index) {
        return widget.dataSource.images[index];
      },
      onPageChanged: (int page) => setState(() => _currentPage = page),
    );
  }

  Widget _buildFavoriteActionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: widget.dataSource.tagColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          height: 35,
          child: Row(
            children: [
              Text(widget.dataSource.tagTitle,
                  style: crowthThemesLight.textTheme.subtitle2),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.favorite),
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon:
                const Icon(Icons.favorite_border_outlined, color: Colors.white))
      ],
    );
  }

  Widget _buildPagination() {
    if (widget.dataSource.images.length == 1) {
      return Container();
    }

    return Container(
      margin: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _pageIndicators(),
      ),
    );
  }

  List<Widget> _pageIndicators() {
    List<Widget> indicators = [];
    for (int i = 0; i < widget.dataSource.images.length; i++) {
      indicators.add(_indicator(i == _currentPage));
    }

    return indicators;
  }

  Widget _indicator(bool isActive) {
    const double indicatorSize = 10.0;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: indicatorSize,
      width: isActive ? indicatorSize * 2.5 : indicatorSize,
      decoration: BoxDecoration(
          color: isActive ? widget.dataSource.tagColor : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(indicatorSize))),
    );
  }
}
