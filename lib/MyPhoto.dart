import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPhoto extends StatelessWidget {
  MyPhoto({Key? key}) : super(key: key);
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/woman.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 350, 50, 60),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: 0.0,
                    decorator: DotsDecorator(
                      activeColor: Colors.black,
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Fast ",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 30,
                        )),
                    Text("delivery at",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 30,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("your ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 30,
                        )),
                    Text("Home",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 30,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("All the best restaurants with their ",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 15,
                          )),
                      Text("top menu waiting for you, they",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 15,
                          )),
                      Text("can't wait to you order!",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: SizedBox(
                    width: 200.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(10)),
                      child: Text("Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 15,
                          )),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
