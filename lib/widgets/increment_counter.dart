import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  final int initialValue;

  const CounterWidget({Key? key, this.initialValue = 0}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        // add box border with black color
        border: Border.all(color: Colors.black),  
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: _decrementCounter,
              icon: const Icon(Icons.remove),
            ),
          ),
          Text(
            '$_counter',
            style: const TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 30,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: _incrementCounter,
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
