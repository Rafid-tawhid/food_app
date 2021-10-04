import 'package:flutter/material.dart';
import 'package:ordering_app/welcome.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  late String email,pass,name,phone;
  Widget TextField({required String hintText, required IconData icon,required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        controller: controller,
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
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => WelcomePage()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 30, color: Colors.orange),
                  ),
                ),
              ),
              Column(
                children: [
                  TextField(
                    hintText: "Username",
                    controller: nameController,
                    icon: Icons.person_outline,
                  ),
                  TextField(hintText: "E-mail",controller: emailController, icon: Icons.mail_outline),
                  TextField(hintText: "Phone No",controller: phoneController, icon: Icons.phone),
                  TextField(hintText: "Password",controller: passController, icon: Icons.password_sharp),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 50,
                width: 180,
                child: RaisedButton(
                  onPressed: () {
                    name=nameController.text;
                    email=emailController.text;
                    phone=phoneController.text;
                    pass=passController.text;
                    // print(name+email+phone+pass);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.orange,
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}
