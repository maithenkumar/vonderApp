import 'package:flutter/material.dart';

import '../Widgets/loding_container.dart';

class LodingOrderScreen extends StatelessWidget {
  const LodingOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(left: 15,top: 10,bottom: 10),
        child: ListView.builder(
          itemCount: 9,
          itemBuilder: (context, index) =>  OrderContainerLoding(),),
      )
    );
  }
}
class OrderContainerLoding extends StatelessWidget {
  const OrderContainerLoding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20,top: 10),
      child: Column(
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
          SimmerContainer(height: 60, width: double.infinity)
        ],
      ),
    );
  }
}

// class LodingCircleScreenContainer extends StatelessWidget {
//   const LodingCircleScreenContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SimmerContainer(height: 80, width: 80,radius: 50,);
//   }
// }class LodingCScreenContainer extends StatelessWidget {
//   const LodingCScreenContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SimmerContainer(height: 80, width: 80,radius: 50,),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SimmerContainer(height: 20,
//                        width:MediaQuery.of(context).size.width/1.5,radius: 0,),
//                   SimmerContainer(height: 10,
//                    width:MediaQuery.of(context).size.width/5,radius: 0,),
//                     ],
//                   ),
                  
//           ],
//         ),
//       ],
//     );
//   }
// }