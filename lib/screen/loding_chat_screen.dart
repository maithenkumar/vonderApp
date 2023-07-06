import 'package:flutter/material.dart';
import 'package:order_app/Widgets/loding_container.dart';
class LodingChatScreen extends StatelessWidget {
  const LodingChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(
          height: 90,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  const  LodingCircleScreenContainer(),),
        ),
      const   SizedBox(
          height: 20,
        ),
      Expanded(
        child: ListView.builder(
          
          itemCount: 10,
          
          scrollDirection:Axis.vertical,
          itemBuilder: (context, index) =>   LodingCScreenContainer(),),
      )

        ],
      ),
    );
  }
}
class LodingCircleScreenContainer extends StatelessWidget {
  const LodingCircleScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SimmerContainer(height: 80, width: 80,radius: 50,);
  }
}class LodingCScreenContainer extends StatelessWidget {
  const LodingCScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SimmerContainer(height: 80, width: 80,radius: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SimmerContainer(height: 20,
                       width:MediaQuery.of(context).size.width/1.5,radius: 0,),
                  SimmerContainer(height: 10,
                   width:MediaQuery.of(context).size.width/5,radius: 0,),
                    ],
                  ),
                  
          ],
        ),
      ],
    );
  }
}