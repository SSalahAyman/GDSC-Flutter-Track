import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
  String newChar = "";
  bool showSmallButtons = true;
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
          backgroundColor: Color(0xff2e323d),
        ),
        body: Column(
          children: [
            Container(
              width: width,
              height: height * 0.4,
              child: Center(
                child: Text(
                  char,
                  style: TextStyle(color: Colors.white, fontSize: 25),
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
                  itemCount: showSmallButtons
                      ? smallButtons.length
                      : bigButtons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6),
                  itemBuilder: (BuildContext, index) {
                    return CharButton(
                      char: showSmallButtons
                          ? smallButtons[index]
                          : bigButtons[index],
                      ontap: () {
                        setState(() {
                          newChar = showSmallButtons
                              ? smallButtons[index]
                              : bigButtons[index];
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
                  TextButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      setState(() {
                        showSmallButtons = !showSmallButtons;
                      });
                    },
                    child: Image.asset(
                      "assets/icons/arrows.png",
                      width: width * 0.12,
                    ),
                  ),
                  TextButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      setState(() {
                        char = char.substring(0, char.length - 1);
                      });
                    },
                    child: Image.asset(
                      "assets/icons/clear.png",
                      width: width * 0.12,
                    ),
                  ),
                  TextButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      setState(() {
                        char = char + " ";
                      });
                    },
                    child: Image.asset(
                      "assets/icons/space.png",
                      width: width * 0.3,
                    ),
                  ),
                  TextButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {
                        setState(() {
                          char = "";
                        });
                      },
                      child: const Text(
                        "clear",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )),
                  TextButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          context: context,
                          builder: (BuildContext) {
                            return Container(
                              width: width,
                              height: height * 0.45,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Divider(
                                    color: Colors.grey.withOpacity(0.5),
                                    thickness: 9,
                                    indent: width * 0.3,
                                    endIndent: width * 0.3,
                                  ),
                                  Text(
                                    char == "" ? "Error" : "Done",
                                    style: TextStyle(
                                        color: char == ""
                                            ? Colors.red
                                            : Color(0xff22cc88),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  char == ""
                                      ? Lottie.asset(
                                          "assets/animated_icon/animation_lkbgsdoi (1).json",
                                          height: height * 0.2)
                                      : Lottie.asset(
                                          "assets/animated_icon/33886-check-okey-done.json",
                                          height: height * 0.2),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        char == ""
                                            ? "There is no word to display"
                                            : "Your word is",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: char == ""
                                                ? Colors.red
                                                : Colors.green),
                                      ),
                                      Text(
                                        " $char",
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Image.asset(
                      "assets/icons/accept.png",
                      width: width * 0.1,
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
