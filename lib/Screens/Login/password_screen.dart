import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'home_screen.dart';

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
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

final _auth = FirebaseAuth.instance;
final databaseReference = FirebaseDatabase.instance.reference();

class PasswordPage extends StatefulWidget {
  final String number;

  const PasswordPage({Key? key, required this.number}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  TextEditingController codeController = TextEditingController();
  String verifyId = " ";

  Future loginUser(String phone, BuildContext context) async {
    _auth.verifyPhoneNumber(
        phoneNumber: "+91 $phone",
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          print("credential in line 50 in pass");
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception);
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
          print("im timed out in line:71 ");
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          setState(() {
            verifyId = verificationId;
          });
        });
  }

  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    loginUser(widget.number, context);
    codeController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    codeController.dispose();
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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(249, 240, 255, 1.0),
        ),
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
                      offset: Offset(1.0, 5.0),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter',
                    style: TextStyle(
                        fontSize: height * 0.023,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Nexa'),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'One time passsword',
                    style: TextStyle(
                        fontFamily: 'Nexa',
                        fontSize: height * 0.030,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xff7434CF)),
                  ),
                ],
              ),
              top: height * 0.130,
              left: width * 0.059,
              right: width * 0.039,
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(
                  top: height * 0.3,
                ),
                width: width * 0.8,
                height: height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 50),
                    child: PinCodeTextField(
                      length: 6,
                      autoFocus: true,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        selectedColor: Colors.grey.shade100,
                        selectedFillColor: Colors.white,
                        activeColor: Colors.grey.shade100,
                        inactiveColor: Colors.white,
                        inactiveFillColor: Colors.grey.shade200,
                        shape: PinCodeFieldShape.circle,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      controller: codeController,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                      appContext: context,
                    ),
                  ),
                ),
              ),
              left: width * 0.034,
              right: width * 0.034,
              top: -height * 0.0100,
            ),
            Positioned(
              child: Center(
                child: Image.asset(
                  "assets/Saly-1.png",
                  scale: 3,
                ),
              ),
              top: height * 0.55,
            ),
            Positioned(
              child: GestureDetector(
                onTap: () async {
                  final code = codeController.text.trim();
                  AuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: verifyId, smsCode: code);

                  final result = await _auth.signInWithCredential(credential);

                  final user = result.user;

                  if (user != null) {
                    Navigator.of(context).push(_createRoute());
                  } else {
                    print("Error");
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(top: height * 0.2),
                  height: height * 0.05,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: const LinearGradient(
                          colors: [Color(0xff8949E9), Color(0xff8949E9)])),
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
              left: width * 0.3,
              right: width * 0.3,
              top: height * 0.33,
            ),
          ],
        ),
      ),
    );
  }
}
