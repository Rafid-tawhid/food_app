import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import 'dashboard.dart';
class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  get imgList => null;
  final List<String> imagesList = [
  'https://bitbirds.com/it/wp-content/uploads/2011/08/multimediakingdom.jpg',
  'https://bitbirds.com/it/wp-content/uploads/2013/08/logo-technobd.jpg',
  'https://bitbirds.com/it/wp-content/uploads/2013/08/logo-bitm.jpg',
  'https://bitbirds.com/it/wp-content/uploads/2014/04/imax.png',
  'https://bitbirds.com/it/wp-content/uploads/2014/04/bashundhra-group.png',];

  @override
  void initState() {
    // TODO: implement initState
    animationController=AnimationController(vsync: this,
    duration: Duration(seconds: 15));
    animationController.addListener(() {
      setState(() {

      });
    });
    animationController.repeat();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    final percentage=animationController.value*100;



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "About Us",

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("About Us"),

        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://bitbirds.com/it/wp-content/uploads/2016/02/bitBirds_Logo_1-e1455279973193.png",
                          height: 70,
                          width: 110,
                        ),
                        Text("Your Own It Solutions")
                      ],
                    ),
                  )),
              ListTile(
                title: Text('Our Services'),
                leading: Icon(
                  Icons.cleaning_services_outlined,
                  color: Colors.orange,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard()));
                  // ...
                },
              ),
              ListTile(
                title: Text('Our Clients'),
                leading: Icon(Icons.family_restroom_outlined),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('SEIP Projects'),
                leading: Icon(Icons.leaderboard_outlined),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('About Us'),
                leading: Icon(
                  Icons.settings_accessibility_outlined,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Contact Us'),
                leading: Icon(Icons.call_end_outlined),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(
                     top: 10.0,
                     left: 10,
                   ),
                   child: Text(
                     "Who are we?",
                     style: TextStyle(
                       fontSize: 22,
                       color: Colors.orange,
                     ),
                     textAlign: TextAlign.start,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(
                       10
                   ),
                   child: Text(
                     "bitBirds Solutions is a leading IT solution provider company in Bangladesh. Our primary objective is to facilitate the leading companies like yours to mobilize the current infrastructure and improve corporate performance by reducing costs, increasing profitability, and driving workers’ productivity through superior software & ITES solution.",
                     style: TextStyle(
                       fontSize: 16,
                       color: Colors.black87,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),
               ],
             ),
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(
                     top: 10.0,
                     left: 10,
                   ),
                   child: Text(
                     "Our experience",
                     style: TextStyle(
                       fontSize: 22,
                       color: Colors.orange,
                     ),
                     textAlign: TextAlign.start,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(
                       10
                   ),
                   child: Container(
                     height: 30,
                     child: LiquidLinearProgressIndicator(
                       value: .6, // Defaults to 0.5.
                       valueColor: AlwaysStoppedAnimation(Colors.orange), // Defaults to the current Theme's accentColor.
                       backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
                       borderColor: Colors.deepOrange,
                       borderWidth: 1.0,
                       borderRadius: 20.0,
                       direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                       center: Text("IT Support 6-Years"),//+"${percentage.toStringAsFixed(0)}%"
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(
                       10
                   ),
                   child: Container(
                     height: 30,
                     child: LiquidLinearProgressIndicator(
                       value: .5, // Defaults to 0.5.
                       valueColor: AlwaysStoppedAnimation(Colors.orange), // Defaults to the current Theme's accentColor.
                       backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
                       borderColor: Colors.deepOrange,
                       borderWidth: 1.0,
                       borderRadius: 20.0,
                       direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                       center: Text("Cloud Hosting 5-Years"),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(
                       10
                   ),
                   child: Container(
                     height: 30,
                     child: LiquidLinearProgressIndicator(
                       value: .3, // Defaults to 0.5.
                       valueColor: AlwaysStoppedAnimation(Colors.orange), // Defaults to the current Theme's accentColor.
                       backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
                       borderColor: Colors.deepOrange,
                       borderWidth: 1.0,
                       borderRadius: 20.0,
                       direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                       center: Text("Development 3-Years"),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(
                       10
                   ),
                   child: Container(
                     height: 30,
                     child: LiquidLinearProgressIndicator(
                       value: .2, // Defaults to 0.5.
                       valueColor: AlwaysStoppedAnimation(Colors.orange), // Defaults to the current Theme's accentColor.
                       backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
                       borderColor: Colors.deepOrange,
                       borderWidth: 1.0,
                       borderRadius: 20.0,
                       direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                       center: Text("Consulting 2-Years"),
                     ),
                   ),
                 ),


               ],
             ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 10,
                    ),
                    child: Text(
                      "Why Us?",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.orange,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 10),
                        child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_forward_sharp,color: Colors.orange,),
                              Text("Increase your profitability.")
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0,left: 10),
                        child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_forward_sharp,color: Colors.orange,),
                              Text("Reduce costs through our purchasing power \nand economies of scale."),


                            ],

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0,left: 10),
                        child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_forward_sharp,color: Colors.orange,),
                              Text("Budget and control operational expenses.")
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0,left: 10),
                        child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_forward_sharp,color: Colors.orange,),
                              Text("Access to a team of skilled engineers.")
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0,left: 10),
                        child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_forward_sharp,color: Colors.orange,),
                              Text("Scale on demand.")
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0,left: 10),
                        child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_forward_sharp,color: Colors.orange,),
                              Text("Attract and retain employees.")
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0,left: 10),
                        child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_forward_sharp,color: Colors.orange,),
                              Text("A Single point of contact.")
                            ]
                        ),
                      ),
                    ],
                  )
                ],
              )

            ],
          )
        ),

      ),

    );
  }
}


