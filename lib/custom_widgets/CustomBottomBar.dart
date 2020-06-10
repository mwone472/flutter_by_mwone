import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/twitter_icons_icons.dart';

class CustomBottomBar extends StatelessWidget{
  final BuildContext context;
  final double heightScrenn;
  final double widthScreen;
  final double appBarHeight; //Coeficient que je définit pour calculer la hauteur en fonction de l'ecran
  final double appBarWidth;
  final double appBarIconHeigth;
  final double appBarBorderHeigth; //Hauteur de ma séparation

    CustomBottomBar({
      @required this.context,
      @required this.heightScrenn,
      @required this.widthScreen,
      this.appBarHeight = 0.07,
      this.appBarWidth = 1,
      this.appBarIconHeigth = 0.04,
      this.appBarBorderHeigth = 0.01
    });

    Widget buildTopBorder(){
      return Container(
        height: this.heightScrenn * this.appBarBorderHeigth,
        width: this.widthScreen * this.appBarWidth,
        color: Colors.grey[300],
      );
    }

    Widget buildIconsRow(){
      double rowHeight = this.heightScrenn * this.appBarHeight - this.heightScrenn * this.appBarBorderHeigth;
      double iconSize = this.heightScrenn * this.appBarIconHeigth;
     
      return Container(
        color: Colors.white,
        width: this.widthScreen * this.appBarWidth,
        height: rowHeight,
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Alignement equitable
          crossAxisAlignment: CrossAxisAlignment.start,//Alignement en haut
          children: <Widget>[
            IconButton(
              iconSize: iconSize,
              color: Colors.blue,
              icon: Icon(TwitterIcons.share),
              onPressed: (){
                print('first click');
              },
            ),
            IconButton(
              iconSize: iconSize,
              color: Colors.blue,
              icon: Icon(TwitterIcons.search),
              onPressed: (){
                print('second click');
              },
            ),
            IconButton(
              iconSize: iconSize,
              color: Colors.blue,
              icon: Icon(TwitterIcons.chat),
              onPressed: (){
                print('Third click');
              },
            ),
          ],
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.heightScrenn * this.appBarHeight,
      width: this.widthScreen * this.appBarWidth,
      child: Column(
        children: <Widget>[
          buildTopBorder(),
          buildIconsRow(),
        ],
      ),
    );
  }

}