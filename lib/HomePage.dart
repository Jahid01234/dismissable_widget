import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar
        (
        title: Text('Dismissable Widget'),
        centerTitle: true,
        backgroundColor: Colors.teal,
       ),

      body: Center(
         child: Dismissible(
           key: ValueKey("item"),//it is just nothing
           background:Container(
               color: Colors.deepOrangeAccent,
             child: Icon(Icons.delete_forever,color: Colors.white,),
           ) ,

           secondaryBackground:Container(
             color: Colors.teal,
             child: Icon(Icons.delete_forever,color: Colors.white,),
           ) ,

           child: ListTile
             (
               title: Text('Flutter Data Tech Compay'),
               subtitle: Text('Sotware Company'),
               leading: Icon(Icons.account_circle_outlined),
               trailing: Icon(Icons.add_alert_sharp),
             ),
         ),
      ),

    );
  }
}