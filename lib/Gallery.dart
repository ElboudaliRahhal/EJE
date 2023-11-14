import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/MainGallery.dart';
import 'package:myapp/ServicesCard.dart';
import 'package:myapp/ejeTop.dart';
import 'package:myapp/mainContainerServices.dart';
import 'package:myapp/teamCard.dart';

import 'PartnersCard.dart';
import 'ejeBottom.dart';
import 'mainContainer.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600.0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top --------------------------------------------
              EjeTop(),

              //mainContainer -------------------------------------------
              MainGallery(),
              SizedBox(
                height: 10,
              ),

              // Our Partner -------------------------------------
              Text(
                'Buisness Services',
                style: TextStyle(
                  color: Color(0xFF0F4C9B),
                  fontSize: isLargeScreen ? 30 : 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Container(
                height: 450,
                child: StreamBuilder<QuerySnapshot>(
                  stream:
                  FirebaseFirestore.instance.collection('PoleB').snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return Center(child: Text('No data available'));
                    }

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot document = snapshot.data!.docs[index];
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ServicesCard(title: document['title'], imageUrl: document['imageUrl'], description: document['description'])
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 450,
                child: StreamBuilder<QuerySnapshot>(
                  stream:
                  FirebaseFirestore.instance.collection('PoleB1').snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return Center(child: Text('No data available'));
                    }

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot document = snapshot.data!.docs[index];
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ServicesCard(title: document['title'], imageUrl: document['imageUrl'], description: document['description'])
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),

              // Our Services ----------------------------------------
              Text(
                'Technologie Services',
                style: TextStyle(
                  color: Color(0xFF0F4C9B),
                  fontSize: isLargeScreen ? 30 : 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 450,
                child: StreamBuilder<QuerySnapshot>(
                  stream:
                  FirebaseFirestore.instance.collection('PoleIT1').snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return Center(child: Text('No data available'));
                    }

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot document = snapshot.data!.docs[index];
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ServicesCard(title: document['title'], imageUrl: document['imageUrl'], description: document['description'])
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 450,
                child: StreamBuilder<QuerySnapshot>(
                  stream:
                  FirebaseFirestore.instance.collection('PoleIT2').snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return Center(child: Text('No data available'));
                    }

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot document = snapshot.data!.docs[index];
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ServicesCard(title: document['title'], imageUrl: document['imageUrl'], description: document['description'])
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              // bottom -------------------------------------------------
              EjeBottom(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}