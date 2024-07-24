import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/product_list.dart';


// экран товара
class CardInfo extends StatelessWidget {
  CardInfo({super.key, required this.indexCart});

  final int indexCart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Карточка товара'),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            Image.network('https://ir.ozone.ru/s3/multimedia-u/wc1000/6604613850.jpg'),
            const Text('1200 p'),
            Text('${productList[indexCart].toString()}'),
          ],
        ),
      ),
    );
  }
}
