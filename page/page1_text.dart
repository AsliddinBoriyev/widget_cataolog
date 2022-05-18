import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  static const id = "/id_of";

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: Color(0xFF263238),
            padding: EdgeInsets.only(top: 290, left: 50),
            child: const Text(
              "Retro",
              style: TextStyle(
                letterSpacing: 10,
                fontSize: 120,
                fontWeight: FontWeight.w900,
                fontFamily: "Roboto",
                color: Color(0xFFFFFDE7),
                shadows: [
                  Shadow(
                    color: Color(0xFF8D6E63),
                    blurRadius: 0.9,
                    offset: Offset(6.7, 6.7),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Color(0xFF212121),
            padding: EdgeInsets.only(top: 290, left: 65),
            child: const Text(
              "Retro",
              style: TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.w700,
                fontFamily: "Lato",
                color: Color(0xFFFFFDE7),
                shadows: [
                  Shadow(
                    color: Colors.grey,
                    offset: Offset(4, 4),
                    blurRadius: 2,
                  ),
                  Shadow(
                    // bottomLeft
                      offset: Offset(-1.5, -1.5),
                      color: Colors.black),
                  Shadow(
                    // bottomRight
                      offset: Offset(1.5, -1.5),
                      color: Colors.black),
                  Shadow(
                    // topRight
                      offset: Offset(1.5, 1.5),
                      color: Colors.black),
                  Shadow(
                    // topLeft
                      offset: Offset(-1.5, 1.5),
                      color: Colors.black),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(top: 10, left: 70),
            child: Row(
              children: const [
                Text(
                  "Tik T",
                  style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                    color: Color(0xFFFFFDE7),
                  ),
                ),


                Text(
                  "o",
                  style: TextStyle(
                      fontSize: 74,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: Color(0xFFFFFDE7),
                      shadows: [
                        Shadow(
                          color: Colors.pink,
                          blurRadius: 2.0,
                          offset: Offset(6.0, 0.0),
                        ),
                        Shadow(
                          color: Colors.greenAccent,
                          blurRadius: 1.5,
                          offset: Offset(-4.0, 0.0),
                        ),
                      ]),
                ),
                Text(
                  "k",
                  style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                    color: Color(0xFFFFFDE7),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}