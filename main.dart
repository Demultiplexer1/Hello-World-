// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import './question.dart';

//void main()
//{
//runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first app'),
        ), //AppBar
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ),
          RaisedButton(
            child: const Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: const Text('Answer 2'),
            // ignore: avoid_print
            onPressed: () => print('Answer 2 chosen!'),
          ),
          RaisedButton(
            child: const Text('Answer 3'),
            onPressed: () {
              //...
              // ignore: avoid_print
              print('Answer 3 chosen');
            },
          ),
        ]),
      ),
    );
  }
}