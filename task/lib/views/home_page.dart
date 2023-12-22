import 'package:flutter/material.dart';
import 'package:task/models/catalog.dart';
import 'package:task/utils/home_item_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 203, 214, 10),
        title: const Text(
          'Farmers Calendar',
          style: TextStyle(
              color: Color.fromARGB(255, 255, 62, 62),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Image.asset("assets/image/farmer.png"),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            color: const Color.fromARGB(255, 203, 214, 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: GestureDetector(
                      onTap: () {},
                      child: const Text("Click Here",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                              fontWeight: FontWeight.bold)),
                    )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: imageNames.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 230),
              itemBuilder: (itemBuilder, index) {
                return Box(
                  subtitle: imageSubtitle[index],
                  text: imageTitle[index],
                  name: imageNames[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
