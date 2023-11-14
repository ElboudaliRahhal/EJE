import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ServicesHome.dart';
import 'package:myapp/ejeTop.dart';
import 'package:myapp/teamCard.dart';
import 'package:myapp/utils.dart';

import 'PartnersCard.dart';
import 'ejeBottom.dart';
import 'mainContainer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600.0;



    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0,left: 16,right: 16,bottom: 0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              // Top --------------------------------------------
              EjeTop(),



              //mainContainer -------------------------------------------
              MainContainer(),
              SizedBox(height: 10,),




              // Our Partner -------------------------------------
              Text(
                'Our Partners',
                style: TextStyle(
                  color: Color(0xFF0F4C9B),
                  fontSize: isLargeScreen ? 30: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Container(
                height: isLargeScreen ? 300: 200,
               child:
               StreamBuilder<QuerySnapshot>(
                 stream: FirebaseFirestore.instance
                     .collection('partners')
                     .snapshots(),
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
                         padding:  EdgeInsets.all(isLargeScreen ?8: 2),
                         child: Partners(imageUrl: document['imageUrl'],),
                       );
                     },
                   );
                 },
               ),

              ),
              SizedBox(height: 10,),




              // Our Services ----------------------------------------
              Text(
                'Our Services',
                style: TextStyle(
                  color: Color(0xFF0F4C9B),
                  fontSize: isLargeScreen ? 30: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(height: 10,),
              ServicesHome(),
              SizedBox(height: 10,),

              // Our Team -------------------------------------------------
              Text(
                'Our Team',
                style: TextStyle(
                  color: Color(0xFF0F4C9B),
                  fontSize: isLargeScreen ? 30: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 300,
                child:
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('Team')
                      .snapshots(),
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
                          child: TeamCard(imageUrl: document['imageUrl'], FullName: document['fullName'], Role:document['role'], profile: document['profile'],),
                        );
                      },
                    );
                  },
                ),

              ),
              SizedBox(height: 100,),
              // bottom -------------------------------------------------
              EjeBottom(),
              SizedBox(height: 10,),



            ],
          ),
        ),
      ),
    );
  }
}
