import 'package:flutter/material.dart';
import 'package:ordering_app/signup_page.dart';

import 'login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 78.0),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: Image.network(
                    'https://bitbirds.com/it/wp-content/uploads/2016/02/bitBirds_Logo_1-e1455279973193.png',
                    height: 100,
                    width: 250,

                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Welcome to BitBirds",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Cursive",
                        letterSpacing: 3),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text("We are Your IT Department",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              )),

                        ],
                      ),
                    ),
                  ),
                 Padding(padding: EdgeInsets.only(top: 20),
                   child:  Container(
                     height: 45,
                     width: 280,
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                       },
                       color: Colors.orange,
                       elevation: 5,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(30)),
                       ),
                       child: Text("Login Page",style: TextStyle(color: Colors.white,fontSize: 16),),
                     ),

                   ),

                 ),
                 Padding(padding: EdgeInsets.only(top: 20),
                   child:  Container(
                     height: 45,
                     width: 240,
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                       },
                       color: Colors.white,

                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(30),),
                         side: BorderSide(color: Colors.orange)
                       ),
                       child: Text("SignUp Page",style: TextStyle(color: Colors.deepOrange,fontSize: 16),),
                     ),

                   ),

                 ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
