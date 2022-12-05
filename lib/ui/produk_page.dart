import 'package:flutter/material.dart';
import 'package:flutter_app/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data produk'),
        actions: [
          GestureDetector(
            // menampilkan icon +
            child: const Icon(Icons.add),
            //pada saat icon + di tap
            onTap: () async {
              // pindahan kanke halaman produkFrom
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProdukForm()));
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          // list 1
          Card(
            child: ListTile(
              title: Text('Kulkas'),
              subtitle: Text('2500000'),
            ),
          ),
          // list 2
          Card(
            child: ListTile(
              title: Text('tv'),
              subtitle: Text('5000000'),
            ),
          ),
          // list 3
          Card(
            child: ListTile(
              title: Text('Mesin Cuci'),
              subtitle: Text('1500000'),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget{
  final String? kodeproduk;
  final String? namaproduk;
  final int? harga;

  const ItemProduk({Key? key,this.kodeproduk,this.namaproduk,this.harga})
  : super (key: key);
  @override
  Widget build(BuildContext context){
    return Card(
      child: ListTile(
        title: Text(namaproduk.toString()),
        subtitle: Text(harga.toString()),
      ),
    );
  }
}