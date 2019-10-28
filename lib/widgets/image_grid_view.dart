import 'package:flutter/material.dart';
import 'package:image_performance/widgets/image_cell.dart';

enum ImageDisplayType {
  raw,
  just,
  tiny,
}

class ImageGridView extends StatelessWidget {
  const ImageGridView({
    Key key,
    @required this.type,
  }) : super(key: key);

  final ImageDisplayType type;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        15,
        (i) => ImageCell(
          index: i,
          type: type,
        ),
      ),
    );
  }
}
