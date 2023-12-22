import 'package:flutter/material.dart';

class ShopPageCard1 extends StatefulWidget {
  final String name;
  final String text;
  final String subtitle;
  const ShopPageCard1(
      {required this.name,
      required this.text,
      required this.subtitle,
      Key? key})
      : super(key: key);

  @override
  State<ShopPageCard1> createState() => _ShopPageCard1State();
}

class _ShopPageCard1State extends State<ShopPageCard1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 233, 168),
        border: Border.all(color: Color.fromARGB(255, 5, 62, 250)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.only(top: 3,),
                  child: Container(height: 60, width: 60 ,child: Image.asset(widget.name)),
                ),
              ),
            ),
            Text(
              widget.text,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 168, 7)),
            ),
            Text(
              widget.subtitle,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 168, 7)),
            ),
        ],
      ),
    );
  }
}