// ignore_for_file: deprecated_member_use, avoid_print
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

//void main()
//{
//runApp(MyApp());
//}
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    //var Abool = true;
    //Abool = false;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < '_questions'.length) {
      print('We have more questions!');
    } else {
      print('no more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      'What\'s your favorite animal?',
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Penguin', 'Rabbit', 'Hamster', 'Horse'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Haso', 'Huso', 'Teufik', 'Sadik'],
      }
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My first app'),
          ), //AppBar
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : const Result()),
    );
  }
}
