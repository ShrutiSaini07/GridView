import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Grid Layout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var arrColors = [
      Colors.amber,
      Colors.pink,
      Colors.blueAccent,
      Colors.deepOrangeAccent,
      Colors.deepPurpleAccent,
      Colors.green,
      Colors.orange,
      Colors.cyan
    ];

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: GridView.extent(
        maxCrossAxisExtent:50,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      children: [
        Container(color: Colors.brown,),
        Container(color: Colors.brown,),
        Container(color: Colors.brown,),
        Container(color: Colors.brown,),
        Container(color: Colors.brown,),
        Container(color: Colors.brown,),
        Container(color: Colors.brown,),
        Container(color: Colors.brown,),
      ],
      ),
    );
  }
}
