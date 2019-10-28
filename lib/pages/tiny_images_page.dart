import 'package:flutter/material.dart';
import 'package:image_performance/widgets/image_grid_view.dart';

class TinyImagesPage extends StatelessWidget {
  const TinyImagesPage({Key key}) : super(key: key);

  static const routeName = '/Tiny';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(routeName)),
      body: const ImageGridView(type: ImageDisplayType.tiny),
    );
  }
}
