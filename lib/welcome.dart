import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: Image.network(
                  'https://cdn.dribbble.com/users/5246351/screenshots/13929150/media/a784069618028fe9374f915d8f915279.jpg?compress=1&resize=400x300',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Welcome to Foddu",
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
                          Text("Order Food From Our Resturant",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              )),
                          Text("Make a Resvation",
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
                       onPressed: () {},
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
                     width: 280,
                     child: RaisedButton(
                       onPressed: () {},
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
