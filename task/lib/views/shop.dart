import 'package:flutter/material.dart';
import 'package:task/models/catalog.dart';
import 'package:task/utils/shap_itme_box.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(backgroundColor: Colors.amber,
          radius: 70, 
              backgroundImage: AssetImage('assets/image/farmer.gif'),
              ),
        ),
        backgroundColor: Colors.green,
        title: const Text('18\u00B0C'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20,),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.shopify_rounded),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            color: Colors.green,
            child: Center(
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Row(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Search', style: TextStyle(fontSize: 22),),
                  ),
                ]),
              ),
            ),
          ),

          SizedBox(
            height: 145,
            child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 5, right: 20,),
              child: GridView.builder(
                itemCount: 3,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    mainAxisExtent: 120),
                itemBuilder: (itemBuilder, index) {
                  return ShopPageCard1(
                    subtitle: imageSubtitle[index],
                    text: imageTitle[index],
                    name: imageNames[index],
                  );
                },
              ),
            ),
                    ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 150,
            child: Expanded(
              child: ListView.builder(scrollDirection: Axis.horizontal ,itemCount: 2 ,itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 370,
                    color: Colors.amber,
                    child: Image.asset('assets/image/baner.png', fit: BoxFit.cover,),
                  ),
                );
              },),
            ),
          ),
        ),
          const Text('Offer available for limited time', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),

          SizedBox(
            height: 200,
            child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 5, right: 20,),
              child: GridView.builder(
                itemCount: imageNames.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    mainAxisExtent: 120),
                itemBuilder: (itemBuilder, index) {
                  return ShopPageCard1(
                    subtitle: imageSubtitle[index],
                    text: imageTitle[index],
                    name: imageNames[index],
                  );
                },
              ),
            ),
                    ),
          ),
        ],
      ),
    );
  }
}