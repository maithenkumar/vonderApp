import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class TimePIckerContainer extends StatefulWidget {
  const TimePIckerContainer({super.key});

  @override
  State<TimePIckerContainer> createState() => _TimePIckerContainerState();
}

class _TimePIckerContainerState extends State<TimePIckerContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(99, 152, 168, 184),
            
          ),
          color: Constants.bacgroundcolor,
          borderRadius: BorderRadius.circular(7),
        ),
        child:
         Row(
          children: [
            const Text(
              "--:-- --",
              style: const TextStyle(
                  fontSize: 20,
                  color: Constants.balckcolor,
                  letterSpacing: .5),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                Icons.access_time_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
