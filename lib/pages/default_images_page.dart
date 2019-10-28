import 'package:flutter/material.dart';
import 'package:image_performance/widgets/image_grid_view.dart';

class DefaultImagesPage extends StatelessWidget {
  const DefaultImagesPage({Key key}) : super(key: key);

  static const routeName = '/Default';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(routeName)),
      body: const ImageGridView(type: ImageDisplayType.raw),
    );
  }
}
