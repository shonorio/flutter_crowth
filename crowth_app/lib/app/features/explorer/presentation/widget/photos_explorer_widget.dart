import 'package:design_systems/design_systems.dart';
import 'package:flutter/material.dart';

class PhotosExplorerWidget extends StatefulWidget {
  const PhotosExplorerWidget({
    Key? key,
    required this.photos,
    required this.actionTitle,
  }) : super(key: key);

  final List<Image> photos;
  final String actionTitle;

  @override
  State<PhotosExplorerWidget> createState() => _PhotosExplorerWidgetState();
}

class _PhotosExplorerWidgetState extends State<PhotosExplorerWidget> {
  int _currentPage = 0;
  final double indicatorSize = 8.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          _builPageScroll(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildPagination(),
              _buildAction(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPagination() {
    List<Widget> indicators = [];
    final int totalPhotos = widget.photos.length;

    if (totalPhotos < 2) {
      return SizedBox(height: indicatorSize);
    }

    for (var i = 0; i < totalPhotos; i++) {
      indicators.add(_indicator(i == _currentPage));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  Widget _indicator(bool isCurrentPage) {
    return Container(
        height: indicatorSize,
        width: indicatorSize,
        decoration: BoxDecoration(
          color: isCurrentPage ? Colors.green.shade500 : Colors.white,
          shape: BoxShape.circle,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 4.0));
  }

  Widget _builPageScroll() {
    return PageView.builder(
        itemCount: widget.photos.length,
        onPageChanged: (int page) => setState(() => _currentPage = page),
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              widget.photos[index],
              Container(color: Colors.black.withOpacity(0.1))
            ],
          );
        });
  }

  Widget _buildAction() {
    return TextButton(
        onPressed: () {},
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(widget.actionTitle,
              style: crowthThemesLight.textTheme.subtitle1
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            ),
          )
        ]));
  }
}
