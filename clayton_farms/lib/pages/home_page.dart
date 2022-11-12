

import 'package:flutter/material.dart';

import '../design_elements/nav-drawer.dart';
import '../objects/produce.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    List<Produce> ProduceList = [
      new Produce("Lettuce", "assets/images/lettuce.png", 7.50),
      new Produce("Lettuce", "assets/images/lettuce.png", 7.50),
      new Produce("Lettuce", "assets/images/lettuce.png", 7.50),
      new Produce("Lettuce", "assets/images/lettuce.png", 7.50),
      new Produce("Lettuce", "assets/images/lettuce.png", 7.50),
      new Produce("Lettuce", "assets/images/lettuce.png", 7.50),
      new Produce("Lettuce", "assets/images/lettuce.png", 7.50),
      new Produce("Lettuce", "assets/images/lettuce.png", 7.50),
      new Produce("Lettuce", "assets/images/lettuce.png", 7.50)
    ];

    List<Row> ListOfRows = [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ProduceList[0].getDisplay(),
        ProduceList[1].getDisplay(),
        ProduceList[2].getDisplay(),
      ],),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ProduceList[3].getDisplay(),
        ProduceList[4].getDisplay(),
        ProduceList[5].getDisplay(),
      ],),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ProduceList[6].getDisplay(),
        ProduceList[7].getDisplay(),
        ProduceList[8].getDisplay(),
      ],),

    ];

    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: ExactAssetImage("images/homepagedisplay.png")),
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  "What We're Growing",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(40.0),
                child: ListOfRows[0],
              ),
              Padding(
                padding: EdgeInsets.all(40.0),
                child: ListOfRows[1],
              ),
              Padding(
                padding: EdgeInsets.all(40.0),
                child: ListOfRows[2],
              ),
              Padding(
                padding: EdgeInsets.all(40.0),
                child: Image(image: ExactAssetImage("images/deliveryprocess.png")),
              ),
            ],

          )
      )
    );

    // return SingleChildScrollView(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Image(image: ExactAssetImage("images/homepagedisplay.png")),
    //       Text(
    //         "What We're Growing",
    //         style: TextStyle(
    //             fontSize: 25,
    //         ),
    //       ),
    //       ListOfRows[0],
    //       ListOfRows[1],
    //       ListOfRows[2],
    //       Image(image: ExactAssetImage("images/deliveryprocess.png")),
    //     ],
    //
    //   )
    // );

    // return Center(
    //   child: Column(
    //     children: [
    //       Image(image: ExactAssetImage("images/homepagedisplay.png")),
    //       Text("What We're Growing"),
    //       ListOfRows[0],
    //       ListOfRows[1],
    //       ListOfRows[2],
    //     ],
    //
    //   )
    // );
  }


}
final logosize = 2.9;
class HomePageWrapped extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        toolbarHeight: 65,
        title: Image(
            image: new ExactAssetImage("assets/images/logo.png"),
            height: 56.0 * logosize,
            width: 40.0 * logosize,
            alignment: FractionalOffset.center),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: HomePage(),
      ),
    );
  }

}
