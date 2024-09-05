import 'package:flutter/material.dart';

import '../components/setting_row.dart';

class SittingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Icon(Icons.arrow_back, color: Colors.white, size: 35),
              Spacer(),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("images/profile.jpg"),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.yellow),
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Nicolas Adams",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "nicolasadams@gmail.com",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.yellow,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text("Upgrade to PRO"),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: settingsList.length,
                itemBuilder: (context, index) {
                  return settingsList[index];
                }),
          ),

        ],
      ),
    );
  }
}
