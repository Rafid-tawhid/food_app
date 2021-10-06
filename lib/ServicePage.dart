import 'package:flutter/material.dart';

import 'dashboard.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Dashboard()));
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          ),
          elevation: 1,
          backgroundColor: Colors.orange,
          title: Text(
            "Our Services",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10),
                      child: Row(children: <Widget>[
                        // Icon(Icons.,color: Colors.black87,),
                        Text(
                          " IT Support",
                          style: TextStyle(fontSize: 20, color: Colors.orange),
                        )
                      ]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              'https://bitbirds.com/it/wp-content/uploads/2020/11/IT-services-1536x755.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                                "Technology should make small businesses more productive, not waste their time. Whether it’s a crashed computer that’s holding you up, you’re in need of a whole new network or some staff training, we offer you that peace of mind."),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "bitBirds Solutions is the leading IT support provider in Bangladesh. We are your IT department. We’re a team of friendly expert IT engineers and we love technology. We realize that you might have difficulties here, and that’s why we’re here to help."),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 10),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.orange,
                        ),
                        Text(" Access to a team of skilled engineers.")
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 10),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.orange,
                        ),
                        Text(" Expertise you can count on.")
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 10),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.orange,
                        ),
                        Text(" A Single point of contact.")
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10),
                      child: Row(children: <Widget>[
                        // Icon(Icons.,color: Colors.black87,),
                        Text(
                          " Consulting",
                          style: TextStyle(fontSize: 20, color: Colors.orange),
                        )
                      ]),
                    ),
                    Row(
                      children: [

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 10),
                            child: Text(
                                "bitBirds Solution is a leading consulting firm with certified and an experienced business team working closely with national and international strategic partners."),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              'https://bitbirds.com/it/wp-content/uploads/2020/11/scott-graham-5fNmWej4tAA-unsplash-1536x1025.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "bitBirds Solution was established by a group of corporate professionals with an enriching career in renowned multinational and local organizations. bitBirds Solution is working with a vision to “Digital Bangladesh”​."),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 10),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.orange,
                        ),
                        Text(" Consultancy on business process")
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 10),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.orange,
                        ),
                        Text(" Recruitment and talent management")
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 10),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.orange,
                        ),
                        Text(" Learning and Development")
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10),
                      child: Row(children: <Widget>[
                        // Icon(Icons.,color: Colors.black87,),
                        Text(
                          " Digital Marketing",
                          style: TextStyle(fontSize: 20, color: Colors.orange),
                        )
                      ]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              'https://bitbirds.com/it/wp-content/uploads/2020/11/merakist-jyoSxjUE22g-unsplash-1536x1152.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                                "bitBirds Solution is a digital marketing service agency. We offer all types of online marketing services including SEO, SEM, SMM, SMO, paid ads, email marketing, SMS marketing and push notification services."),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "We are a dedicated team of 15 people who always serve the brand supervisor’s clients. bitBirds Solution has experience working with clients from different countries around the world. Many companies have already been able to make a profit for their business by our hard work, ideas and operations."),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 10),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.orange,
                        ),
                        Text(" Access to a team of skilled engineers.")
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 10),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.orange,
                        ),
                        Text(" Expertise you can count on.")
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 10),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.orange,
                        ),
                        Text(" A Single point of contact.")
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
