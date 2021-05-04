import 'package:flutter/material.dart';
import 'package:platzi2/description_place.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vel diam eu mattis. Integer bibendum, enim quis lobortis sodales, nunc ligula dignissim nisi, vel consequat ante nulla egestas est. \n\n Cras vel scelerisque nisl, vel vulputate quam. Aenean non feugiat neque. Donec nec ligula eu velit efficitur dictum vel a massa. Vestibulum in augue non velit lacinia gravida.';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: DescriptionPlace('Duwili Ella', 2, description),
      ),
    );
  }
}
