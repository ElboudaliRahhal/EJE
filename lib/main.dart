import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Gallery.dart';
import 'package:myapp/ServicesPage.dart';
import 'package:myapp/utils.dart';
import 'ServicesHome.dart';
import 'firebase_options.dart';
import 'home.dart';

void main() async{
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp(
		options: DefaultFirebaseOptions.currentPlatform,
	);

	runApp(MyApp(),);



}
class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		initialRoute: '/Home',
		routes: {
			'/Home': (context) => Home(),
			'/ServicesPage': (context) =>  ServicesPage(),
			'/Gallery': (context) =>  Gallery(),
		},
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
			primarySwatch: Colors.blue,
		),

	);
	}
}
