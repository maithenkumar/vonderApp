import 'package:flutter/material.dart';
import 'package:order_app/Widgets/loding_container.dart';

class LodingDashBoardScreen extends StatelessWidget {
  const LodingDashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SimmerContainer(
            height: 60,
            width: 60,
            radius: 50,
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SimmerContainer(
              height: 25,
              width: double.infinity,
              radius: 0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: SimmerContainer(
              height: 20,
              width: double.infinity,
              radius: 0,
            ),
          ),
          SizedBox(height: 20,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SimmerContainer(
                    height: 100,
                    width: 100,
                    radius: 5,
                  ),
                  SimmerContainer(
                    height: 100,
                    width: 100,
                    radius: 5,
                  ),
                  SimmerContainer(
                    height: 100,
                    width: 100,
                    radius: 5,
                  ),
                  
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  SimmerContainer(
                    height: 140,
                    width: 180,
                    radius: 6,
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  SimmerContainer(
                    height: 50,
                    width: 180,
                    radius:5,
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  SimmerContainer(
                    height: 50,
                    width: 180,
                    radius:5,
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  SimmerContainer(
                    height: 50,
                    width: 180,
                    radius:5,
                  )
                ],
              )
            ],
          ),
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 20),
   child: SimmerContainer(
                      height: 50,
                      width: double.infinity,
                      radius:5,
                    ),
 )
         
        ],
      ),
    );
  }
}
