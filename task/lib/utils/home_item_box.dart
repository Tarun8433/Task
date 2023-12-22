import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  final String name;
  final String text;
  final String subtitle;
  const Box(
      {required this.name,
      required this.text,
      required this.subtitle,
      Key? key})
      : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 209, 157),
          border: Border.all(color: const Color.fromARGB(255, 250, 5, 5)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(widget.name),
              ),
            ),
            Text(
              widget.text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.subtitle,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}