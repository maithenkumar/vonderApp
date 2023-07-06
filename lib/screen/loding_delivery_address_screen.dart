import 'package:flutter/material.dart';
import 'package:order_app/Widgets/loding_container.dart';

class LodingDeliveryAddressScreen extends StatelessWidget {
  const LodingDeliveryAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: LodingDeliveryAddresContainer(),
          ),
        ),
      ),
    );
  }
}

class LodingDeliveryAddresContainer extends StatelessWidget {
  const LodingDeliveryAddresContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SimmerContainer(
          height: 70,
          width: 70,
          radius: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SimmerContainer(height: 10, width: 100),
            SimmerContainer(
              margin: 5,
                height: 25, width: MediaQuery.of(context).size.width / 2),
            SimmerContainer(
                height: 50, width: MediaQuery.of(context).size.width / 1.5),
          ],
        )
      ],
    );
  }
}
