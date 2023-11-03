import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psm/counter.dart';
import 'package:psm/first_screen.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(counterProvider.value.toString(), style: const TextStyle(fontSize: 30,color: Colors.red),),
            ElevatedButton(
                onPressed: () {
                  counterProvider.incriment();
                },
                child: const Text('Counter')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const FirstScreen()));
                },
                child: const Text("Go To First Screen"))
          ],
        ),
      )),
    );
  }
}
