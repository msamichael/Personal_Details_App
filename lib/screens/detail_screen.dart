import 'package:flutter/material.dart';

import 'webview_screen.dart';



class DetailScreen extends StatelessWidget {
   const DetailScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child: Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(height: 20,),
            const CircleAvatar(
              backgroundImage: AssetImage('images/michael.jpg'),
              radius: 130,
            ),
            // const SizedBox(height:20,),
            const Text('Michael Anifowose',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            // const SizedBox(height:40),
           TextButton(
            
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
              onPressed: (){
              Navigator.push(
                context,
               MaterialPageRoute(
                builder: (context) =>  WebViewScreen() ),
               );
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70,vertical: 10),
              child: Text('Open Github',style: TextStyle(fontSize:19,color: Colors.white),)),)
          ],
      
        ) ,),
      )
    );
  }
}


