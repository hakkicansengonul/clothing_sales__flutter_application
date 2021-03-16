import 'package:clothing_sales_application/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'home_screens.dart';

class BasketPage extends StatefulWidget {
  @override
  _BasketPageState createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: FadeAnimation(
        1.2,
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25.0,
            ),
            Container(
              color: Colors.grey[200],
              height: 500.0,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 250.0,
                    width: double.infinity,
                    child: ListView(
                      children: [
                        Widgetlisttilechildren2("Dress-black", "1", 8.14),
                        Widgetlisttilechildren2("Pants", "3", 4.45),
                        Widgetlisttilechildren2("Dress-blue", "4", 25.17),
                        Widgetlisttilechildren2("Pants-red", "5", 18.19),
                        Widgetlisttilechildren2("Dress-yellow", "3", 3.64),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                        child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.white,
                      ),
                      label: Center(
                          child: Text(
                        "Buy",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      )),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widgetlisttilechildren2(String name, String price, double piece) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          Text("2x$piece\$"),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
      Container(
        height: 30.0,
        width: 90.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 35.0,
              width: 35.0,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
              child: Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 1.0,
            ),
            Text(
              "$price",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            SizedBox(
              width: 1.0,
            ),
            Container(
                height: 35.0,
                width: 35.0,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                )),
          ],
        ),
      )
    ]),
  );
}
