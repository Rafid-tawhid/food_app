import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.orange,size: 24,),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Login",style: TextStyle(fontSize: 30,color: Colors.orange),),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    hintStyle: TextStyle(color: Colors.black87),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black87),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    )
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
