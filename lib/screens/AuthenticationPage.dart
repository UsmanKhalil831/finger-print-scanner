import 'package:fingerprint/screens/AuthenticatedPage.dart';
import 'package:flutter/material.dart';

import 'authentication.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF192359),
      body: SafeArea(child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Login',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w600),),
          SizedBox(height: 28,),
          Text('Use your finger print to log into the App',style: TextStyle(color: Colors.white,fontSize: 20),),
          SizedBox(height: 28,),
          Divider(color: Colors.white,),
          SizedBox(height: 28,),
          ElevatedButton.icon(onPressed: () async{
            bool auth = await Authenticate.authentication();
            print('can authenticate: $auth');
            if(auth){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AuthenticatedPage()));
            }
          }, icon: Icon(Icons.fingerprint), label: Text('Authenticate'))

        ],
      )),
    );
  }
}