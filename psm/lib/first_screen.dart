import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psm/counter.dart';
import 'package:psm/second_screen.dart';

// ignore: must_be_immutable
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  //Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              counterProvider.value.toString(),
              style: const TextStyle(fontSize: 30, color: Colors.red),
            ),
            ElevatedButton(
                onPressed: () {
                  counterProvider.incriment();
                },
                child: const Text('Counter')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SecondScreen()));
                },
                child: const Text("Go To Second Screen"))
          ],
        ),
      )),
    );
  }
}
