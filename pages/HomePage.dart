import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/widgets/ActiveChats.dart';
import 'package:flutter_application_1/pages/widgets/RecentChats.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer:Drawer(),
      appBar: AppBar(
        actions:[
        Padding(
          padding:EdgeInsets.symmetric(horizontal: 15),
          child:Icon(Icons.notifications),
        ),
        ],
      ),
      body:ListView(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Text(
            "Messages", 
            style: TextStyle(
              color:(Colors.black), 
          fontSize: 28,
          fontWeight: FontWeight.bold,
            )
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding:EdgeInsets.symmetric(horizontal:15),
            decoration:BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color:Colors.grey.withOpacity(0.5),
                blurRadius:10,
                spreadRadius:2,
                offset:Offset(0,3),
              ),
            ],
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:300,child:Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(decoration: InputDecoration(hintText: "Search",
                  border: InputBorder.none
                   ),
                  ),
                 ),
              ),
                Icon(
                  Icons.search,
                  color:Colors.black,
                ),
              ],
            ),
          ),
          ),
        ActiveChats(),
        RecentChats(),
      ],),
      floatingActionButton: FloatingActionButton(
      onPressed: (){},
      backgroundColor:Colors.black,
      child: Icon(Icons.message),
      ),
    );
  }
}