# image_performance

## Memory usage

![](screenshots/memory.png)

## Image Quality

Default | Using cacheWidth/cacheHeight
--- | ---
![](screenshots/default.png) | ![](screenshots/just_size.png)


## Basic usage of cacheWidth/cacheHeight


```dart
LayoutBuilder(
  builder: (context, constraints) {
    final cacheSize =
        (constraints.maxWidth * MediaQuery.of(context).devicePixelRatio)
            .toInt();
    return Image.asset(
      _imageName,
      fit: BoxFit.cover,
      cacheWidth: cacheSize,
      cacheHeight: cacheSize,
    );
  },
);
```