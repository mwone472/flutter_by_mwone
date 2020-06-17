import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/twitter_icons_icons.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomText.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final double heightScreen;
  final double widthScreen;
  final double appBarHeight;
  final double appBarWidth;
  final double appBarLogoHidth;
  final double appBarIconHeight;

  CustomAppBar(
      {@required this.context,
      @required this.widthScreen,
      @required this.heightScreen,
      this.appBarHeight = 0.071,
      this.appBarWidth = 1,
      this.appBarLogoHidth = 0.038,
      this.appBarIconHeight = 0.038});

  @override
  Widget build(BuildContext context) {
    double logoSize = this.heightScreen * this.appBarLogoHidth;
    double iconSize = this.heightScreen * this.appBarIconHeight;

    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Icon(
        TwitterIcons.twitter,
        size: logoSize,
        color: Colors.blue,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(TwitterIcons.brightness_7),
          iconSize: iconSize,
          color: Colors.blue,
          onPressed: () {
            print('settings');
          },
        ),
      ],
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(80.0),
        child: Image.asset(
            "assets/#1.jpg",
            width: 100,
            height: 100,
          ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size(widthScreen * appBarWidth, heightScreen * appBarHeight);
}
