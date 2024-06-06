import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'teladeclassificação.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionScreen(),
    );
  }
}

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final List<String> questions = [
    "Telefonou para a vítima?",
    "Esteve no local do crime?",
    "Mora perto da vítima?",
    "Devia para a vítima?",
    "Já trabalhou com a vítima?"
  ];

  final List<bool> answers = List.filled(5, false);

  void _saveAnswers() async {
    final prefs = await SharedPreferences.getInstance();
    int positiveAnswers = answers.where((answer) => answer).length;
    await prefs.setInt('positiveAnswers', positiveAnswers);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas da investigação'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(questions[index]),
            trailing: Switch(
              value: answers[index],
              onChanged: (value) {
                setState(() {
                  answers[index] = value;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveAnswers,
        child: Icon(Icons.save),
      ),
    );
  }
}
