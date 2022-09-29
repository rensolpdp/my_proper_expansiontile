import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_proper_border_container.dart';

class MyProperExpansionTile extends StatefulWidget {
  Color color;
  String title;
  List<Text> sub_title;
  MyProperExpansionTile({
    Key? key,
    required this.title,
    required this.sub_title,
    required this.color,
  }) : super(key: key);
  @override
  State<MyProperExpansionTile> createState() {
    return MyProperExpansionTileState();
  }
}

class MyProperExpansionTileState extends State<MyProperExpansionTile> {
  bool visible_expansion = false;
  double tamanio_nontap = 60;
  double tamanio_current = 60;
  double tamanio_ontap = 200;

  double tamanio_ancho = double.infinity;
  Color color_non_visible = Colors.transparent;
  late Color Ancestor_Color = widget.color;

  IconData? down_icon = Icons.arrow_drop_down;
  IconData? left_icon = Icons.arrow_left;
  IconData? up_icon = Icons.arrow_drop_up;
  IconData? current_icon = Icons.arrow_drop_down;

  Alignment current_position = Alignment.topLeft;
  Alignment nontap_position = Alignment.centerLeft;
  Alignment ontap_position = Alignment.topLeft;
  Cambiar_Container() {
    if (visible_expansion == false) {
      visible_expansion = !visible_expansion;
      Ancestor_Color = widget.color;
      widget.color = color_non_visible;
      tamanio_current = tamanio_ontap;
      current_icon = left_icon;
      current_icon = up_icon;
      current_position = ontap_position;
    } else {
      visible_expansion = !visible_expansion;
      widget.color = Ancestor_Color;
      tamanio_current = tamanio_nontap;
      current_icon = left_icon;
      current_icon = down_icon;
      current_position = nontap_position;
    }
  }

  MiSubTitle() {
    return widget.sub_title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: current_position,
        child: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: tamanio_current,
              width: tamanio_ancho,
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              child: Stack(children: [
                BorderContainer(
                  alto: tamanio_ontap,
                  visible_: visible_expansion,
                  color_: this.Ancestor_Color,
                  sub_title: widget.sub_title,
                  onCountChange: (double altura) =>
                      setState((() => Cambiar_Container())),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(
                          widget.title,
                          style: TextStyle(color: Colors.black, fontSize: 35),
                        )),
                  ),
                )
              ]),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  icon: Icon(
                    this.current_icon,
                    size: 40,
                  ),
                  onPressed: () => setState((() => Cambiar_Container()))),
            ),
          ],
        ),
      ),
    );

    /*GestureDetector(
      onTap: () => setState((() => Cambiar_Container())),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: tamanio_current,
        width: tamanio_ancho,
        color: widget.color,
        child: BorderContainer(
          alto: tamanio_ontap,
          visible_: visible_expansion,
          color_: this.Ancestor_Color,
          onCountChange: (double altura) =>
              setState((() => Cambiar_Container())),
        ),
      ),
    );*/
  }
}
