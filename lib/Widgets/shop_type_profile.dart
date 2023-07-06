import 'package:flutter/material.dart';
import 'package:order_app/Costants/constants.dart';

import '../ApiServices/api_services.dart';


class CustomWidget extends StatefulWidget {
  final int index;
  final bool isSelected;
  final VoidCallback onSelect;

  final String imageurl;
  final String shopName;

  const CustomWidget(
      {super.key,
      required this.index,
      required this.isSelected,
      required this.onSelect,
      required this.imageurl,
      required this.shopName});

  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  bool istab = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onSelect,
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: NetworkImage(
                    widget.imageurl,
                  )),
                  border: Border.all(
                      color: widget.isSelected
                          ? Constants.orangecolor
                          : Constants.greyColor,
                      width: 3)),
            
            ),
            widget.isSelected == true
                ? Positioned(
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Constants.bacgroundcolor,
                      ),
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Constants.orangecolor,
                        ),
                        child: const Icon(
                          Icons.done,
                          color: Constants.whitecolor,
                          size: 30,
                        ),
                      ),
                    ),
                  )
                : Text(""),
            Positioned(
              bottom: 30,
              right: 20,
              child: Text(
                widget.shopName,
                maxLines: 2,
                style: TextStyle(
                    color: widget.isSelected == true
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

class Shopprofile extends StatefulWidget {
  const Shopprofile({super.key});

  @override

  _ShopprofileState createState() => _ShopprofileState();
}

class _ShopprofileState extends State<Shopprofile> {
  List data = [];

  bool comesdata = false;
  init() async {
    var res = await sendGetData('getAllCategories', {});
    // print(res);
    data.add(res['data']);
    if (data.isNotEmpty) {
      setState(() {
        comesdata = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  int currentSelectedIndex = -1;
  void ontab(int index) {
    
    
      setState(() {


      currentSelectedIndex = index;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return comesdata == true
        ? ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data[0].length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomWidget(
                  index: index,
                  isSelected: currentSelectedIndex == index,
                  onSelect: ()=>ontab(index),
                 
                  imageurl: data[0][index]["image"],
                  shopName: data[0][index]["name"],
                ),
              );
            },
          )
        : CircularProgressIndicator();
  }
}
