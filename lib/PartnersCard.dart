import 'package:flutter/material.dart';

class Partners extends StatelessWidget {
  const Partners({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {


    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600.0;


    return Container(
      width: isLargeScreen? 450 : 300,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(imageUrl,
          fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
