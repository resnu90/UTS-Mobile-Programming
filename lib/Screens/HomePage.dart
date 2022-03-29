import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_uts/models/Datamodel/PlaceModel.dart';
import 'package:flutter_uts/models/ViewModel/BestOffer.dart';
import 'package:flutter_uts/models/ViewModel/RecentAddedHome.dart';
import 'package:flutter_uts/models/constants.dart';
import 'package:flutter_uts/utils/user_preferences.dart';
import 'package:flutter_uts/models/user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            shrinkWrap: true,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(5, 5),
                          )
                        ],
                      ),
                      child: Icon(
                        CupertinoIcons.rhombus_fill,
                        color: kCustomBlackColor,
                      ),
                    ),
                    Container(

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Text(

                          'Carous',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.4),
                            offset: Offset(-5, 10),
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image(
                          fit: BoxFit.fill,
                          width: 55,
                          image: AssetImage('asset/images/face.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(5, 5),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.8),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: new TextStyle(color: Colors.grey[800]),
                              hintText: "Hi ",
                              fillColor: Color(0xffF3F4F8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              color: Colors.black.withOpacity(0.4),
                              offset: Offset(-5, 10),
                            )
                          ],
                        ),
                        child: Icon(
                          FlutterIcons.sliders_h_faw5s,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recently Added",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  children: [
                    RecentAdded(
                      placeModel: placeCollection[0],
                    ),
                    RecentAdded(
                      placeModel: placeCollection[1],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Best Offer ✨",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      // color: Colors.black54,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              BestOffer(
                placeModel: placeCollection[2],
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}