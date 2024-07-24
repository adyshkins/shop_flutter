import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/cart_list.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Корзина'),),
      body: ListView.builder(
        itemCount: productCart.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            margin: EdgeInsets.all(16),
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network('https://ir.ozone.ru/s3/multimedia-u/wc1000/6604613850.jpg'),
              Text('${productCart[index]}'),
              SizedBox(width: 30,),
              Text('1000 р'),
              SizedBox(width: 30,),
              ElevatedButton(onPressed: (){
                
                setState(() {
                  productCart.remove(productCart[index]);
                });
              }, child: Icon(Icons.delete),),
            ],
          ));
        } ,)
    );
  }
}