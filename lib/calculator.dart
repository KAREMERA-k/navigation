import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.bottomRight,
            child: Text(
              '0',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              buildButtonRow(['7', '8', '9', '/']),
              buildButtonRow(['4', '5', '6', '*']),
              buildButtonRow(['1', '2', '3', '-']),
              buildButtonRow(['0', '.', '=', '+']),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildButtonRow(List<String> buttons) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.map((buttonText) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  buttonText,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
