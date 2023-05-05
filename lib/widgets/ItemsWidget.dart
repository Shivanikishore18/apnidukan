import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      SingleChildScrollView (
      child: GridView.count(
      childAspectRatio:0.68 ,
      //disables the scroll functionality of grid view
      //and it scroll with list view of home page
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1;i<5;i++)
        Container(
          padding: EdgeInsets.only(left:15,right: 15,top: 10),
        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
          child: Column(
            children: [
              Container(
                height: 30,
                width: 150,
                alignment: Alignment.topRight,
               child:
                IconButton(
                  icon:Icon(Icons.favorite_border,color: Colors.red,),
                  onPressed: () { },
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "itemPage");
                },
                child:Container(
                  margin:EdgeInsets.all(8),
                  child:Image.asset("images/$i.jpg",),
                  height: 120,
                    width: 120,
                  
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                  alignment:Alignment.centerLeft,
                  child:Text("Product title",style:TextStyle(fontSize:18,
                    color: Color(0xFFBF360C),
                    fontWeight:FontWeight.bold,
                  ) ,
                  ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child:Text("about product",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFBF360C)
                  ),) ,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\u{20B9}${50}",
                      style:TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFBF360C),
                      ) ,),
                    Icon(Icons.shopping_cart_checkout,
                        color:Color(0xFFBF360C),
                    )
                  ],
                ),)
            ],
          ),
        )
      ],

        ));


  }
}