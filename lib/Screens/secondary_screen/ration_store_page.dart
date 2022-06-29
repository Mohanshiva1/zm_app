import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RationStorePage extends StatefulWidget {
  const RationStorePage({Key? key}) : super(key: key);

  @override
  _RationStorePageState createState() => _RationStorePageState();
}

class _RationStorePageState extends State<RationStorePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(249, 240, 255, 1.0),
      body: Stack(
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
            child: Container(
              padding: EdgeInsets.only(
                  top: height * 0.04,
                  left: height * 0.010,
                  bottom: height * 0.01,
                  right: height * 0.02),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: height * 0.020,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        "Ration store",
                        style: TextStyle(
                            fontFamily: "Nexa",
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: width * 0.35,
                      ),
                      Text(
                        "March",
                        style: TextStyle(
                            fontFamily: "Nexa",
                            fontSize: height * 0.015,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  DateContainer("02-01-2022"),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * 0.03),
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.08, ),
                    height: height * 0.20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(251, 248, 255, 1.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                            offset: Offset(1.0, 1.0))
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: height*0.02),
                      child: Column(
                        children: [
                        itemsInStore(height, "Rice", "600KG"),
                        itemsInStore(height, "Sugar", "360KG"),
                        itemsInStore(height, "Oil", "330L"),
                        itemsInStore(height, "Dhall", "170KG"),
                        itemsInStore(height, "Wheat", "400KG"),
                      ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  DateContainer("03-2022"),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * 0.03),
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.08, ),
                    height: height * 0.20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(251, 248, 255, 1.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                            offset: Offset(1.0, 1.0))
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: height*0.02),
                      child: Column(
                        children: [
                          itemsInStore(height, "Rice", "600KG"),
                          itemsInStore(height, "Sugar", "360KG"),
                          itemsInStore(height, "Oil", "330L"),
                          itemsInStore(height, "Dhall", "170KG"),
                          itemsInStore(height, "Wheat", "400KG"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  DateContainer("07-03-2022"),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * 0.03),
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.08, ),
                    height: height * 0.20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(251, 248, 255, 1.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                            offset: Offset(1.0, 1.0))
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: height*0.02),
                      child: Column(
                        children: [
                          itemsInStore(height, "Rice", "600KG"),
                          itemsInStore(height, "Sugar", "360KG"),
                          itemsInStore(height, "Oil", "330L"),
                          itemsInStore(height, "Dhall", "170KG"),
                          itemsInStore(height, "Wheat", "400KG"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned(
          //     child: Container(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 20,
          //   ),
          // ),
          // )
        ],
      ),
    );
  }

   itemsInStore(double height, String itemsName, String balanceItems) {
    return SizedBox(
      height: height*0.02,
      child: ListTile(
        title: Text(
          itemsName,
          style: TextStyle(
              fontSize: height * 0.015,
              fontWeight: FontWeight.w500,
              // color: const Color(0xff6C2CC6),
          ),
        ),
        trailing: Text(
          balanceItems,
          style: TextStyle(
            fontFamily: "Avenir",
            fontSize: height * 0.015,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget DateContainer(String Date) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: width * 0.1,right: width * 0.1),
      child: Column(
        children: [
          Text(
            Date,
            style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: height * 0.018,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  // Container contentContainer(double width, double height) {
  //   return Container(
  //     padding: EdgeInsets.symmetric(
  //       horizontal: 20,
  //     ),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: EdgeInsets.only(left: width * 0.08),
  //           child: Text(
  //             "03-03-2022",
  //             style: TextStyle(
  //                 fontFamily: 'Avenir',
  //                 fontSize: height * 0.010,
  //                 fontWeight: FontWeight.w500),
  //           ),
  //         ),
  //         SizedBox(
  //           height: height * 0.01,
  //         ),
  //         Container(
  //           padding: EdgeInsets.symmetric(
  //               horizontal: width * 0.05, vertical: height * 0.02),
  //           height: height * 0.20,
  //           width: double.infinity,
  //           decoration: BoxDecoration(
  //             color: const Color.fromRGBO(251, 248, 255, 1.0),
  //             boxShadow: const [
  //               BoxShadow(
  //                   color: Colors.black12,
  //                   blurRadius: 5.0,
  //                   spreadRadius: 1.0,
  //                   offset: Offset(1.0, 1.0))
  //             ],
  //             borderRadius: BorderRadius.circular(30),
  //           ),
  //           child: SingleChildScrollView(
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 SizedBox(
  //                   height: height * 0.02,
  //                 ),
  //                 itemsName(height),
  //                 itemsName(height),
  //                 itemsName(height),
  //                 itemsName(height),
  //                 itemsName(height),
  //                 SizedBox(
  //                   height: height * 0.01,
  //                 ),
  //               ],
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
  //
  // Row itemsName(double height) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     children: [
  //       Text(
  //         "data ",
  //         style: TextStyle(
  //             fontFamily: "Avenir",
  //             fontWeight: FontWeight.w600,
  //             fontSize: height * 0.012),
  //       ),
  //       SizedBox(
  //         width: 100,
  //       ),
  //       Text(
  //         "1KG",
  //         style: TextStyle(
  //             fontFamily: "Avenir",
  //             fontWeight: FontWeight.w600,
  //             fontSize: height * 0.012),
  //       ),
  //     ],
  //   );
  // }
}

// import 'package:flutter/material.dart';
//
// class RationStorePage extends StatefulWidget {
//   const RationStorePage({Key? key}) : super(key: key);
//
//   @override
//   _RationStorePageState createState() => _RationStorePageState();
// }
//
// class _RationStorePageState extends State<RationStorePage> {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color.fromRGBO(249, 240, 255 , 1.0),
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             top: height*0.025,
//             right: width*-0.1,
//             width: width*0.6,
//             height: height*0.3,
//             child: Container(
//               // width: 80,
//               // height: height*0.5,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(300),
//                   boxShadow: const [
//                     BoxShadow(
//                         blurRadius: 40,
//                         color: Color.fromRGBO(125, 61, 219,0.1),
//                         offset: Offset(1.0,5.0)
//                     )
//                   ]
//               ),
//
//             ),
//           ),
//           Positioned(
//             top: height*0.55,
//             left: width*-0.2,
//             width: width*0.8,
//             height: height*0.3,
//             child: Container(
//               // width: 80,
//               // height: height*0.5,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(300),
//                   boxShadow: const [
//                     BoxShadow(
//                         blurRadius: 40,
//                         color: Color.fromRGBO(255, 242, 223,0.70),
//                         offset: Offset(1.0,5.0)
//                     )
//                   ]
//               ),
//
//             ),
//           ),
//           Positioned(
//             child: Container(
//               padding: EdgeInsets.only(top: height*0.04,left: height*0.010,bottom: height*0.01,right: height*0.02),
//               width: double.infinity,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: height * 0.01,
//                   ),
//                   Row(
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         icon: Icon(
//                           Icons.arrow_back_ios_new,
//                           size: height * 0.020,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(
//                         width: width * 0.02,
//                       ),
//                       Text(
//                         "Ration store",
//                         style: TextStyle(
//                             fontFamily: "Nexa",
//                             fontSize: height * 0.018,
//                             fontWeight: FontWeight.w400),
//                       ),
//                       SizedBox(
//                         width: width * 0.35,
//                       ),
//                       Text(
//                         "March",
//                         style: TextStyle(
//                             fontFamily: "Nexa",
//                             fontSize: height * 0.015,
//                             fontWeight: FontWeight.w400),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   contentContainer(width, height),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   contentContainer(width, height),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   contentContainer(width, height)
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//               child: Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//               ))
//         ],
//       ),
//     );
//   }
//
//   Container contentContainer(double width, double height) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 20,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: width * 0.08),
//             child: Text("03-03-2022",style: TextStyle(fontFamily: 'Avenir',fontSize: height*0.010,fontWeight: FontWeight.w500),),
//           ),
//           SizedBox(
//             height: height * 0.01,
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: width * 0.05,vertical: height*0.02),
//             height: height * 0.20,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: const Color.fromRGBO(251, 248, 255,1.0),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 5.0,
//                     spreadRadius: 1.0,
//                     offset: Offset(1.0, 1.0))
//               ],
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   itemsName(height),
//                   itemsName(height),
//                   itemsName(height),
//                   itemsName(height),
//                   itemsName(height),
//                   SizedBox(
//                     height: height * 0.01,
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Row itemsName(double height) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Text(
//           "data ",
//           style: TextStyle(
//               fontFamily: "Avenir",
//               fontWeight: FontWeight.w600,
//               fontSize: height * 0.012),
//         ),
//         SizedBox(
//           width: 100,
//         ),
//         Text(
//           "1KG",
//           style: TextStyle(
//               fontFamily: "Avenir",
//               fontWeight: FontWeight.w600,
//               fontSize: height * 0.012),
//         ),
//       ],
//     );
//   }
// }
