import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

class ShopTypeProfile extends StatefulWidget {
  const ShopTypeProfile({super.key, required this.imageurl, required this.shopName});

final String imageurl;
final String shopName;
  @override
  State<ShopTypeProfile> createState() => _ShopTypeProfileState();
}

class _ShopTypeProfileState extends State<ShopTypeProfile> {
  bool istab = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          istab == true ? istab = false : istab = true;
        });
      },
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(image:
                  NetworkImage(widget.imageurl,)),
                  border: Border.all(
                      color: istab == true
                          ? Constants.orangecolor
                          : Constants.greyColor,
                      width: 3)),
              // child: Image.network(
              //   "http://api.mahabhojanam.com/cdn/images/Mahabhojanam_63e9263ab72e0.1915473.jpg",
              // ),
            ),
         istab ==true?   Positioned(
              right: 0,
              child: Container(
                 decoration: BoxDecoration(
                   
                     borderRadius: BorderRadius.circular(50),
                     color: Constants.bacgroundcolor,
                  ),
                padding: EdgeInsets.all(3),
                child: Container(
                  decoration: BoxDecoration(
                    
                     borderRadius: BorderRadius.circular(50),
                     color: Constants.orangecolor,
                  ),
                  child: Icon(
                    Icons.done,
                    color: Constants.whitecolor,
                    size: 30,
                  ),
                ),
              ),
            ):Text(""),
            Positioned(
              bottom: 30,
              right: 20,
              child: Text(
             widget.shopName,
                maxLines: 2,
                style: TextStyle(
                    color: istab == true
                        ? Constants.orangecolor
                        : Constants.greyColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
