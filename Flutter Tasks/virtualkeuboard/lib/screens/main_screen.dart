import 'package:flutter/material.dart';
import 'package:virtualkeuboard/components/char_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static late double width;
  static late double height;
  String char = "";
  final List<String> smallButtons = const [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
  ];

  final List<String> bigButtons = const [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff262930),
        appBar: AppBar(
          title: Text("Custom Keyboard"),
        ),
        body: Column(
          children: [
            Container(
              width: width,
              height: height * 0.4,
              child: Center(
                child: Text(
                  char,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Color(0xff2d333d),
              ),
              width: width,
              height: height * 0.42,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: smallButtons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6),
                  itemBuilder: (BuildContext, index) {
                    return CharButton(
                      char: smallButtons[index],
                      ontap: () {
                        setState(() {
                          String newChar = smallButtons[index];
                          char = char + newChar;
                        });
                      },
                    );
                  }),
            ),
            Container(
              width: width,
              height: height * 0.08511,
              decoration: BoxDecoration(
                color: Color(0xff2d333d),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: width * 0.12,
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/arrows.png",
                      width: width * 0.3,
                    ),
                  ),
                  IconButton(
                    iconSize: width * 0.12,
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/clear.png",
                    ),
                  ),
                  IconButton(
                    iconSize: width * 0.3,
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/space.png",
                    ),
                  ),
                  IconButton(
                    iconSize: width * 0.12,
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/clear.png",
                    ),
                  ),
                  IconButton(
                    iconSize: width * 0.1,
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/accept.png",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
