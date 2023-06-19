import 'package:flutter/material.dart';
import 'package:newstore/screens/home/home_screen.dart';

class FishItem {
  final String title;
  final String subtitle;

  FishItem({required this.title, required this.subtitle});
}

class FishList extends StatefulWidget {
  const FishList({Key? key}) : super(key: key);

  @override
  _FishListState createState() => _FishListState();
}

class _FishListState extends State<FishList> {
  List<FishItem> fishItems = [
    FishItem(title: "Yellow Fin Tuna", subtitle: "Rp. 75.000/Kg"),
    FishItem(title: "Blue Fin Tuna", subtitle: "Rp. 90.000/Kg"),
    FishItem(title: "Tongkol", subtitle: "Rp. 10.000/Kg"),
    FishItem(title: "Pindang", subtitle: "Rp. 5000/Kg"),
    FishItem(title: "Salmon", subtitle: "Rp. 250.000/Kg"),
  ];

  List<int> quantities = [0, 0, 0, 0, 0];

  void incrementQuantity(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      if (quantities[index] > 0) {
        quantities[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish List'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
      ),
      body: ListView.builder(
        itemCount: fishItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(fishItems[index].title),
              subtitle: Text(fishItems[index].subtitle),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () => incrementQuantity(index),
                    icon: Icon(Icons.add),
                  ),
                  Text('${quantities[index]}'),
                  IconButton(
                    onPressed: () => decrementQuantity(index),
                    icon: Icon(Icons.remove),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FishList(),
  ));
}
