import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'about_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  get imgList => null;
  final List<String> imagesList = [
    'https://bitbirds.com/it/wp-content/uploads/2011/08/multimediakingdom.jpg',
    'https://bitbirds.com/it/wp-content/uploads/2013/08/logo-technobd.jpg',
    'https://bitbirds.com/it/wp-content/uploads/2013/08/logo-bitm.jpg',
    'https://bitbirds.com/it/wp-content/uploads/2014/04/imax.png',
    'https://bitbirds.com/it/wp-content/uploads/2014/04/bashundhra-group.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Bit Birds"),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs()));
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
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 10,
                        ),
                        child: Text(
                          "Our specialization",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.network(
                                'https://bitbirds.com/it/wp-content/uploads/2020/11/download-1.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "IT Support",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Your technology needs is growing with your business growth. When it was just a few employees, you could get away with using Gmail and Google Apps to manage your requirements, and fix the occasional IT problems yourself. Now, it’s time to step up your own game.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.network(
                                'https://bitbirds.com/it/wp-content/uploads/2020/11/download-2.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "Digital Marketing",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Your technology needs is growing with your business growth. When it was just a few employees, you could get away with using Gmail and Google Apps to manage your requirements, and fix the occasional IT problems yourself. Now, it’s time to step up your own game.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.network(
                                'https://bitbirds.com/it/wp-content/uploads/2020/11/download-consulting.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "Consulting",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Your technology needs is growing with your business growth. When it was just a few employees, you could get away with using Gmail and Google Apps to manage your requirements, and fix the occasional IT problems yourself. Now, it’s time to step up your own game.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.network(
                                'https://bitbirds.com/it/wp-content/uploads/2020/11/imagescloud.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "Cloud & Hosting",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Your technology needs is growing with your business growth. When it was just a few employees, you could get away with using Gmail and Google Apps to manage your requirements, and fix the occasional IT problems yourself. Now, it’s time to step up your own game.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.network(
                                'https://bitbirds.com/it/wp-content/uploads/2020/11/crm-icon-24.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "Website & CRM's",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Your technology needs is growing with your business growth. When it was just a few employees, you could get away with using Gmail and Google Apps to manage your requirements, and fix the occasional IT problems yourself. Now, it’s time to step up your own game.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),//first our specialized done
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 10,
                        ),
                        child: Text(
                          "Our IT Support",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 10,
                        ),
                        child: Center(
                          child: Text(
                            "              On call 24-hours a day:\n whatever your IT problem is, we’ll sort it.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.network(
                                'https://bitbirds.com/it/wp-content/uploads/2014/03/Untitled-3.gif',
                                height: 70,
                                width: 70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "On Site Support",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "24/7/365 Support! Whatever your IT problem is, we’ll sort it.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        RaisedButton(onPressed: (){},child: Text("View details"),color: Colors.blueAccent,)
                      ],
                    ),

                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.network(
                                'https://bitbirds.com/it/wp-content/uploads/2014/03/Untitled-2.gif',
                                height: 70,
                                width: 70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "Off Site Support",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "24/7/365 remote monitoring off-site IT support",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        RaisedButton(onPressed: (){},child: Text("View details"),color: Colors.blueAccent,)
                      ],
                    ),//it support second column
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.network(
                                'https://bitbirds.com/it/wp-content/uploads/2014/03/Untitled-1.gif',
                                height: 70,
                                width: 70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "IT Support",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "6+ experience in high quality IT Training",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        RaisedButton(onPressed: (){},child: Text("View details"),color: Colors.blueAccent,)
                      ],
                    ),//it support second column


                    //it support first column

                  ],
                ),
              ),//second our specialized done

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Our Clients",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.orange,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                ),
                items: imagesList
                    .map(
                      (item) => Container(
                        child: Center(
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
