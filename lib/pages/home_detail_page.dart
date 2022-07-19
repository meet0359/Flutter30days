
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application/models/catalog.dart';

class HomeDetailpage extends StatelessWidget {
  final Item catalog;

  const HomeDetailpage({
    Key? key,
    required this.catalog,
  // ignore: unnecessary_null_comparison
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar:  Container(
        color:context.cardColor,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.xl4.red800.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              // ignore: deprecated_member_use
                              MaterialStateProperty.all(context.theme.buttonColor),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "Add to cart".text.make()).wh(120, 50)
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
                    color:context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
            catalog.name.text.xl4.color(context.accentColor).bold.make(),
            catalog.desc.text.xl.textStyle(context.captionStyle).make(),
            10.heightBox,
            "nt invidunt sdiam est diam sea amet, voluptua ut no lorem et et et amet, et accusam sed.bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj"
            .text.textStyle(context.captionStyle).make().p16()
                      ]
                    ).py64(),
                  ))),
        ]),
      ),
    );  
  }
}
