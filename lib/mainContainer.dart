import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:url_launcher/url_launcher.dart';
class MainContainer extends StatelessWidget {
  const MainContainer({Key? key}) : super(key: key);

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
                  text: 'EUROMED',
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
                  text: 'JUNIOR ENTERPRISE',
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
"Au cœur de notre culture d'entreprise se trouvent l'éthique et l'innovation. Nous croyons fermement que ces deux éléments sont essentiels pour façonner l'avenir des entreprises. En collaborant avec Euromed Junior Entreprise, vous bénéficiez d'une approche éthique de chaque projet et de solutions innovantes qui anticipent les tendances du marché.",
            textAlign: TextAlign.center,
            style: SafeGoogleFont(
              'Poppins',
              fontSize: isLargeScreen?20:10,
              fontWeight: FontWeight.w500,
              height: 1.5,
              color: const Color(0xff000000),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                // width: 239.14,
                // height: 57,
                width:isLargeScreen? 239.14:100,
                height: isLargeScreen?57:30,
                decoration: ShapeDecoration(
                  color: Color(0xFF1DB36F),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF1DB36F),
                    ),
                    borderRadius: BorderRadius.circular(6.12),
                  ),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/ServicesPage");
                    },
                    child: Text(
                      'Request Our Services',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isLargeScreen?18:8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      )

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

