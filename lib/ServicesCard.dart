import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';



class ServicesCard extends StatelessWidget {
  const ServicesCard({super.key, required this.title, required this.imageUrl, required this.description});
  final String title;
  final String imageUrl;
  final String description;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600.0;
    return Card(
          elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: isLargeScreen? 450 : 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(imageUrl,
                      fit: BoxFit.cover,),
                  ),

                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\n$title\n',
                        style: TextStyle(
                          color: Color(0xFF1DB36F),
                          fontSize: isLargeScreen ? 25 : 15,
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
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: isLargeScreen ? 15 : 10,
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
}