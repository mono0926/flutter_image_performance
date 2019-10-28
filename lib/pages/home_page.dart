import 'package:flutter/material.dart';
import 'package:image_performance/pages/default_images_page.dart';
import 'package:image_performance/pages/just_images_page.dart';
import 'package:image_performance/pages/tiny_images_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Performance'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Default'),
            trailing: Icon(Icons.chevron_right),
            onTap: () =>
                Navigator.of(context).pushNamed(DefaultImagesPage.routeName),
          ),
          ListTile(
            title: const Text('Just'),
            trailing: Icon(Icons.chevron_right),
            onTap: () =>
                Navigator.of(context).pushNamed(JustImagesPage.routeName),
          ),
          ListTile(
            title: const Text('Tiny'),
            trailing: Icon(Icons.chevron_right),
            onTap: () =>
                Navigator.of(context).pushNamed(TinyImagesPage.routeName),
          ),
        ],
      ),
    );
  }
}
