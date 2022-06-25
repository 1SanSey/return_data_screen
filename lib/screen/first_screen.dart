import 'package:flutter/material.dart';
import 'package:return_data_screen/screen/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'Some Text';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Screen'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {
              _returnDataFromSecondScreen(context);
            },
            child: const Text(
              'Go to Second Screen',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      )),
    );
  }

  void _returnDataFromSecondScreen(BuildContext context) async {
    Route route = MaterialPageRoute(builder: (context) => const SecondScreen());
    final result = await Navigator.push(context, route);

    setState(() {
      text = result;
    });
  }
}
