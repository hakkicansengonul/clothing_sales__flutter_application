import 'package:clothing_sales_application/Animation/FadeAnimation.dart';
import 'package:clothing_sales_application/data_body/datas.dart';
import 'package:clothing_sales_application/screens/basket_screen.dart';
import 'package:clothing_sales_application/screens/favorite_screen.dart';
import 'package:clothing_sales_application/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected_index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: selected_index,
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: selected_index == 0
            ? AppBar(
                elevation: selected_index != 0 ? 0.0 : null,
                backgroundColor: Colors.white,
                leading: FadeAnimation(
                  1.2,
                  Icon(
                    Icons.menu_outlined,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: FadeAnimation(
                      1.2,
                      Icon(
                        Icons.campaign_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
                title: FadeAnimation(
                  1.2,
                  Text(
                    'Clothing',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                bottom: selected_index == 0
                    ? TabBar(
                        indicatorColor: Colors.deepPurple,
                        labelColor: Colors.deepPurple,
                        unselectedLabelColor: Colors.black,
                        labelStyle: TextStyle(
                            color: Colors.deepPurple,
                            backgroundColor: Colors.white),
                        isScrollable: true,
                        tabs: <Widget>[
                          FadeAnimation(
                            1.1,
                            Tab(
                              text: "Popular",
                            ),
                          ),
                          FadeAnimation(
                            1.1,
                            Tab(
                              text: "Everyda Laundry",
                            ),
                          ),
                          FadeAnimation(
                            1.1,
                            Tab(
                              text: "Most Clicked",
                            ),
                          ),
                          FadeAnimation(
                            1.1,
                            Tab(
                              text: "Most Viewed",
                            ),
                          ),
                        ],
                      )
                    : null)
            : AppBar(
                elevation: 0.0,
                backgroundColor: Colors.grey[200],
                leading: FadeAnimation(
                  1.1,
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
        bottomNavigationBar: FadeAnimation(
          1.1,
          CurvedNavigationBar(
            index: 0,
            backgroundColor: Colors.grey[200],
            buttonBackgroundColor: Colors.deepPurple,
            items: <Widget>[
              Icon(
                Icons.home_outlined,
                size: 30,
                color: selected_index == 0 ? Colors.white : Colors.black,
              ),
              Icon(
                Icons.favorite_outline_outlined,
                size: 30,
                color: selected_index == 1 ? Colors.white : Colors.black,
              ),
              Icon(
                Icons.shopping_basket_outlined,
                size: 30,
                color: selected_index == 2 ? Colors.white : Colors.black,
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: selected_index == 3 ? Colors.white : Colors.black,
              ),
            ],
            onTap: (index) {
              setState(() {
                selected_index = index;
              });
            },
          ),
        ),
        body: selected_index == 0
            ? FadeAnimation(
                1.3,
                TabBarView(
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.blue,
                        child: ListView.builder(
                          itemCount: Products_Popular.length,
                          itemBuilder: (context, index) {
                            return Products_Popular[index];
                          },
                        )),
                    Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.blue,
                        child: ListView.builder(
                          itemCount: Products_Popular.length,
                          itemBuilder: (context, index) {
                            return page2[index];
                          },
                        )),
                    Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.blue,
                        child: ListView.builder(
                          itemCount: Products_Popular.length,
                          itemBuilder: (context, index) {
                            return page3[index];
                          },
                        )),
                    Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.blue,
                        child: ListView.builder(
                          itemCount: Products_Popular.length,
                          itemBuilder: (context, index) {
                            return page4[index];
                          },
                        )),
                  ],
                ),
              )
            : selected_index == 1
                ? FavoritePage()
                : selected_index == 2
                    ? BasketPage()
                    : ProfilePage(),
      ),
    );
  }
}
