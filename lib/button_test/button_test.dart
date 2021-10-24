import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ListItem<T> {
  bool isSelected = false; //Selection property to highlight or not
  T data; //Data of the user
  ListItem(this.data); //Constructor to assign the data
}

class OneCardSelectinAnimation extends StatefulWidget {
  @override
  OneCardSelectinAnimationState createState() =>
      OneCardSelectinAnimationState();
}

class OneCardSelectinAnimationState extends State<OneCardSelectinAnimation> {
  late List<ListItem<String>> list;
  @override
  void initState() {
    super.initState();
    populateData();
  }

  void populateData() {
    list = [];
    for (int i = 0; i < 78; i++) list.add(ListItem<String>("item $i"));
  }

  int numberOfSelectedCards = 7;

  int currentSelectedCards = 0;
  bool selectedStyle = false;

  void voidqw(int index) {
    setState(() {
      if (currentSelectedCards < numberOfSelectedCards &&
          !(list[index].isSelected)) {
        setState(() {
          list[index].isSelected = true;
          currentSelectedCards += 1;
        });
      }
    });
  }

  voidminus(int index) {
    if (currentSelectedCards > 0 && list[index].isSelected) {
      setState(() {
        list[index].isSelected = false;

        currentSelectedCards -= 1;
      });
    }
  }

  // whichone(int index) {
  //   setState(() {

  //   voidqw(index) =! voidminus(index) ;
  //   }
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        title: Text("List Selection${numberOfSelectedCards}"),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height * 1,
          child: ListView.separated(
            itemBuilder: _getListItemTile,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: list.length,
          )
          // scrollDirection: Axis.horizontal,
          // itemCount: list.length,
          // itemBuilder: _getListItemTile,
          ),
    );
  }

  Widget _getListItemTile(BuildContext context, int index) {
    final NeumorphicStyle selected = NeumorphicStyle(
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
      depth: 5,
      color: Colors.grey,
    );
    final NeumorphicStyle unselected = NeumorphicStyle(
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
      depth: -2,
      color: Colors.white,
    );

    return GestureDetector(
      onTap: () {
        voidqw(index);
      },
      // onLongPress: () {
      //   if (currentSelectedCards > 0 && list[index].isSelected) {
      //     setState(() {
      //       list[index].isSelected = false;

      //       currentSelectedCards -= 1;
      //     });
      //   }
      // },
      child: Neumorphic(
        style: list[index].isSelected ? selected : unselected,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),

          height: MediaQuery.of(context).size.height * 0.3,
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
          // color: list[index].isSelected ? Colors.red : Colors.black,
          child: Image.asset(
            "assets/b02.png",
          ),
        ),
      ),
    );
  }
}
