import 'package:flutter/material.dart';

void main() {
  runApp(const ToggleButton());
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  @override
  List<bool> _isSelected = List.generate(3, (_) => false);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ToggleButtons(
            borderRadius: BorderRadius.circular(30),
            color: Colors.red,
            hoverColor: Color.fromARGB(255, 134, 185, 227),
            borderColor: Colors.orange,
            selectedColor: Colors.green,
            onPressed: (int index) {
              setState(() {
                for (int buttonIndex = 0;
                    buttonIndex < _isSelected.length;
                    buttonIndex++) {
                  if (buttonIndex == index) {
                    _isSelected[buttonIndex] = !_isSelected[buttonIndex];
                  } else {
                    _isSelected[buttonIndex] = false;
                  }
                }
              });
            },
            children: [
              Icon(Icons.home),
              Icon(Icons.mail),
              Icon(Icons.phone),
            ],
            isSelected: _isSelected,
          ),
        ],
      )),
    );
  }
}
