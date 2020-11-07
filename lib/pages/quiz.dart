import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key key}) : super(key: key);

  static MaterialPageRoute get route =>
      MaterialPageRoute(builder: (_) => QuizPage());

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Progress Bar
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.black,
            ),
            height: 40,
            child: LinearProgressIndicator(
              minHeight: 20,
              value: 0.4,
              backgroundColor: Colors.white,
            ),
          ),
          // Question Menu
          Container(
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxHeight: 80, minHeight: 64),
                  color: Colors.amber,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      FlutterLogo(size: 64.0),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.yellow,
                      margin: EdgeInsets.all(4.0),
                      child: Text("Option A"),
                    ),
                    Container(
                      color: Colors.yellow,
                      margin: EdgeInsets.all(4.0),
                      child: Text("Option B"),
                    ),
                    Container(
                      color: Colors.yellow,
                      margin: EdgeInsets.all(4.0),
                      child: Text("Option C"),
                    ),
                    Container(
                      color: Colors.yellow,
                      margin: EdgeInsets.all(4.0),
                      child: Text("Option D"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
