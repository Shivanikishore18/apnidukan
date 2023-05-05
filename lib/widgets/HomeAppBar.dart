import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child:Row(
        children: [
          Icon(
            Icons.sort,
            size:30,
            color:Color(0xFFBF360C),
          ),
          Padding(padding: EdgeInsets.only(left:20),
          child:Text("Our's Shop",
              style:TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,
              color:Color(0xFFBF360C)
              ),
    ),
          ),
          Spacer(),
        badges.Badge(
          badgeContent: Text('3') ,
          badgeStyle: badges.BadgeStyle(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(7),
          ),
        ),

          InkWell(
          onTap: () {
            Navigator.pushNamed((context), "itemForm");
          },
          child:Icon(Icons.shopping_bag_outlined,
          size:32,
          color:Colors.black),
          
    )


        ],
      )
      
    );
  }
}