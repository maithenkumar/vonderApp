import 'package:flutter/material.dart';
import '../Widgets/loding_container.dart';

// https://pub.dev/packages/shimmer
class LodingScreen extends StatefulWidget {
  const LodingScreen({super.key});

  @override
  State<LodingScreen> createState() => _LodingScreenState();
}

class _LodingScreenState extends State<LodingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 100,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 3,
              //     itemBuilder: (context, index) =>
              //   ),
              // ),
               SimmerContainer(
                    height: 100,
                    width: double.infinity,
                    radius: 0,
                  ),
                  SizedBox(height: 10,),
              SimmerContainer(height: 20, width: MediaQuery.of(context).size.width/2.4, radius: 0),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SimmerContainer(height: 10, width: MediaQuery.of(context).size.width/4, radius: 0,margin: 0),
              ),
        
             SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SimmerContainer(
                    height: 110,
                    width: 92,
                    radius: 0,
        
                  ),
                  SizedBox(width: 10,),
                  SimmerContainer(
                    height: 110,
                    width: 92,
                    radius: 0,
        
                  ),                  SizedBox(width: 10,),

                  SimmerContainer(
                    height: 110,
                    width: 92,
                    radius: 0,
        
                  ),
                ],
              ),
              SimmerContainer(
                height: 100,
                width: double.infinity,
                radius: 0,
              ),   
              const SizedBox(height: 10,),
              SimmerContainer(height: 20, width: MediaQuery.of(context).size.width/2.4, radius: 0),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SimmerContainer(height: 10, width: MediaQuery.of(context).size.width/4, radius: 0,margin: 0),
              ),   Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SimmerContainer(
                    height: 110,
                    width: 92,
                    radius: 0,
        
                  ),
                  SizedBox(width: 10,),
                  SimmerContainer(
                    height: 110,
                    width: 92,
                    radius: 0,
        
                  ),                  SizedBox(width: 10,),

                  SimmerContainer(
                    height: 110,
                    width: 92,
                    radius: 0,
        
                  ),
                ],
              ), Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SimmerContainer(
                    height: 110,
                    width: 92,
                    radius: 0,
        
                  ),
                  SizedBox(width: 10,),
                  SimmerContainer(
                    height: 110,
                    width: 92,
                    radius: 0,
        
                  ),                  SizedBox(width: 10,),

                  SimmerContainer(
                    height: 110,
                    width: 92,
                    radius: 0,
        
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

