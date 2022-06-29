import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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



class StreetPage extends StatefulWidget {
  const StreetPage({Key? key}) : super(key: key);

  @override
  _StreetPageState createState() => _StreetPageState();
}

class _StreetPageState extends State<StreetPage> {

  late SharedPreferences data;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(249, 240, 255 , 1.0),
        ),
        width: double.infinity,
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
            Positioned(
              child: Image.asset(
                "assets/Vector.png",
                scale: 3.2,
                height: height * 0.7,
              ),
              left: width * 0.4,
              right: -width * 0.2,
              top: -height * 0.10,
            ),
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Search your',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Nexa'),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text(
                    'Street name',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,fontFamily: 'Nexa',
                        color: Color(0xff7434CF)),
                  ),
                ],
              ),
              top: height * 0.20,
              left: width * 0.11,
              right: width * 0.047,
            ),
            Positioned(
              child: GestureDetector(
                onTap: (){
                  setState((){
                    showSearch(context: context, delegate: CitySearch());
                    // final results = await showSearch(context: context, delegate: CitySearch());
                    //print('Result: $results');
                  });
                },
                child: Container(
                  //width: width * 0.2,
                    height: height * 0.065,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow:  [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2.0, 4.0),
                            spreadRadius: 3,
                            blurRadius: 9)
                      ],
                    ),
                    child: Center(
                      child: Text("Search Your Locations",style: TextStyle(fontWeight: FontWeight.w500,fontSize: height*0.015,fontFamily: "Nexa"),),
                    )
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintStyle: const TextStyle(fontFamily: "Nexa",fontSize: 20,color: Color.fromRGBO(186, 186, 186,1.0)),
                  //       contentPadding: const EdgeInsets.all(20),
                  //       hintText: 'Search...',
                  //       filled: true,
                  //       fillColor: const Color(0xffFBF8FF),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(40),
                  //         borderSide: BorderSide.none,
                  //       )),
                  // ),
                ),
              ),
              top: height * 0.400,
              left: width * 0.160,
              right: width * 0.160,
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(_createRoute());
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: height * 0.192,
                  ),
                  height: height * 0.05,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff8949E9),
                        Color(0xff8949E9),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Finish',
                      style: TextStyle(
                          fontSize: height * 0.015, color: Colors.white,fontFamily: 'Nexa'),
                    ),
                  ),
                ),
              ),
              left: width * 0.3,
              right: width * 0.3,
              top: height * 0.33,
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: width * 0.3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/Saly-15.png", scale: 3.0),
                  ],
                ),
              ),
              top: height * 0.55,
              right: -width * 0.05,
            ),

          ],
        ),
      ),
    );
  }
}


class CitySearch extends SearchDelegate<String> {
  final cities = [
    'Berlin',
    'Paris',
    'Munich',
    'Hamburg',
    'London',
  ];
  // final recentCities = [
  //   'Berlin',
  //   'Munich',
  //   'London',
  // ];

  SharedPreferences? data;

  List<dynamic> recentCities = [];


  var Result = '';



  @override
  List<Widget> buildActions(BuildContext context) => [
    IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {
        if (query.isEmpty) {
          close(context, null!);
        } else {
          query = '';
          showSuggestions(context);
        }
      },
    )
  ];

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: () => close(context, null!),
      icon: Icon(Icons.arrow_back_ios_new),
    );
  }

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.search, size: 120),
        const SizedBox(height: 48),
        Text(
          query,
          style: TextStyle(
            color: Colors.black,
            fontSize: 64,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentCities
        : cities.where((city) {
      final cityLower = city.toLowerCase();
      final queryLower = query.toLowerCase();

      return cityLower.startsWith(queryLower);

    }).toList();

    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<dynamic> suggestions) => ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        final queryText = suggestion.substring(0, query.length);
        final remainingText = suggestion.substring(query.length);

        return ListTile(
          onTap: (){
            query = suggestion;
            recentCities.add(query);
            close(context, suggestion);
            //showResults(context);

            // 3. Navigate to Result Page
            //  Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (BuildContext context) => ResultPage(suggestion),
            //   ),
            // )
          },
          leading: query == ""
              ? Icon(Icons.history): Icon(Icons.search),
          //title: Text(suggestion),
          title: RichText(
            text: TextSpan(text: queryText,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
              children: [
                TextSpan(
                  text: remainingText,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        );
      });
}