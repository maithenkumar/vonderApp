import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:order_app/Costants/constants.dart';

class EnterAmountDetails extends StatefulWidget {
  EnterAmountDetails({super.key});

  @override
  State<EnterAmountDetails> createState() => _EnterAmountDetailsState();
}

class _EnterAmountDetailsState extends State<EnterAmountDetails> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
    
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 207, 216, 224),
          width: 0.5,
          strokeAlign: .5,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Enter Amount",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              const Text(
                "Max \$1231,23.00",
                style: TextStyle(
                  color: Constants.greyColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(249, 250, 251, 1),
                      elevation: 0),
                  child: Text(
                    "INR",
                    style: TextStyle(
                      color: Constants.greyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    autofocus: false,
                    controller: controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                  
                    ),
                    inputFormatters: [
       FilteringTextInputFormatter.digitsOnly
      
                    ],
                    style: TextStyle(
                      
                      color: Constants.redColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
