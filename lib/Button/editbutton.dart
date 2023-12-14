import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.press, required this.text});

  final VoidCallback press;
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: size.width * 0.3,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 250, 245, 199),
          borderRadius: BorderRadius.circular(10),
        ),
      
        child: TextButton(
          onPressed: press,
          child: Text(text, style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}