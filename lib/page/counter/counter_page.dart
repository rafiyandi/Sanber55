import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('direbuild Ulang');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  counter--;
                  setState(() {});
                  print('Nilai Counter Reduce: $counter');
                },
                child: Icon(Icons.remove)),
            SizedBox(width: 10),
            Text('Counter : $counter'),
            SizedBox(width: 10),
            InkWell(
                onTap: () {
                  counter++;
                  setState(() {});
                  print('Nilai Counter Add : $counter');
                },
                child: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
