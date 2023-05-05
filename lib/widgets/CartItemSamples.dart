import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CartItemSamples extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        for(int i=1;i<4;i++)
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal:15,vertical: 10 ),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
            child:Row(children: [
              Radio(value: "",
                  groupValue: "",
                  activeColor:Color(0xFFBF360C),
                  onChanged: (index){},
              ),
              Container(
                height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right:15 ),
                child:Image.asset("images/$i.jpg"),
              ),
              Padding(
        padding: EdgeInsets.symmetric(vertical:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("product title",
              style:TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFBF360C),
              ) ,
            ),
            Text("\u{20B9}${50}",style: TextStyle(
              fontSize: 16,fontWeight: FontWeight.bold,
              color:Color(0xFFBF360C),
            )
            ),
          ],
        ),
              ),
              Spacer(),
              Padding(padding: EdgeInsets.symmetric(vertical: 5),
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Icon(Icons.delete,color: Colors.red,),
               ]
              ),
              ),
            ],
            ),
    ),
   ],
    );
  }
}