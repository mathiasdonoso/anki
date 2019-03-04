import 'package:anki/RoundOptionButton.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anki',
      theme: ThemeData(
          primarySwatch: Colors.blue, primaryColorBrightness: Brightness.light),
      home: MyHomePage(title: 'Anki'),
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
  Widget _buildAppBar() {
    return new AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: new Text('Anki App'),
    );
  }

  Widget _buildBottomBar() {

    const EASY = 'Easy';
    const HARD = 'Hard';
    const CANT_REMEMBER = 'X';

    return BottomAppBar(
        color: Colors.transparent,
        elevation: 0.0,
        child: new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new RoundOptionButton.large(
                  text: EASY,
                  color: Colors.green,
                  onPressed: () {},
                ),
                new RoundOptionButton.large(
                  text: HARD,
                  color: Colors.orange,
                  onPressed: () {},
                ),
                new RoundOptionButton.large(
                  text: CANT_REMEMBER,
                  color: Colors.red,
                  onPressed: () {},
                )
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: new Center(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }
}
