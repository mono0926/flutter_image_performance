import 'package:flutter/material.dart';
import 'package:image_performance/util/util.dart';

import 'widgets.dart';

class ImageCell extends StatelessWidget {
  const ImageCell({
    Key key,
    @required this.index,
    @required this.type,
  }) : super(key: key);

  final int index;
  final ImageDisplayType type;
  String get _imageName => 'assets/images/p$index.jpg';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: _buildAppropriateImage(context),
    );
  }

  Widget _buildAppropriateImage(BuildContext context) {
    switch (type) {
      case ImageDisplayType.raw:
        return _buildImage();
      case ImageDisplayType.tiny:
        return _buildImage(cacheSize: 10);
      case ImageDisplayType.just:
        return LayoutBuilder(
          builder: (context, constraints) => _buildImage(
            cacheSize:
                (constraints.maxWidth * MediaQuery.of(context).devicePixelRatio)
                    .toInt(),
          ),
        );
    }
    assert(false, 'Unexpecgted type: $type');
    return null;
  }

  Widget _buildImage({int cacheSize}) {
    logger.info('cacheSize: $cacheSize');
    return Image.asset(
      _imageName,
      fit: BoxFit.cover,
      cacheWidth: cacheSize,
      cacheHeight: cacheSize,
    );
  }
}
