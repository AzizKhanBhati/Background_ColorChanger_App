import 'package:background_color_changer/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  var count = 1.0.obs;

  changeValue(val) => count.value = val;

  var color = Colors.white.obs;

  var currentColorName = "White".obs;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Obx(() {
        return Container(
          height: size.height,
          width: size.width,
          color: color.value,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                title: "Background Color Changer.",
                subTitle: "Current Color : $currentColorName",
                subTitleFontSize: 17,
                titleFontSize: 23,
                subTitleColor:
                    color.value != Colors.white ? Colors.white : Colors.black,
                titleColor:
                    color.value != Colors.white ? Colors.white : Colors.black,
              ),
              SizedBox(
                height: size.height * .35,
              ),
              Center(
                child: Slider(
                  min: 1,
                  max: 10,
                  value: count.value,
                  inactiveColor: color.value != Colors.white
                      ? Colors.white60
                      : Colors.black45,
                  activeColor:
                      color.value != Colors.white ? Colors.white : Colors.black,
                  onChanged: (val) {
                    changeValue(val);
                    changeBackgroundColor();
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  void changeBackgroundColor() {
    switch (count.toInt()) {
      case 1:
        color.value = Colors.white;
        currentColorName.value = "White";
        break;
      case 2:
        color.value = Colors.pink;
        currentColorName.value = "Pink";
        break;
      case 3:
        color.value = Colors.amber;
        currentColorName.value = "Amber";
        break;
      case 4:
        color.value = Colors.orange;
        currentColorName.value = "Orange";
        break;
      case 5:
        color.value = Colors.purple;
        currentColorName.value = "Purple";
        break;
      case 6:
        color.value = Colors.indigo;
        currentColorName.value = "Indigo";
        break;
      case 7:
        color.value = Colors.blue;
        currentColorName.value = "Blue";
        break;
      case 8:
        color.value = Colors.cyan;
        currentColorName.value = "Cyan";
        break;
      case 9:
        color.value = Colors.teal;
        currentColorName.value = "Teal";
        break;
      case 10:
        color.value = Colors.red;
        currentColorName.value = "Red";
        break;
    }
  }
}
