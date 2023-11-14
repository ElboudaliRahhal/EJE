import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
class MainContainerServices extends StatelessWidget {
  const MainContainerServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600.0;


    return Container(
        margin: EdgeInsets.only(top: isLargeScreen ? 10 : 5),
        width: MediaQuery.of(context).size.width,
        height: isLargeScreen?408:200,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.949, -0.9),
            end: Alignment(0.905, 0.872),
            colors: <Color>[Color(0xffc0d5e3), Color(0xffcaedde)],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            RichText(
              text: TextSpan(
                style: SafeGoogleFont(
                  'Roboto',
                  fontSize:isLargeScreen? 50:20,
                  fontWeight: FontWeight.w700,
                  height: 1.171875,
                  color: const Color(0xffffffff),
                ),
                children: [
                  TextSpan(
                    text: 'OUR',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: isLargeScreen?50:20,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: const Color(0xff0f4c9b),
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: isLargeScreen?50:20,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  TextSpan(
                    text: 'Services',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: isLargeScreen?50:20,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: const Color(0xff1db36f),
                    ),
                  ),
                ],
              ),
            ),

            Text(
              "Chez Euromed Junior Entreprise, notre expertise technique et commerciale fusionne pour vous offrir des solutions complètes et orientées résultats dans ces domaines cruciaux. Explorez nos compétences pour concrétiser vos ambitions.",
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Poppins',
                fontSize: isLargeScreen?20:10,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: const Color(0xff000000),
              ),
            ),

          ],
        )

    );
  }
}

