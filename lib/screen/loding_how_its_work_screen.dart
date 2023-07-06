import 'package:flutter/material.dart';
import 'package:order_app/Widgets/loding_container.dart';

class LodingHowItsWorksScreen extends StatelessWidget {
  const LodingHowItsWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: LodingHowItsWorksContainer(),
        ),
      ),
    );
  }
}

class LodingHowItsWorksContainer extends StatelessWidget {
  const LodingHowItsWorksContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SimmerContainer(
          height: 100,
          width: double.infinity,
          radius: 6,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SimmerContainer(
              height: 70,
              width: 70,
              radius: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SimmerContainer(height: 25, width: MediaQuery.of(context).size.width/1.5),
                  SimmerContainer(height: 15, width: 100)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
