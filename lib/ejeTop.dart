import 'package:flutter/material.dart';
import 'package:myapp/ServicesPage.dart';
import 'package:myapp/home.dart';
import 'package:myapp/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class EjeTop extends StatelessWidget {
  const EjeTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Define a threshold value for the screen width to determine if it's a large or small screen
    double threshold = 600.0; // You can adjust this value based on your criteria

    // Determine if it's a large screen
    bool isLargeScreen = screenWidth > threshold;

    return isLargeScreen ? Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            style: SafeGoogleFont(
              'Inter',
              fontSize: isLargeScreen ? 30 : 20, // Adjust font size based on screen size
              fontWeight: FontWeight.w400,
              color: const Color(0xff000000),
            ),
            children: [
              TextSpan(
                text: 'E',
                style: SafeGoogleFont(
                  'Roboto',
                  fontSize: isLargeScreen ? 50 : 20,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xff0f4c9b),
                ),
              ),
              TextSpan(
                text: 'JE',
                style: SafeGoogleFont(
                  'Roboto',
                  fontSize: isLargeScreen ? 50 : 20,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xff1db36f),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/Home');
              },
              child: Text(
                'Home',
                style: TextStyle(
                  color: Color(0xFF0F4C9B),
                  fontSize: isLargeScreen ? 20 : 16, // Adjust font size based on screen size
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              width: 30, // Adjust spacing based on screen size
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/ServicesPage');
              },
              child: Text(
                'Our Services',
                style: TextStyle(
                  color: Color(0xFF0F4C9B),
                  fontSize: isLargeScreen ? 20 : 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              width:30,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/Gallery");
              },
              child: Text(
                'Gallery',
                style: TextStyle(
                  color: Color(0xFF0F4C9B),
                  fontSize: isLargeScreen ? 20 : 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
        Container(
          width: isLargeScreen ? 190 : 150, // Adjust the width based on screen size
          height: 50,
          decoration: ShapeDecoration(
            color: Color(0xFF0F4C9B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Center(
            child: GestureDetector(
              onTap: (){
                _launchLinkedInProfile('https://docs.google.com/forms/d/1nWlIWA5E9sQXygp7O0GGY6EgrAY0l_YJBIyCfUocsUc/edit');
              },
              child: Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isLargeScreen ? 20 : 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ],
    ) :
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            style: SafeGoogleFont(
              'Inter',
              fontSize: isLargeScreen ? 30 : 20, // Adjust font size based on screen size
              fontWeight: FontWeight.w400,
              color: const Color(0xff000000),
            ),
            children: [
              TextSpan(
                text: 'E',
                style: SafeGoogleFont(
                  'Roboto',
                  fontSize: isLargeScreen ? 30 : 20,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xff0f4c9b),
                ),
              ),
              TextSpan(
                text: 'JE',
                style: SafeGoogleFont(
                  'Roboto',
                  fontSize: isLargeScreen ? 30 : 20,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xff1db36f),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Text(
              'Home',
              style: TextStyle(
                color: Color(0xFF0F4C9B),
                fontSize: isLargeScreen ? 20 : 10, // Adjust font size based on screen size
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(
              width: 30, // Adjust spacing based on screen size
            ),
            Text(
              'Our Services',
              style: TextStyle(
                color: Color(0xFF0F4C9B),
                fontSize: isLargeScreen ? 20 : 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(
              width:30,
            ),
            Text(
              'Our Team',
              style: TextStyle(
                color: Color(0xFF0F4C9B),
                fontSize: isLargeScreen ? 20 : 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ],
        ),
        Container(
          width: isLargeScreen ? 190 : 80, // Adjust the width based on screen size
          height: isLargeScreen ? 50 : 30,
          decoration: ShapeDecoration(
            color: Color(0xFF0F4C9B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Center(
            child: GestureDetector(
              onTap: (){
                _launchLinkedInProfile('https://docs.google.com/forms/d/1nWlIWA5E9sQXygp7O0GGY6EgrAY0l_YJBIyCfUocsUc/edit');
              },
              child: Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isLargeScreen ? 20 : 10,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
        ),

      ],
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
