import 'dart:async'; 
import 'package:flutter/material.dart'; 
void main() { 
runApp(MyApp()); 
} 

class MyApp extends StatelessWidget { 
@override 
Widget build(BuildContext context) { 
	return MaterialApp( 
	title: 'Splash Screen', 
	theme: ThemeData( 
		primarySwatch: Colors.green, 
	), 
	home: MyHomePage(), 
	debugShowCheckedModeBanner: false, 
	); 
} 
} 

class MyHomePage extends StatefulWidget { 
@override 
_MyHomePageState createState() => _MyHomePageState(); 
} 
class _MyHomePageState extends State<MyHomePage> { 
@override 
void initState() { 
	super.initState(); 
	Timer(Duration(seconds: 3), 
		()=>Navigator.pushReplacement(context, 
										MaterialPageRoute(builder: 
														(context) => 
														SecondScreen() 
														) 
									) 
		); 
} 
@override 
Widget build(BuildContext context) { 
	return Container( 
	color: Color.fromARGB(255, 233, 225, 225), //background of flutter logo
	child:FlutterLogo(size:MediaQuery.of(context).size.height) 
	); 
} 
} 
class SecondScreen extends StatelessWidget { 
@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	appBar: AppBar(title:Text("SplashScreen")), 
	body: Center( 
		child:Text("Please wait while we load the app",textScaleFactor: 2,) 
	), 
	); 
} 
} 
