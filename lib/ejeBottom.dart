import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class EjeBottom extends StatelessWidget {
  const EjeBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600.0;
    return Container(
      child: Column(

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: TextSpan(
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    // height: ,
                    color: const Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'E',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        //height: 1.1725*        ,
                        color: const Color(0xff0f4c9b),
                      ),
                    ),
                    TextSpan(
                      text: 'JE',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        // height: 1.1725*        ,
                        color: const Color(0xff1db36f),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Quick Links',
                      style: TextStyle(
                        color: Color(0xFF0F4C9B),
                        fontSize: 20,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Text(
                    'About',
                    style: TextStyle(
                      color: Color(0xFF0F4C9B),
                      fontSize: 17,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Blog',
                    style: TextStyle(
                      color: Color(0xFF0F4C9B),
                      fontSize: 17,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Get Rates',
                    style: TextStyle(
                      color: Color(0xFF0F4C9B),
                      fontSize: 17,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Social',
                      style: TextStyle(
                        color: Color(0xFF0F4C9B),
                        fontSize: 20,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/page-1/images/linkedin.png"), // Remove the extra single quote here
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/page-1/images/instagram.png"), // Remove the extra single quote here
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/page-1/images/facebook.png"), // Remove the extra single quote here
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/page-1/images/gmail-logo.png"), // Remove the extra single quote here
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            decoration: ShapeDecoration(
              color: Color(0xFF13206F),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF0F4C9B),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(

                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/page-1/images/copyright.png"), // Remove the extra single quote here
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    'HailShip | All rights reserved.',
                    style: TextStyle(
                      color: Color(0xFF13206F),
                      //fontSize: 20,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              Row(


                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Color(0xFF13206F),
                      //fontSize: 20,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  isLargeScreen ?   Text(
                    '     Terms & Conditions',
                    style: TextStyle(
                      color: Color(0xFF13206F),
                      //fontSize: 20,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ) : SizedBox(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}