import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  Text getText(String fontFamily,double fontSize,Color color,String title){
    return Text(title,
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                color: color,
              ),
              );

  }
  Container getButton(double margin,String fontFamily,double fontSize,Color color,String title){
 return Container(
                    margin: EdgeInsets.only(left: margin),
                    width: 100,
                    height: 45,
                    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                      
                      child:
                     getText(fontFamily, fontSize, color, title),
                    ),
                  );
  }
  TextField getTextField(String hintText,Icon icons, bool obscureText){
    return TextField(
      obscureText: obscureText,
                  decoration:InputDecoration(
                    hintText: hintText,
                    icon: icons,
                  ) ,
                  
                );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              getText("Audiowide", 20, Colors.black, "Welcome back"),
              SizedBox(
                height: 50,
              ),
              Image.asset("images/K.jpg"),
              
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50,top: 70),
                child: getTextField("User Name", Icon(Icons.person), false),
              ),
              SizedBox(
                height: 20,
              ),
               Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                 child: getTextField("Password", Icon(Icons.lock), true),
              
               ),
                SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  getButton(90, "Consolas", 15, Colors.white, "Login"),
                  getButton(10, "Consolas", 15, Colors.white, "Register"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}