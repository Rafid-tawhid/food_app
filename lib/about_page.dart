import 'package:flutter/material.dart';
class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  get imgList => null;
  final List<String> imagesList = [
  'https://bitbirds.com/it/wp-content/uploads/2011/08/multimediakingdom.jpg',
  'https://bitbirds.com/it/wp-content/uploads/2013/08/logo-technobd.jpg',
  'https://bitbirds.com/it/wp-content/uploads/2013/08/logo-bitm.jpg',
  'https://bitbirds.com/it/wp-content/uploads/2014/04/imax.png',
  'https://bitbirds.com/it/wp-content/uploads/2014/04/bashundhra-group.png',];

  @override
  Widget build(BuildContext context) {
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
                  // Update the state of the app.
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
            children: [
              Text("Who we are?"),
            ],
          )
        ),

      ),

    );
  }
}


