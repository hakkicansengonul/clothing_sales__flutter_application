import 'package:clothing_sales_application/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FadeAnimation(
          1.1,
          Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 140.0,
                width: 140.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurple, width: 4.0),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("Profile"),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("Card balance"),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("Help"),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("Settings"),
              SizedBox(
                height: 20.0,
              ),
              profilecontainer("Sign out"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget profilecontainer(String title) {
  return Container(
    height: 40.0,
    width: 140.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), color: Colors.deepPurple),
    child: Center(
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
