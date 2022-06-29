import 'package:flutter/material.dart';
import 'package:zm_app/Screens/Login/password_screen.dart';

Route _createRoute(String number) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => PasswordPage(
      number: number,
    ),
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

// final _auth = FirebaseAuth.instance;
// final databaseReference = FirebaseDatabase.instance.reference();

class MobileNumberPage extends StatefulWidget {
  const MobileNumberPage({Key? key}) : super(key: key);

  @override
  _MobileNumberPageState createState() => _MobileNumberPageState();
}

class _MobileNumberPageState extends State<MobileNumberPage> {
  TextEditingController number = TextEditingController();

  @override
  void initState() {
    number = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    number.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(249, 240, 255, 1.0)),
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: height * 0.025,
              right: width * -0.1,
              width: width * 0.6,
              height: height * 0.3,
              child: Container(
                // width: 80,
                // height: height*0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 40,
                          color: Color.fromRGBO(125, 61, 219, 0.1),
                          offset: Offset(1.0, 5.0))
                    ]),
              ),
            ),
            Positioned(
              top: height * 0.55,
              left: width * -0.2,
              width: width * 0.8,
              height: height * 0.3,
              child: Container(
                // width: 80,
                // height: height*0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 40,
                          color: Color.fromRGBO(255, 242, 223, 0.70),
                          offset: Offset(1.0, 5.0))
                    ]),
              ),
            ),
            Positioned(
              left: width * 0.300,
              top: height * 0.01,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                ),
                child: Image.asset(
                  "assets/Saly-2.png",
                  scale: 2.5,
                ),
              ),
            ),
            Positioned(
              right: height * 0.15,
              top: height * 0.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login using',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Nexa'),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  const Text(
                    'Mobile number',
                    style: TextStyle(
                        fontFamily: 'Nexa',
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7434CF)),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Container(
                width: width * 0.8,
                height: height * 0.08,
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2.0, 4.0),
                        spreadRadius: 3,
                        blurRadius: 9),
                  ],
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: number,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintStyle:
                            const TextStyle(fontFamily: 'Nexa', fontSize: 15),
                        contentPadding: const EdgeInsets.all(20),
                        hintText: ' 91-Mobile number',
                        filled: true,
                        fillColor: const Color(0xffFBF8FF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              top: height * 0.45,
              right: width * 0.024,
              left: width * 0.024,
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(_createRoute(number.text));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: height * 0.3),
                  height: height * 0.05,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff8949E9),
                          Color(0xff8949E9)
                          // Color(0xff6324BB)
                        ],
                      )),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontSize: height * 0.015,
                          color: Colors.white,
                          fontFamily: 'Nexa'),
                    ),
                  ),
                ),
              ),
              left: width * 0.30,
              right: width * 0.30,
              top: height * 0.30,
            ),
          ],
        ),
      ),
    );
  }
}
