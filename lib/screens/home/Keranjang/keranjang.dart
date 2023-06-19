import 'package:flutter/material.dart';
import 'package:newstore/screens/home/home_screen.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({
    super.key,
  });

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("1. Yellow Fin Tuna"),
            trailing: Text("1x"),
          ),
          ListTile(
            title: Text("2. Blue Fin Tuna"),
            trailing: Text("4x"),
          ),
          ListTile(
            title: Text("3. Tongkol"),
            trailing: Text("3x"),
          ),
        ],
      ),
    );
  }
}
