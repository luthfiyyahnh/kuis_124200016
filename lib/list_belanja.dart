import 'package:flutter/material.dart';
import 'detail_belanja.dart';
import 'groceries.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cari Barang Yang Diinginkan'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Groceries barang = groceryList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailBarang(barang: barang)));
            },
            child: Card(
              child: ListTile(
                leading: Image.network(
                  barang.productImageUrls[0],
                  width: 100,
                  height: 300,
                ),
                //crossAxisAlignment: CrossAxisAlignment.center,
                //children: [
                //Image.network(barang.productImageUrls[0],width: 200,height: 300,),

                //Padding(
                //padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                //child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                //children: [
                title: Text(
                  barang.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                subtitle: Text(
                  barang.storeName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                //],
                //)
                //),
                //],
              ),
            ),
          );
        },
        itemCount: groceryList.length,
      ),
    );
  }
}
