import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:order_app/Costants/constants.dart';

class FAQcontainer extends StatefulWidget {
  const FAQcontainer(
      {super.key, required this.headText, required this.subText});
  final String headText;
  final String subText;

  @override
  State<FAQcontainer> createState() => _FAQcontainerState();
}

class _FAQcontainerState extends State<FAQcontainer>
    with SingleTickerProviderStateMixin {
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
        duration: const Duration(
          milliseconds: 500,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Constants.whitecolor,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: 
                  
                  Expanded(
                    child: Text(
                      widget.headText,
                      maxLines: 3,
                      style: TextStyle(
                          color: Constants.balckcolor,
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => _toggleContainer(),
                  //  () {
                  //   setState(() {
                  //     istab==true?istab=false:istab=true;
                  //   });
                  // },
                  child: const Icon(
                    Icons.arrow_drop_down,
                    color: Constants.othercolor,
                    size: 40,
                  ),
                )
              ],
            ),
            SizeTransition(
              sizeFactor: _animation,
              axis: Axis.vertical,
              child: const Divider(
                color: Constants.light_grey, // Color.fromARGB(94, 90, 87, 87),
                thickness: 0.5,
              ),
            ),
            SizeTransition(
              sizeFactor: _animation,
              axis: Axis.vertical,
              child: Text(
                widget.subText,
                style: TextStyle(
                  color: Constants.greyColor,
                  fontSize: 10,
                ),
              ),
            ),
            Visibility(
              visible: istab,
              child: const Divider(
                color: Constants.light_grey, // Color.fromARGB(94, 90, 87, 87),
                thickness: 0.5,
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
