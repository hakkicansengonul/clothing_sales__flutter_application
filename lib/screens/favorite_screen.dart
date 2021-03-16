import 'package:clothing_sales_application/Animation/FadeAnimation.dart';
import 'package:clothing_sales_application/data_body/datas.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25.0,
            ),
            Container(
              color: Colors.grey[200],
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: FadeAnimation(
                  1.2,
                  ListView.builder(
                    itemCount: Products_Popular.length,
                    itemBuilder: (context, index) {
                      return favorite_Products[index];
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
