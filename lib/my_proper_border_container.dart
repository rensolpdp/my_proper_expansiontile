import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BorderContainer extends StatefulWidget {
  Color? color_;
  late bool visible_;
  final Function onCountChange;
  late double alto;

  List<Text> sub_title;
  BorderContainer({
    Key? key,
    required this.sub_title,
    required this.alto,
    required this.visible_,
    required this.onCountChange,
    required this.color_,
  }) : super(key: key);

  @override
  State<BorderContainer> createState() {
    return BorderContainerState();
  }
}

class BorderContainerState extends State<BorderContainer> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.visible_,
      child: Container(
        height: widget.alto,
        width: double.infinity,
        decoration: BoxDecoration(
            color: widget.color_,
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Container(
          width: 120,
          child:
              /*ListView.builder(
                  itemCount: widget.sub_title.length,
                  itemBuilder: (context, index) {
                    return widget.sub_title[index];
                  }),*/
              ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 150,
                child: Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 15),
                  child: Container(
                    width: 120,
                    child: ListView.builder(
                        itemCount: widget.sub_title.length,
                        itemBuilder: (context, index) {
                          return widget.sub_title[index];
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
