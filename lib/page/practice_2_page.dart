import 'package:flutter/material.dart';

class Practice2Page extends StatelessWidget {
  Practice2Page({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle getTextStyle(Color colors, double fontSize, bool isFontWeight) {
      return TextStyle(
        color: colors,
        fontSize: fontSize,
        fontWeight: isFontWeight ? FontWeight.bold : FontWeight.normal,
      );
    }

    Widget getPadding(Widget widget, double all) {
      return Padding(padding: EdgeInsets.all(all), child: widget);
    }

    Widget getPaddingfromLTRB(
      Widget w, {
      double l = 0,
      double t = 0,
      double r = 0,
      double b = 0,
    }) {
      return Padding(padding: EdgeInsets.fromLTRB(l, t, r, b), child: w);
    }



    Container getText(String text, LinearGradient linearGradient) {
      return Container(
        margin: EdgeInsets.only(left: 10),
        constraints: BoxConstraints.expand(width: 70, height: 30),
        alignment: Alignment.center,
        child: Text(text, style: getTextStyle(Colors.white, 14, false)),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(6)),
          gradient: linearGradient,
        ),
      );
    }

    Widget rowWidget = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('分類', style: getTextStyle(Colors.blue, 14, true)),
        getText(
          "多線程",
          LinearGradient(
            colors: [Colors.yellow.shade400, Colors.yellow.shade800],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        getText(
          "Java深入",
          LinearGradient(
            colors: [Colors.green.shade400, Colors.green.shade800],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ],
    );

    Widget rowthreeWidget = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            '作者: EnjoyMoving',
            style: getTextStyle(Colors.black38, 14, true),
          ),
        ),
        getPaddingfromLTRB(
          Text("时间:2019-02-02", style: getTextStyle(Colors.black, 14, true)),
          r: 10,
        ),
        getPaddingfromLTRB(Icon(Icons.favorite_border), r: 10),
      ],
    );

    Widget columnWidget = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getPaddingfromLTRB(
          Text(
            'Java synchronized原理总结',
            style: getTextStyle(Colors.black, 16, true),
          ),
        ),
        getPaddingfromLTRB(rowWidget, t: 10),
        getPaddingfromLTRB(rowthreeWidget,t:10),
      ],
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Practice 2')),
      body: Card(
        child: Container(
          height: 160,
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Center(child: columnWidget),
        ),
      ),
    );
  }
}
