// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
   
}
// ovdje ispod sto je crveno, je do tebe
// vidis da u erroru pise da vec postoji varijabla questionIndex a ti je jos jednom kreiras.. tako da ne moze
// mora da bude samo jednom.. vjerujem da je i na kursu samo jednom kreirana, tj nije istovremeno 2x napravljena
// da bi rijesio taj problem, moras jednu izbrisati/zakomentarisati
var  questionIndex = 0; 
int questionsIndex = questionIndex + 1;
print(questionIndex) {
  // TODO: implement print
  throw UnimplementedError();
} 
  // TODO: implement print

{

  void answerQuestion() {
    // ignore: avoid_print
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
          Text(
            questions [questionIndex],
          ),
          RaisedButton(
            child: const Text('Answer 1'),
            onPressed: answerQuestion,
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
