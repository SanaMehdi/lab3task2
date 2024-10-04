import 'package:flutter/material.dart';

void main() {
  runApp(WidgetApp());
}

class WidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets Demo'), // Ensuring a valid title is present here.
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Displaying an image at the top
            Image.network(
              //'https://flutter.dev/images/flutter-logo-sharing.png',
              'https://bloomthis.co/cdn/shop/files/bloomthis-hat-box-aphrodite-red-rose-flower-box-1080x1080-08_ec80db86-4004-4404-9bf3-88a560c57b20.jpg?v=1713240579&width=1000',
              height: 150,
            ),
            SizedBox(height: 20), // Spacing

            // Row with Icons and Text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.red),
                    Text('Favorite'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text('Star'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Colors.blue),
                    Text('Share'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40), // More spacing

            // Elevated button at the bottom
            ElevatedButton(
              onPressed: () {
                // Define button action
                print('Button Pressed');
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
