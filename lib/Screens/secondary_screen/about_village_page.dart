import 'package:flutter/material.dart';

class AboutVillagePage extends StatefulWidget {
  const AboutVillagePage({Key? key}) : super(key: key);

  @override
  _AboutVillagePageState createState() => _AboutVillagePageState();
}

class _AboutVillagePageState extends State<AboutVillagePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(249, 240, 255, 1.0),
        child: Stack(
          children: <Widget>[
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
              height: height * 0.4,
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
              child: Container(
                height: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      //Title and back arrow.............................
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              size: height * 0.023,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.020,
                          ),
                          Text(
                            "About Village",
                            style: TextStyle(
                              fontSize: height * 0.020,
                              fontFamily: "Nexa",
                              // fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      //Village Name and Location...........................
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Zamin muthur",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Avenir",
                                      fontSize: height * 0.020),
                                ),
                                Text(
                                  "ஜமீன் முத்தூர்",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "Avenir",
                                      fontSize: height * 0.015),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  "Estd.1921",
                                  style: TextStyle(
                                    fontSize: height * 0.012,
                                    fontFamily: "Avenir",
                                  ),
                                )
                              ],
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: width * 0.08),
                            height: height * 0.13,
                            width: width * 0.30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/temp img/map location.png"), fit: BoxFit.fill,),
                                borderRadius: BorderRadius.circular(30)),
                          )
                        ],
                      ),
                      //Image Slider........................................
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Photos",
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff6C2CC6),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Center(
                              child: Container(

                                  height: height * 0.15,
                                  width: double.infinity,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        PhotosContainer(
                                            "assets/temp img/zm pic 1.jpg"),
                                        PhotosContainer(
                                            "assets/temp img/zm pic 2.jpg"),
                                        PhotosContainer(
                                            "assets/temp img/zm pic 3.jpeg"),
                                        PhotosContainer(
                                            "assets/temp img/zm pic 4.jpeg"),
                                        PhotosContainer(
                                            "assets/temp img/zm pic 5.jpg"),
                                        PhotosContainer(
                                            "assets/temp img/zm pic 1.jpg")
                                      ],
                                    ),
                                  ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //About Village.......................................
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About Zamin muthur",
                              style: TextStyle(
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff6C2CC6),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Zamin muthur is a Village in Pollachi North Block in Coimbatore District"
                              "of Tamil Nadu State, India."
                              "It is located 40 KM towards South from District"
                              "head quarters Coimbatore. 516 KM from State capital Chennai"
                              "Zamin muthur is surrounded by Pollachi South Block towards South,"
                              "Kinathukadavu Block towards North,"
                              "Anamalai Block towards South,"
                              "Chittur Block towards west."
                              'Pollachi, Chittur-Thathamangalam,'
                              "Udumalaipettai, Palakkad are the near by Cities to Zamin muthur.",
                              style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.013),
                            ),
                          ],
                        ),
                      ),
                      ListView(
                        shrinkWrap: true,
                        children: [
                          AddressDetails(height, "Pincode", "642005"),
                          AddressDetails(
                              height, "Post office location", "ZAMIN MUTHUR"),
                          AddressDetails(height, "Taluk ", "POLLACHI"),
                          AddressDetails(height, "District ", "COIMBATORE"),
                          AddressDetails(
                              height, "Post office type", "SUB post office"),
                          AddressDetails(height, "Division ", "POLLACHI"),
                          AddressDetails(height, "Post Region ", "COIMBATORE"),
                          AddressDetails(height, "Post Circle ", "TAMILNADU"),
                          AddressDetails(height, "State  ", "TAMILNADU"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AddressDetails(double height, String title, String address) {
    return SizedBox(
      height: height * 0.025,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              fontSize: height * 0.013,
              fontWeight: FontWeight.w500,
              color: const Color(0xff6C2CC6)),
        ),
        trailing: Text(
          address,
          style: TextStyle(
            fontFamily: "Avenir",
            fontSize: height * 0.013,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Container PhotosContainer(Image) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.3,
      height: height * 0.10,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(image: AssetImage(Image, ), fit: BoxFit.fill,),
        // image: DecorationImage(
        //   image: NetworkImage("ADD IMAGE URL HERE"),
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class AboutVillagePage extends StatefulWidget {
//   const AboutVillagePage({Key? key}) : super(key: key);
//
//   @override
//   _AboutVillagePageState createState() => _AboutVillagePageState();
// }
//
// class _AboutVillagePageState extends State<AboutVillagePage> {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Container(
//         color: const Color.fromRGBO(249, 240, 255 , 1.0),
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//               top: height*0.025,
//               right: width*-0.1,
//               width: width*0.6,
//               height: height*0.3,
//               child: Container(
//                 // width: 80,
//                 // height: height*0.5,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(300),
//                     boxShadow: const [
//                       BoxShadow(
//                           blurRadius: 40,
//                           color: Color.fromRGBO(125, 61, 219,0.1),
//                           offset: Offset(1.0,5.0)
//                       )
//                     ]
//                 ),
//
//               ),
//             ),
//             Positioned(
//               top: height*0.55,
//               left: width*-0.2,
//               width: width*0.8,
//               height: height*0.4,
//               child: Container(
//                 // width: 80,
//                 // height: height*0.5,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(300),
//                     boxShadow: const [
//                       BoxShadow(
//                           blurRadius: 40,
//                           color: Color.fromRGBO(255, 242, 223,0.70),
//                           offset: Offset(1.0,5.0)
//                       )
//                     ]
//                 ),
//
//               ),
//             ),
//             Positioned(
//               child: Container(
//                 height: double.infinity,
//                 padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: height * 0.01,
//                       ),
//                       //Title and back arrow.............................
//                       Row(
//                         children: [
//                           IconButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             icon: Icon(
//                               Icons.arrow_back_ios_new,
//                               size: height * 0.023,
//                             ),
//                           ),
//                           SizedBox(
//                             width: width * 0.020,
//                           ),
//                           Text(
//                             "About Village",
//                             style: TextStyle(
//                               fontSize: height * 0.017,
//                               fontFamily: "Nexa",
//                               // fontWeight: FontWeight.w500
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: height * 0.025,
//                       ),
//                       //Village Name and Location...........................
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Zamin muthur",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontFamily: "Avenir",
//                                       fontSize: height * 0.020),
//                                 ),
//                                 Text(
//                                   "ஜமீன் முத்தூர்",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w800,
//                                       fontFamily: "Avenir",
//                                       fontSize: height * 0.015),
//                                 ),
//                                 SizedBox(
//                                   height: height * 0.02,
//                                 ),
//                                 Text(
//                                   "Estd.1921",
//                                   style: TextStyle(fontSize: height * 0.012,fontFamily: "Avenir",),
//                                 )
//                               ],
//                             ),
//                             margin: const EdgeInsets.symmetric(horizontal: 20),
//                           ),
//                           Container(
//                             margin: EdgeInsets.only(right: width * 0.08),
//                             height: height * 0.13,
//                             width: width * 0.30,
//                             decoration: BoxDecoration(
//                                 color: Colors.blueGrey,
//                                 borderRadius: BorderRadius.circular(30)),
//                           )
//                         ],
//                       ),
//                       //Image Slider........................................
//                       Container(
//                         padding: EdgeInsets.all(15),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Photos",
//                               style: TextStyle(
//                                 fontFamily: "Avenir",
//                                 fontSize: height * 0.013,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xff6C2CC6),
//                               ),
//                             ),
//                             SizedBox(
//                               height: height * 0.02,
//                             ),
//                             Center(
//                               child: SizedBox(
//                                   height: height * 0.13,
//                                   width: double.infinity,
//                                   child: SingleChildScrollView(
//                                     scrollDirection: Axis.horizontal,
//                                     child: Row(
//                                       children: [
//                                         PhotosContainer(Colors.amber),
//                                         PhotosContainer(Colors.black),
//                                         PhotosContainer(Colors.black),
//                                         PhotosContainer(Colors.amber),
//                                         PhotosContainer(Colors.black),
//                                         PhotosContainer(Colors.black)
//                                       ],
//                                     ),
//                                   )),
//                             ),
//                           ],
//                         ),
//                       ),
//                       //About Village.......................................
//                       Container(
//                         padding: const EdgeInsets.all(15),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "About Zamin muthur",
//                               style: TextStyle(
//                                 fontSize: height * 0.013,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xff6C2CC6),
//                               ),
//                             ),
//                             SizedBox(
//                               height: height * 0.02,
//                             ),
//                             Text(
//                               "Pincode for Zamin Muthur in Pollachi ,"
//                                   " Coimbatore is 642005. Based on the postal code, "
//                                   "this is SUB post office and pin code is allocated to "
//                                   "Pollachi divisional post office in the region of "
//                                   "Coimbatore in Postal department. The first two digit"
//                                   " of pin code denotes 64, which is listed in Tamilnadu."
//                                   "This postal area was searched by 27 users in last 20 days."
//                                   " The post master name, address phone number can be found.",
//                               style: TextStyle(
//                                   fontFamily: "Avenir",
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: height * 0.010),
//                             ),
//                           ],
//                         ),
//                       ),
//                       ListView(
//                         shrinkWrap: true,
//                         children: [
//                           AddressDetails(height, "Pincode", "642005"),
//                           AddressDetails(
//                               height, "Post office location", "ZAMIN MUTHUR"),
//                           AddressDetails(height, "Taluk ", "POLLACHI"),
//                           AddressDetails(height, "District ", "COIMBATORE"),
//                           AddressDetails(
//                               height, "Post office type", "SUB post office"),
//                           AddressDetails(height, "Division ", "POLLACHI"),
//                           AddressDetails(height, "Post Region ", "COIMBATORE"),
//                           AddressDetails(height, "Post Circle ", "TAMILNADU"),
//                           AddressDetails(height, "State  ", "TAMILNADU"),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   AddressDetails(double height, String title, String address) {
//     return SizedBox(
//       height: height*0.025,
//       child: ListTile(
//         title: Text(
//           title,
//           style: TextStyle(
//               fontSize: height * 0.013,
//               fontWeight: FontWeight.w500,
//               color: const Color(0xff6C2CC6)
//           ),
//         ),
//         trailing: Text(
//           address,
//           style: TextStyle(
//             fontFamily: "Avenir",
//             fontSize: height * 0.013,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Container PhotosContainer(Color color) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Container(
//       width: width * 0.3,
//       height: height * 0.15,
//       margin: const EdgeInsets.symmetric(horizontal: 5.0),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           // image: DecorationImage(
//           //   image: NetworkImage("ADD IMAGE URL HERE"),
//           //   fit: BoxFit.cover,
//           // ),
//           color: color),
//     );
//   }
// }
