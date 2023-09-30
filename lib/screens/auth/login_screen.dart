import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:we_chat/main.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      //app bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Welcome to We Chat'),
      ),
      body: Stack(children: [
        Positioned(
          top:  mq.height * .15,
          left:mq.width * .25,
          width:mq.width * .5,
          child: Image.asset('images/icon.png')
          ),
        Positioned(
          bottom:  mq.height * .15,
          left:mq.width * .05,
          width:mq.width * .9,
          height:mq.height * .06 ,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 10, 158, 165),
              shape: const StadiumBorder(),
              elevation: 1,
            ),
            onPressed: (){},
            icon: Image.asset('images/google.png',height: mq.height * .03),
            label: RichText(
              text:TextSpan(
                style: const TextStyle(color:Colors.black, fontSize: 16),
                children: [
                  TextSpan(text: 'Sign In with'),
                  TextSpan(
                    text: 'Google',
                    style: TextStyle(fontWeight: FontWeight.w500), 
                  )
                ]
              ),
            ),
            )
          ),
      ]),
    );
  }
}
