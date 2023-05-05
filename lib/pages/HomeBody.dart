import 'package:apnidukan/pages/ItemForm.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:apnidukan/widgets/CategoriesWidget.dart';

import '../widgets/ItemsWidget.dart';
import 'package:apnidukan/widgets/HomeAppBar.dart';

void main(){runApp(
    MaterialApp(
        title:"Home Screen",
        home:HomeBody())
);}
class HomeBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return HomeScreen();
    //throw UnimplementedError();
  }

}

class HomeScreen extends State<HomeBody> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      ListView(
          children: [
            HomeAppBar(),
            Container(
              height: 2000,
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              height: 60,
                              width: 100,
                              child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search here...",
                                  )
                              ),

                            ),

                            Spacer(),
                            Icon(Icons.camera_alt,
                              size: 27,
                              color: Color(0xFFBF360C),
                            )
                          ]),

                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,),


                      child: Text("Categories",
                        style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold,
                          color: Color(0xFFBF360C),),
                      ),
                    ),
                    CategoriesWidget(),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Text(
                        "Latest items",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBF360C),
                        ),
                      ),
                    ),
                    ItemsWidget(), //Categories
                  ]
              ),
            )
          ]
      ),);
  }
}
