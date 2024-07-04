import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  const Books({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        // Use index to alternate between blue and red colors
        final color = index.isOdd ? Colors.red : Colors.blue;
        return _buildBookContainer(color);
      },
      separatorBuilder: (BuildContext context, int index) {
        // Add space between items using a SizedBox
        return SizedBox(width: 10);
      },
      itemCount: 2, // Number of items in the list
    );
  }

  Widget _buildBookContainer(Color color) {
    return Container(
      color: color,
      height: 2,
      width: 70,
    );
  }
}
