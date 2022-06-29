import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallAmbulancePage extends StatefulWidget {
  const CallAmbulancePage({Key? key}) : super(key: key);

  @override
  _CallAmbulancePageState createState() => _CallAmbulancePageState();
}

class _CallAmbulancePageState extends State<CallAmbulancePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top:height*0.05,bottom: height*0.01),
        decoration: const BoxDecoration(
            color: Color.fromRGBO(249, 240, 255 , 1.0)
          // gradient: RadialGradient(
          //     colors: [Color(0xffE1F1FC), Color(0xffF8F0FE)],
          //     center: Alignment(0.5, -0.5)),
        ),
        child: Stack(
            children:[
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
                            color: Color.fromRGBO(255, 242, 223,0.70),
                            offset: Offset(1.0,5.0)
                        )
                      ]
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: height*0.01,left: height*0.02),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){ Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,size: height*0.022,)),
                        SizedBox(
                          width: width*0.025,
                        ),
                        Text("Call Ambulance",style: TextStyle(fontSize: height*0.020,fontFamily: 'Nexa'),)
                      ],
                    ),
                    SizedBox(
                      height:height*0.03,
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          ContectDetails(
                              width, height, 'Ambulance', "108"),
                          ContectDetails(
                              width, height, 'Ambulance 1', "9084628798"),
                          ContectDetails(
                              width, height, 'Ambulance 2', "7562548902"),
                          ContectDetails(
                              width, height, 'Ambulance 3', "9367787387"),
                          ContectDetails(
                              width, height, 'Ambulance 4', "9887348738"),
                          ContectDetails(
                              width, height, 'Ambulance 5', "9372637627"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }

  Container ContectDetails(
      double width, double height, String Name, String number) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: ListTile(
        leading: Image.asset(
          'assets/Vector (4).png',
          scale: 2.7,
        ),
        title: Text(
          Name,
          style: TextStyle(
              fontSize: height * 0.015,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          number,
          style: TextStyle(
            fontSize: height * 0.010,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade500,
          ),
        ),
        trailing: const Icon(
          Icons.call,
          size: 30.0,
          color: Color.fromRGBO(125, 61, 219, 1.0),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class CallAmbulancePage extends StatefulWidget {
//   const CallAmbulancePage({Key? key}) : super(key: key);
//
//   @override
//   _CallAmbulancePageState createState() => _CallAmbulancePageState();
// }
//
// class _CallAmbulancePageState extends State<CallAmbulancePage> {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         padding: EdgeInsets.only(top:height*0.05,bottom: height*0.01),
//         decoration: const BoxDecoration(
//             color: Color.fromRGBO(249, 240, 255 , 1.0)
//           // gradient: RadialGradient(
//           //     colors: [Color(0xffE1F1FC), Color(0xffF8F0FE)],
//           //     center: Alignment(0.5, -0.5)),
//         ),
//         child: Stack(
//             children:[
//               Positioned(
//                 top: height*0.025,
//                 right: width*-0.1,
//                 width: width*0.6,
//                 height: height*0.3,
//                 child: Container(
//                   // width: 80,
//                   // height: height*0.5,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(300),
//                       boxShadow: const [
//                         BoxShadow(
//                             blurRadius: 40,
//                             color: Color.fromRGBO(125, 61, 219,0.1),
//                             offset: Offset(1.0,5.0)
//                         )
//                       ]
//                   ),
//
//                 ),
//               ),
//               Positioned(
//                 top: height*0.55,
//                 left: width*-0.2,
//                 width: width*0.6,
//                 height: height*0.3,
//                 child: Container(
//                   // width: 80,
//                   // height: height*0.5,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(300),
//                       boxShadow: const [
//                         BoxShadow(
//                             blurRadius: 40,
//                             color: Color.fromRGBO(255, 242, 223,0.70),
//                             offset: Offset(1.0,5.0)
//                         )
//                       ]
//                   ),
//
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(right: height*0.01,left: height*0.02),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,size: height*0.022,)),
//                         SizedBox(
//                           width: width*0.025,
//                         ),
//                         Text("Call Ambulance",style: TextStyle(fontSize: height*0.020,fontFamily: 'Nexa'),)
//                       ],
//                     ),
//                     SizedBox(
//                       height:height*0.03,
//                     ),
//                     Expanded(
//                       child: ListView.builder(
//                           scrollDirection: Axis.vertical,
//                           shrinkWrap: true,
//                           itemCount: 5,
//                           itemBuilder: (BuildContext context,int index){
//                             return Container(
//                               margin: const EdgeInsets.all(8.0),
//                               padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20.0)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Image.asset('assets/Vector (3).png',scale: 2.9,),
//                                   SizedBox(
//                                     width: width*0.08,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       index == 0? Text("Ambulance   ",
//                                         style: TextStyle(fontSize: height*0.015,
//                                             fontFamily: 'Avenir',
//                                             fontWeight: FontWeight.w500),
//                                       ):
//                                       Text("Ambulance $index",style: TextStyle(fontSize: height*0.015,
//                                           fontFamily: 'Avenir',
//                                           fontWeight: FontWeight.w500),
//                                       ),
//                                       Text("9566457895",
//                                         style: TextStyle(
//                                           fontSize: height*0.010,
//                                           fontFamily: 'Avenir',
//                                           fontWeight: FontWeight.w500,
//                                           color: Colors.grey.shade500,),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     width: width*0.30,
//                                   ),
//                                   const Icon(Icons.call,size: 30.0,color: Color.fromRGBO(125, 61, 219,1.0))
//                                 ],),
//                             );
//                           }
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ]
//         ),
//       ),
//     );
//   }
// }