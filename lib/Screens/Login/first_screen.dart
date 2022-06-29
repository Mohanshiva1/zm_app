import 'package:flutter/material.dart';
import 'mobilenumber_screen.dart';


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const MobileNumberPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}




class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(249, 240, 255 , 1.0)
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: height*0.025,
                right: width*-0.1,
                width: width*0.6,
                height: height*0.3,
                child: Container(
                  // width: 80,
                  // height: height*0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 40,
                            color: Color.fromRGBO(125, 61, 219,0.1),
                            offset: Offset(1.0,5.0)
                        )
                      ]
                  ),

                ),
              ),
              Positioned(
                top: height*0.55,
                left: width*-0.2,
                width: width*0.8,
                height: height*0.3,
                child: Container(
                  // width: 80,
                  // height: height*0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 40,
                            color: Color.fromRGBO(255, 242, 223,0.70),
                            offset: Offset(1.0,5.0)
                        )
                      ]
                  ),

                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/Saly-7.png",
                    height: height * 0.7,
                  ),
                  const Text(
                    "Contrary to popular belief, Lorem\n"
                        "sum is not simply random text.",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(_createRoute());
                      });
                    },
                    child: Container(
                      height: height * 0.055,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xff8949E9),
                            Color(0xff8949E9)
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: height * 0.015, color: Colors.white,fontFamily: 'Nexa'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}