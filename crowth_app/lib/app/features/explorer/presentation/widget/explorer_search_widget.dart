import 'package:flutter/material.dart';

class ExplorerSearchWidget extends StatelessWidget {
  const ExplorerSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      height: 56.0,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black.withOpacity(0.1),
                contentPadding: const EdgeInsets.only(left: 12, top: 2),
                hintText: " Senior Project Manager London",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close))
        ],
      ),
    );
  }
}
