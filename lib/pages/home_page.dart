import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/cart_list.dart';
import 'package:flutter_application_2/models/product_list.dart';
import 'package:flutter_application_2/pages/cart.dart';
import 'package:flutter_application_2/pages/cart_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        children: <Widget> [
          Text('Магазин одежды МИРЭА'),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
          }, child: Icon(Icons.shopping_cart),)
          
        ], mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      ),
      body: Center(
        child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.4),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                itemCount: productList.length,
                
                itemBuilder: (BuildContext context, int index) {
        return GestureDetector(

         onTap:  ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => CardInfo(indexCart: index,))),
          child: Card(   
                     
            color: Colors.white,
            margin: EdgeInsets.all(16),
            child: Column(
              
              children: [
                Image.network('https://ir.ozone.ru/s3/multimedia-u/wc1000/6604613850.jpg',
                width: 170,),
                // цена
                const Text('1200 p'),
                // наименование 
                Text('${productList[index].toString()}', style: TextStyle(fontWeight: FontWeight.bold),),
                // кнопка в корзину
                ElevatedButton(onPressed: (){
                  productCart.add(productList[index].toString());                  
                }, 
                child: const Text('В корзину'))
              ],
          
              
            ),
          ),
        );
      }
    ),  
  ),
    );
  }
}
