import 'package:apnidukan/pages/ItemPage.dart';
import 'package:flutter/material.dart';
import 'package:apnidukan/pages/CartPage.dart';
import 'package:apnidukan/pages/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'pages/ItemForm.dart';

 Future main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,

      ),

      routes: {
        '/':(context)=>HomePage(),
        "cartPage":(context)=>CartPage(),
        "itemPage":(context)=>ItemPage(),
        "itemForm":(context)=>ItemForm(),
      },

    );
  }
}
