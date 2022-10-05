import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'groceries.dart';


class DetailBarang extends StatefulWidget {
  final Groceries barang;

  const DetailBarang ({Key? key, required this.barang}) : super(key: key);

  @override
  State<DetailBarang> createState() => _DetailBarangState();
}

class _DetailBarangState extends State<DetailBarang> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Barang'),

      ),
      body: Column(

        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: (MediaQuery
                .of(context)
                .size
                .height)/3,
                  child: Image.network(
                      widget.barang.productImageUrls[0], width: 300, height: 300,
                  ),
              //itemCount: widget.barang.productImageUrls[0].length,
          ),
          Container(
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                boldText(widget.barang.name),
                SizedBox(height: 5,),
                mediumText(widget.barang.description),
                SizedBox(height: 5,),
                mediumText(widget.barang.price),
                SizedBox(height: 5,),
                mediumText(widget.barang.stock),
                SizedBox(height: 5,),
                mediumText(widget.barang.storeName),
                SizedBox(height: 5,),
                mediumText(widget.barang.reviewAverage),

              ],

            ),
          ),
        ],
      ),
    );
  }
  Widget boldText(String text){
    return Text(
      text,
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.red),
    );
  }
  Widget mediumText(String text){
    return Text(
      text,
      style: TextStyle(fontSize:15,color: Colors.black87),
      textAlign: TextAlign.center,

    );
  }
}