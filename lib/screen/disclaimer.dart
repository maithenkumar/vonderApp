import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';
import 'package:order_app/Widgets/dot_icon.dart';

class DisClaimerScreen extends StatefulWidget {
  const DisClaimerScreen({super.key});

  @override
  State<DisClaimerScreen> createState() => _DisClaimerScreenState();
}

class _DisClaimerScreenState extends State<DisClaimerScreen> with SingleTickerProviderStateMixin {
   bool istab = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  _toggleContainer() {
    if (_animation.status != AnimationStatus.completed) {
      _controller.forward();
    } else {
      _controller.animateBack(
        0,
        duration:const  Duration(
          milliseconds: 500,
        ),
      );
    }
  }
  bool ismenu = false;
  List menudata = [
    {
      "menucount": 6,
      "menuname": "Top Picks",
    },
    {
      "menucount": 6,
      "menuname": "Recomended",
    },
    {
      "menucount": 6,
      "menuname": "Value Snakers",
    },
    {
      "menucount": 6,
      "menuname": "Peri peri Chicken Strips & leg pc",
    },
    {
      "menucount": 6,
      "menuname": "Chicken Rolls ",
    },
    {
      "menucount": 6,
      "menuname": "Saty Home Special ",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bacgroundcolor,
      body: Container(
        // padding: EdgeInsets.symmetric(
        //     vertical: ismenu == false ? 0 : 30,
        //     horizontal: ismenu == false ? 0 : 40),
        // color:ismenu==true? Constants.balckcolor.withOpacity(.7):Constants.bacgroundcolor,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    
                    ismenu=false;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Disclamer :",
                              style: TextStyle(
                                color: Constants.balckcolor.withOpacity(.5),
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const DisclimerText(
                              text:
                                  'All prices are set directly by the restaurant',
                            ),
                            const DisclimerText(
                                text:
                                    """All nutritional information is indicative, values are per serve as shared by the restaurant and may vary depending on the ingredients and portion size."""),
                            const DisclimerText(
                                text:
                                    'An average active adult requires 2,000 kcal energy per day, however, calorie needs may vary.'),
                            const DisclimerText(
                              text:
                                  'All prices are set directly by the restaurant',
                            ),
                            const DisclimerText(
                                text:
                                    """All nutritional information is indicative, values are per serve as shared by the restaurant and may vary depending on the ingredients and portion size."""),
                            const DisclimerText(
                                text:
                                    'An average active adult requires 2,000 kcal energy per day, however, calorie needs may vary.'),
                            const DisclimerText(
                              text:
                                  'All prices are set directly by the restaurant',
                            ),
                            const DisclimerText(
                                text:
                                    """All nutritional information is indicative, values are per serve as shared by the restaurant and may vary depending on the ingredients and portion size."""),
                            const DisclimerText(
                                text:
                                    'An average active adult requires 2,000 kcal energy per day, however, calorie needs may vary.'),
                            const DisclimerText(
                              text:
                                  'All prices are set directly by the restaurant',
                            ),
                            const DisclimerText(
                                text:
                                    """All nutritional information is indicative, values are per serve as shared by the restaurant and may vary depending on the ingredients and portion size."""),
                            const DisclimerText(
                                text:
                                    'An average active adult requires 2,000 kcal energy per day, however, calorie needs may vary.'),
                            const DisclimerText(
                              text:
                                  'All prices are set directly by the restaurant',
                            ),
                            const DisclimerText(
                                text:
                                    """All nutritional information is indicative, values are per serve as shared by the restaurant and may vary depending on the ingredients and portion size."""),
                            const DisclimerText(
                                text:
                                    'An average active adult requires 2,000 kcal energy per day, however, calorie needs may vary.'),
                            const DisclimerText(
                              text:
                                  'All prices are set directly by the restaurant',
                            ),
                            const DisclimerText(
                                text:
                                    """All nutritional information is indicative, values are per serve as shared by the restaurant and may vary depending on the ingredients and portion size."""),
                            const DisclimerText(
                                text:
                                    'An average active adult requires 2,000 kcal energy per day, however, calorie needs may vary.'),
                            const DisclimerText(
                              text:
                                  'All prices are set directly by the restaurant',
                            ),
                            const DisclimerText(
                                text:
                                    """All nutritional information is indicative, values are per serve as shared by the restaurant and may vary depending on the ingredients and portion size."""),
                            const DisclimerText(
                                text:
                                    'An average active adult requires 2,000 kcal energy per day, however, calorie needs may vary.'),
                            const DisclimerText(
                              text:
                                  'All prices are set directly by the restaurant',
                            ),
                            const DisclimerText(
                                text:
                                    """All nutritional information is indicative, values are per serve as shared by the restaurant and may vary depending on the ingredients and portion size."""),
                            const DisclimerText(
                                text:
                                    'An average active adult requires 2,000 kcal energy per day, however, calorie needs may vary.'),
                            const DisclimerText(
                              text:
                                  'All prices are set directly by the restaurant',
                            ),
                            const DisclimerText(
                                text:
                                    """All nutritional information is indicative, values are per serve as shared by the restaurant and may vary depending on the ingredients and portion size."""),
                            const DisclimerText(
                                text:
                                    'An average active adult requires 2,000 kcal energy per day, however, calorie needs may vary.'),
                            const Divider(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.info_outline,
                                  color: Constants.greyColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Report an issue with the menu",
                                  style: TextStyle(
                                    color: Constants.balckcolor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                    child: const Icon(
                                  Icons.arrow_right,
                                  color: Constants.balckcolor,
                                  size: 30,
                                ))
                              ],
                            ),
                            const Divider(),
                            const Row(
                              children: [
                                Text(
                                  "fassai",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Constants.greyColor,
                                      fontSize: 30,
                                      fontStyle: FontStyle.italic),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "License No.",
                                  style: TextStyle(
                                    color: Constants.greyColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "2121323423123",
                                  style: TextStyle(
                                    color: Constants.greyColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            const Text(
                              "KFC",
                              style: TextStyle(
                                  color: Constants.balckcolor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "(Outlet:AMC Road)",
                              style: TextStyle(
                                color: Constants.greyColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Constants.balckcolor,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Ground Floor, Adyar Ananda Bhavan Hotel, Thomaiyar Puram, Dindigul, Tamil Nadu 624002",
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Constants.greyColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !ismenu,
              child: Positioned(
                  right: 30,
                bottom: 100,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ismenu == false ? ismenu = true : ismenu = false;
                        print(ismenu);
                      });
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow()],
                        color: Constants.balckcolor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.menu_book_outlined,
                              color: Constants.greyColor,
                            ),
                            Text(
                              "MENU",
                              style: TextStyle(
                                color: Constants.whitecolor.withOpacity(1),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
            Positioned(
              bottom: 100,
              left: 0,right: 0,
              child: AnimatedOpacity(
                
              opacity: ismenu ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
                child: AnimatedOpacity(
                  
                opacity: ismenu ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                  child: Container(
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.all(30),
                      // padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Constants.balckcolor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 0,
                                // spreadRadius: 10,
                                blurStyle: BlurStyle.outer)
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        height: 280,
                        child: ListView.builder(
                          itemCount: menudata.length,
                          itemBuilder: (context, index) => MenuText(
                            menucount: menudata[index]["menucount"],
                            menuname: menudata[index]["menuname"],
                            fun: () {
                              setState(() {
                                ismenu = false;
                              });
                            },
                          ),
                        ),
                      )
                            
                      //  const Column(
                      //   children: [
                      //     MenuText(
                      //       menucount: 6,
                      //       menuname: "Top Picks",
                      //     ),
                      //     MenuText(
                      //       menucount: 6,
                      //       menuname: "Recomended",
                      //     ),
                      //     MenuText(
                      //       menucount: 6,
                      //       menuname: "Value Snakers",
                      //     ),
                      //     MenuText(
                      //       menucount: 6,
                      //       menuname: "Peri peri Chicken Strips & leg pc",
                      //     ),
                      //     MenuText(
                      //       menucount: 6,
                      //       menuname: "Chicken Rolls ",
                      //     ),
                      //     MenuText(
                      //       menucount: 6,
                      //       menuname: "Saty Home Special ",
                      //     )
                      //   ],
                      // ),
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DisclimerText extends StatelessWidget {
  const DisclimerText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: DotIcon(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 7,
              ),
              child: Text(
                text,
                maxLines: 5,
                style: const TextStyle(
                  color: Constants.greyColor,
                  fontSize: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MenuText extends StatelessWidget {
  const MenuText(
      {super.key,
      required this.menuname,
      required this.menucount,
      required this.fun});
  final String menuname;
  final int menucount;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        onTap: fun,
        child: Row(
          children: [
            Expanded(
              child: Text(
                menuname,
                maxLines: 2,
                style: TextStyle(
                    color: Constants.whitecolor.withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Spacer(),
            Text(
              "$menucount",
              style: TextStyle(
                  color: Constants.whitecolor.withOpacity(0.8),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
