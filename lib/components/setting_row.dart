import 'package:flutter/material.dart';

class SettingRow extends StatelessWidget {
final String text ;
final  Icon icon;
final bool arrow;


SettingRow(this.text, this.icon, this.arrow);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Container(
          height: 40,
          margin: EdgeInsets.only(right: 25,left: 25),
padding: EdgeInsets.only(right: 20,left: 20),
          decoration: BoxDecoration(
            color: Colors.white10,

            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(

            children: [
              icon,
              SizedBox(width: 20,),
              Text("$text",style:  TextStyle(color: Colors.white),),
              Spacer(),
              if(arrow)
              Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}

List<SettingRow> settingsList=[
  SettingRow("Privacy",Icon(Icons.person,color: Colors.white),true),
  SettingRow("Purchase History",Icon(Icons.history,color: Colors.white),true),
  SettingRow("Help & Support",Icon(Icons.help,color: Colors.white,),true),
  SettingRow("Setting",Icon(Icons.settings,color: Colors.white,),true),
  SettingRow("Invite a Friend",Icon(Icons.person_add_alt,color: Colors.white,),true),
  SettingRow("Logout",Icon(Icons.logout,color: Colors.white),false)




];




