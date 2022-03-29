import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uts/models/Datamodel/CarModel.dart';
import 'package:flutter_uts/models/ViewModel/BestOfferCar.dart';
import 'package:flutter_uts/models/ViewModel/FreshCar.dart';
import 'package:flutter_uts/models/constants.dart';




class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            shrinkWrap: true,
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
                Text(
                  "Fresh Car",
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
                FreshCar(
                  carModel: carCollection[0],
                ),
                FreshCar(
                  carModel: carCollection[1],
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
                "Best Offer Car Available ✨",
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
          BestOfferCar(
            carModel: carCollection[2],
          ),
          SizedBox(height: 60),
            ],
          )
        )
      ),
    );
  }
}