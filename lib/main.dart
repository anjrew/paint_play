import 'package:flutter/material.dart';
import 'package:paint_play/painters/paint_one.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Paint Play',
            theme: ThemeData(
                primarySwatch: Colors.purple,
            ),
            home: MyHomePage(title: 'Paint Play'),
        );
    }
}

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);
    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            body: Center(
                child: CustomPaint(
							painter: PaintOne(),
							child: Text("Paint one"),
						)
            ),
        );
    }
}

// GridView.count(
//                     crossAxisCount: 3,
//                     childAspectRatio: 1.0,
//                     children: <Widget>[
						
// 					],
//                 ),