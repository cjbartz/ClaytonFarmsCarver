import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../design_elements/nav-drawer.dart';
import '../objects/produce.dart';

Produce lettuce = Produce("Lettuce", "assets/images/lettuce.png", 7.50);
Produce superlettuce =
    Produce("Super Lettuce", "assets/images/lettuce.png", 8.50);
List<Widget> WeeklyList = [lettuce.getDisplay(), lettuce.getDisplay()];
List<Widget> BiWeeklyList = [lettuce.getDisplay()];
List<Widget> MonthlyList = [];

class MySubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DragTarget<Produce>(
        builder: (context, data, rejectedDate) {
          return SubscriptionRow("Weekly Subscription", WeeklyList);
        },
        onAccept: (data) {
          WeeklyList.add(data.getDisplay());
          print("Accepted");
        },
      ),
      DragTarget<Produce>(
        builder: (context, data, rejectedDate) {
          return SubscriptionRow("BiWeekly Subscription", BiWeeklyList);
        },
        onAccept: (data) {
          BiWeeklyList.add(data.getDisplay());
          print("Accepted");
        },
      ),
      DraggableRow()
    ]);
    // return Column(
    //   children: [
    //     SubscriptionRow("Weekly Subscription", WeeklyList),
    //     SubscriptionRow("Bi-Weekly Subscription", BiWeeklyList),
    //     DraggableRow()
    //   ],
    // );
  }
}

class SubscriptionRow extends StatelessWidget {
  String subtype = "";
  List<Widget> items = [];
  SubscriptionRow(String subtype, List<Widget> items) {
    this.subtype = subtype;
    this.items = items;
  }

  //Produce lettuce = Produce("Lettuce", "assets/images/lettuce.png", 7.50);
  @override
  Widget build(BuildContext context) {
    // items.add( ElevatedButton(
    //   child: Text('Edit'),
    //   onPressed: () {
    //     print('Hello');
    //   },
    // ));
    return Column(children: [
      Text(
        subtype,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
      Row(
        children: items,
      ),
    ]);
  }
}

class DraggableRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: const EdgeInsets.all(10.0)),
        Text("Products: ",
            style: TextStyle(
              fontSize: 20,
            )),
        Padding(padding: const EdgeInsets.all(10.0)),
        LongPressDraggable<Produce>(
          data: lettuce,
          dragAnchorStrategy: pointerDragAnchorStrategy,
          feedback: lettuce.getImage(),
          child: lettuce.getDisplay(),
        ),
        LongPressDraggable<Produce>(
          data: superlettuce,
          dragAnchorStrategy: pointerDragAnchorStrategy,
          feedback: superlettuce.getImage(),
          child: superlettuce.getDisplay(),
        )
      ],
    );
  }
}

class MySubPageWrapped extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        toolbarHeight: 65,
        title: Image(
            image: new ExactAssetImage("assets/images/logo.png"),
            height: 56.0 * 2.9,
            width: 40.0 * 2.9,
            alignment: FractionalOffset.center),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: MySubPage(),
      ),
    );
  }
}
