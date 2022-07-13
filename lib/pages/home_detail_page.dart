import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application/models/catalog.dart';

class HomeDetailpage extends StatelessWidget {
  final Item catalog;

  const HomeDetailpage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyThemes.creamcolor,
      bottomNavigationBar:  Container(
        color: Colors.white,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.xl4.red800.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(MyThemes.darkbluish),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "Buy".text.make()).wh(100, 40)
                ],
              ).p32(),
      ), 
      body: SafeArea(
        bottom: false,
        
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h32(context),
          Expanded(
              child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
            catalog.name.text.xl4.color(MyThemes.darkbluish).bold.make(),
            catalog.desc.text.xl.textStyle(context.captionStyle).make(),
            10.heightBox,
                      ]
                    ).py64(),
                  ))),
        ]),
      ),
    );
  }
}
