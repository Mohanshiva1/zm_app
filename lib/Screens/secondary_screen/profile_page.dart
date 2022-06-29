import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 40,
                        color: Color(0xffE1F1FC),
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
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 40,
                        color: Color(0xffFFF2DF),
                        offset: Offset(1.0, 5.0))
                  ]),
            ),
          ),
          Positioned(
            child: Container(
              padding: const EdgeInsets.all(15),
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
                          size: height * 0.023,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontFamily: "Nexa",
                            fontSize: height * 0.020,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.11,
                          width: width * 0.24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/temp img/ic_launcher.png'))),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Add profile",
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w600,
                                color: Color(0xff6F6F6F),
                                fontSize: height * 0.014,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Onwords",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff6F6F6F),
                                  fontSize: height * 0.015,
                                  fontFamily: "Avenir",
                                ),
                              ),
                              SizedBox(
                                width: width * 0.011,
                              ),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.edit))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  UserDetails(width, height, "About as"),
                  UserDetails(width, height, "Notifications"),
                  UserDetails(width, height, "Contact us"),
                  UserDetails(width, height, "Rate us"),
                  UserDetails(width, height, "Privacy policy"),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.03, vertical: height * 0.04),
                      child: Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: height * 0.020,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff6F6F6F)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container UserDetails(double width, double height, String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.03),
            child: Text(
              text,
              style: TextStyle(
                fontSize: height * 0.015,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                color: Color(0xff6F6F6F),
              ),
            ),
          ),
          Divider(
            height: height * 0.01,
            thickness: 1,
            color: Color(0xff838383),
          ),
          SizedBox(
            height: height * 0.04,
          )
        ],
      ),
    );
  }
}
