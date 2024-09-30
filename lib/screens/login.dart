import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 @override
void initState() {
  super.initState();
  sendMessage(context);
  
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      appBar: AppBar(
        title: Center(child: Text("loginScreen")),
      ),
      body: Padding(
        padding:EdgeInsets.all(16),
        child: Form(child: 
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image:DecorationImage(image:AssetImage('login.png'),fit: BoxFit.cover),
              ),
            ),
            Icon(Icons.login,size: 20,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter The Email"
              ),
            ),
               TextFormField(
              decoration: InputDecoration(
                labelText: "Enter The Password"
              ),
            ),
            SizedBox(height: 20,),

            ElevatedButton(onPressed:(){

            }, child: Text("Login")),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: (){

            }, child: Text("SignUp")),

           Align(
            alignment: Alignment.center,

            child: TextButton(onPressed: (){
  
            }, child: Text("Forget_Password")),


           )
          ],

        ),
        
        ),
        ),

    );

  }
  
Future<void> sendMessage(BuildContext context) async {
  toastification.show(
    context: context,
    title: Text('Hello, world!'),
    // .... Other parameters
    animationDuration: const Duration(milliseconds: 300),
    animationBuilder: (context, animation, alignment, child) {
      return RotationTransition(
        turns: animation,
        child: child,
      );
    },
  );
}


  
}
