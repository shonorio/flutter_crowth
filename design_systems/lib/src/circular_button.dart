import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isActived;

  const CircularButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.isActived,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => {_buttonAction()},
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildIcone(isActived),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(title),
          )
        ],
      ),
      iconSize: 112.0,
      tooltip: title,
      padding: const EdgeInsets.all(0),
    );
  }

  Widget _buildIcone(bool isActive) {
    Color backgroundColor = isActive ? Colors.black : Colors.white;
    Color iconColor = isActive ? Colors.white : Colors.black;
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: Icon(icon, color: iconColor, size: 28.0),
      ),
    );
  }

  void _buttonAction() {
    // ignore: avoid_print
    print(title);
  }
}
