import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({Key? key, required this.imageUrl, required this.FullName, required this.Role, required this.profile}) : super(key: key);

  final String imageUrl;
  final String FullName;
  final String Role ;
  final String profile ;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 300,
        child:  Card(
          elevation: 6.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                      Container(
                          width: 154,
                          height: 154,
                          decoration: ShapeDecoration(
                                   color: Color(0xffffffff),
                                    shape: OvalBorder(),
                                    ),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(imageUrl),
                        ),
                                     ),
                      Text(
    FullName,
    style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    height: 0,
    ),
    ),
                      Text(
    Role,
    style: TextStyle(
    color: Color(0xFF0F4C9B),
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
    ),
    ),
                     GestureDetector(
                       onTap: (){
                         _launchLinkedInProfile(profile);
                       },
                       child: Text(
                         "View Profile",
                         style: TextStyle(
                           color: Color(0xFF0F4C9B),
                           fontSize: 20,
                           fontFamily: 'Poppins',
                           fontWeight: FontWeight.w500,
                           height: 0,
                         ),
                       ),
                     ),
                               ],
          ),
        ),
      );
  }
  _launchLinkedInProfile(String url) async {
    // Replace with your LinkedIn profile URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}


