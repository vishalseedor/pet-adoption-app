import 'package:flutter/material.dart';
import 'package:new_project/colors.dart';
import 'package:new_project/googlenavbar.dart';
import 'package:new_project/loginscreen.dart';
import 'package:new_project/new.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
    backgroundColor:purpleColor,
      body: Container(
        decoration: const BoxDecoration(
          
          
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/logo.png',color: Colors.white,height: 100,width: 100,)),
            Center(child: Text('Pet Adoption Center',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))
          ],
        ),
      ),
    );
  }
}