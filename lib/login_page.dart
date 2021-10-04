import 'package:flutter/material.dart';
import 'package:ordering_app/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget TextField({required String hintText, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              size: 22,
              color: Colors.orange,
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black87),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomePage()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30, color: Colors.orange),
                ),
              ),
            ),
            Column(
              children: [
                TextField(
                  hintText: "E-mail",
                  icon: Icons.mail_outline,
                ),
                TextField(hintText: "Password", icon: Icons.password_sharp),
              ],
            ),
            Container(

              margin: EdgeInsets.only(top: 150),
              height: 50,
              width: 180,
              child: RaisedButton(onPressed: (){},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color: Colors.orange,
                child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("forget password? ",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600),),
                  TextButton(onPressed: (){},child: Text(
                      "Click here",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w600)
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
