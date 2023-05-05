import 'package:apnidukan/widgets/CartAppBar.dart';
import 'package:apnidukan/widgets/CartBottomNavBar.dart';
import 'package:apnidukan/widgets/CartItemSamples.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
return Scaffold(
  body:ListView(
    children: [
      CartAppBar(),
      Container(
        height: 1000,
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Color(0xFFEDECF2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          )
        ),
        child: Column(
          children:[
               CartItemSamples(),
      ],),),],
  ),
  bottomNavigationBar: CartBottomNavBar(),
);


  }
}