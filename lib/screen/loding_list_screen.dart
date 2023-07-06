import 'package:flutter/material.dart';
import 'package:order_app/Widgets/loding_container.dart';

class LodingListScreen extends StatelessWidget {
  const LodingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          
          itemCount: 10,
          itemBuilder: (context, index) => owContainer(),),
      ),
    );
  }
}
class owContainer extends StatelessWidget {
  const owContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SimmerContainer(height: 70, width: 70,radius: 0,),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SimmerContainer(height: 10, width:MediaQuery.of(context).size.width/1.5,radius: 0,),
              SimmerContainer(height: 10, width:MediaQuery.of(context).size.width/1.5,radius: 0,)
             , SimmerContainer(height: 10, width:MediaQuery.of(context).size.width/5,radius: 0,)
                ],
              ),
            ],
          );
  }
}