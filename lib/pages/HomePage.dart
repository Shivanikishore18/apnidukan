import 'package:apnidukan/pages/ItemForm.dart';
import 'package:apnidukan/pages/HomeBody.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:apnidukan/pages/display_item.dart';

import 'package:flutter/material.dart';
import 'package:apnidukan/widgets/CategoriesWidget.dart';

import '../widgets/ItemsWidget.dart';
import 'package:apnidukan/widgets/HomeAppBar.dart';

void main(){runApp(
    MaterialApp(
        title:"Home Screen",
        home:HomePage())
);}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return Home();
    //throw UnimplementedError();
  }

}

class Home extends State<HomePage> {


  var pagesData = [HomeBody(),ItemForm(),DisplayItems()];
  int selectedItem = 0;
  //final int currentIndex;

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body:pagesData[selectedItem],



       // pagesata[selectedItem],

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,

        height: 60,
        color:Color(0xFFBF360C) ,
        items:[
          Icon(Icons.home,
              size:30,
          color: Colors.white),
          Icon(Icons.add,
            size:30,
            color: Colors.white,),
          Icon(Icons.person,
            size:30,
            color: Colors.white,
           ),

        ],
        index: selectedItem,
        onTap: (setValue){

          setState(() {
            selectedItem =setValue;
          });
        },
      ),
    );

  }
}