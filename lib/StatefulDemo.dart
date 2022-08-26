import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: <Widget>[
        MaterialButton(
          onPressed: _increment,
          color: Colors.blue,
          child: const Text('Increment', textDirection: TextDirection.ltr),
        ),
        const SizedBox(width: 16),
        Text('Count: $_counter', textDirection: TextDirection.ltr,),
      ],
    ),
    );
  }
}

class StatefulDemo extends StatefulWidget {
  const StatefulDemo({super.key});

  @override
  State<StatefulDemo> createState() => _StatefulDemoState();
}

class _StatefulDemoState extends State<StatefulDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("状态组件"),
      ),
      body: const Counter()
    );
  }
}
