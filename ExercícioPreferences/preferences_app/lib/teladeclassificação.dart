import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultScreen extends StatelessWidget {
  Future<String> _getResult() async {
    final prefs = await SharedPreferences.getInstance();
    int positiveAnswers = prefs.getInt('positiveAnswers') ?? 0;

    if (positiveAnswers == 2) {
      return 'Suspeita';
    } else if (positiveAnswers >= 3 && positiveAnswers <= 4) {
      return 'Cúmplice';
    } else if (positiveAnswers == 5) {
      return 'Assassino';
    } else {
      return 'Inocente';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: FutureBuilder<String>(
        future: _getResult(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(child: Text('Você é: ${snapshot.data}'));
          }
        },
      ),
    );
  }
}
