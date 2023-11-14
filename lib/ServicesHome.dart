import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';



class ServicesHome extends StatelessWidget {
  const ServicesHome({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 940.0;
    return isLargeScreen ? Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 10,),
          Card(
            elevation: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: isLargeScreen? 450 : 350,
                  height: isLargeScreen? 400 : 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("assets/buisness.png",
                      fit: BoxFit.cover,),
                  ),

                ),
                Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '\nBuisness\n',
                            style: TextStyle(
                              color: Color(0xFF1DB36F),
                              fontSize: 35,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: isLargeScreen? 450 : 200,

                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),


                    ),
                  ],
                ),

                SizedBox(height: 10,),


              ],
            ),
          ),
          SizedBox(height: 10,),
          Card(
            elevation: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '\nTechnologie\n',
                            style: TextStyle(
                              color: Color(0xFF0F4C9B),
                              fontSize: 35,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: isLargeScreen? 450 : 200,

                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),


                    ),
                  ],
                ),
                Container(
                  width: isLargeScreen? 450 : 350,
                  height: isLargeScreen? 400 : 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("assets/data.png",
                      fit: BoxFit.cover,),
                  ),

                ),

                SizedBox(height: 10,),


              ],
            ),
          ),
          SizedBox(height: 5,),
        ],
      )

          :


      Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 10,),
          Card(
            elevation: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: isLargeScreen? 400 : 350,
                  height: isLargeScreen? 400 : 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("assets/buisness.png",
                      fit: BoxFit.cover,),
                  ),

                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\nBuisness\n',
                        style: TextStyle(
                          color: Color(0xFF1DB36F),
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: isLargeScreen? 300 : 200,
                  height: 100,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),


                ),
                SizedBox(height: 10,),


              ],
            ),
          ),
          SizedBox(height: 10,),
          Card(
            elevation: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: isLargeScreen? 450 : 350,
                  height: isLargeScreen? 400 : 250,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset("assets/data.png",
                        fit: BoxFit.cover,),
                    ),

                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\nTechnologie\n',
                        style: TextStyle(
                          color: Color(0xFF0F4C9B),
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: isLargeScreen? 450 : 200,
                  height: 100,
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),


                ),
                SizedBox(height: 10,),


              ],
            ),
          ),
          SizedBox(height: 5,),
        ],
      );
  }
}
