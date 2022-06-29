import 'package:flutter/material.dart';

class BusTimingPage extends StatefulWidget {
  const BusTimingPage({Key? key}) : super(key: key);

  @override
  _BusTimingPageState createState() => _BusTimingPageState();
}

class _BusTimingPageState extends State<BusTimingPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: height * 0.05, bottom: height * 0.01),
        decoration:
            const BoxDecoration(color: Color.fromRGBO(249, 240, 255, 1.0)
                // gradient: RadialGradient(
                //     colors: [Color(0xffE1F1FC), Color(0xffF8F0FE)],
                //     center: Alignment(0.5, -0.5)),
                ),
        child: Stack(children: [
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
                        color: Color.fromRGBO(255, 242, 223, 0.70),
                        offset: Offset(1.0, 5.0))
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: height * 0.01, left: height * 0.02),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: height * 0.022,
                        )),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    Text(
                      "Bus Timing",
                      style: TextStyle(
                          fontSize: height * 0.020, fontFamily: 'Nexa'),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: height * 0.8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BusTiming(width, height, "5A",
                            "Zamin Muthur - Pollachi", "5.00 AM"),
                        BusTiming(width, height, "35A",
                            "Zamin Muthur - Pollachi", "5.30 AM"),
                        BusTiming(width, height, "35E",
                            "Pollachi - Zamin Muthur", "6.00 AM"),
                        BusTiming(width, height, "40S",
                            "Zamin Muthur - Pollachi", "6.30 AM"),
                        BusTiming(width, height, "5A",
                            "Pollachi - Zamin Muthur", "7.00 AM"),
                        BusTiming(width, height, "35A",
                            "Zamin Muthur - Pollachi", "7.15 AM"),
                        BusTiming(width, height, "5A",
                            "Zamin Muthur - Pollachi", "7.45 AM"),
                        BusTiming(width, height, "5A",
                            "Zamin Muthur - Pollachi", "8.00 PM"),
                        BusTiming(width, height, "35A",
                            "Zamin Muthur - Pollachi", "8.30 PM"),
                        BusTiming(width, height, "35E",
                            "Pollachi - Zamin Muthur", "9.00 PM"),
                        BusTiming(width, height, "40S",
                            "Zamin Muthur - Pollachi", "10.30 PM"),
                        BusTiming(width, height, "5A",
                            "Pollachi - Zamin Muthur", "10.00 PM"),
                        BusTiming(width, height, "35A",
                            "Zamin Muthur - Pollachi", "11.15 PM"),
                        BusTiming(width, height, "5A",
                            "Zamin Muthur - Pollachi", "12.45 PM"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Container BusTiming(
      double width, double height, String bnm, String fromto, String time) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        children: [
          Image.asset(
            "assets/Vector (6).png",
            scale: 3.0,
            color: const Color.fromRGBO(125, 61, 219, 1.0),
          ),
          SizedBox(
            width: width * 0.07,
          ),
          Text(
            bnm,
            style: TextStyle(
                fontSize: height * 0.015,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: width * 0.06,
          ),
          Text(
            fromto,
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: height * 0.015,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: width * 0.10,
          ),
          Text(
            time,
            style: TextStyle(
                fontSize: height * 0.015,
                color: Colors.grey.shade600,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class BusTimingPage extends StatefulWidget {
//   const BusTimingPage({Key? key}) : super(key: key);
//
//   @override
//   _BusTimingPageState createState() => _BusTimingPageState();
// }
//
// class _BusTimingPageState extends State<BusTimingPage> {
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
//                         Text("Bus Timing",style: TextStyle(fontSize: height*0.020,fontFamily: 'Nexa'),)
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
//                                   Image.asset("assets/Vector (6).png",scale: 3.0,color: const Color.fromRGBO(125, 61, 219,1.0),),
//                                   SizedBox(
//                                     width: width*0.07,
//                                   ),
//                                   Text("5A",style: TextStyle(fontSize: height*0.015,
//                                       fontFamily: 'Avenir',
//                                       fontWeight: FontWeight.w500),),
//                                   SizedBox(
//                                     width: width*0.06,
//                                   ),
//                                   Text("Zamin Muthur - Pollachi",style: TextStyle(
//                                       color: Colors.grey.shade600,
//                                       fontSize: height*0.013,
//                                       fontFamily: 'Avenir',
//                                       fontWeight: FontWeight.w500),),
//                                   SizedBox(
//                                     width: width*0.10,
//                                   ),
//                                   Text("3.00pm",style: TextStyle(fontSize: height*0.013,
//                                       color: Colors.grey.shade600,
//                                       fontFamily: 'Avenir',
//                                       fontWeight: FontWeight.w500),),
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
