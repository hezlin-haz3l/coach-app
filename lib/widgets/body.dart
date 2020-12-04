import 'package:fitness_app/constants.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'food.dart';
import 'categories.dart';
//import 'details.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Eat Smart",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        Categories(),
        ItemCart(),
      ],
    );
  }
}

class ItemCart extends StatelessWidget {
  final Food food;
  final Function press;
  const ItemCart({
    Key key,
    this.food,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          //child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: foods[0].color,
            borderRadius: BorderRadiusDirectional.circular(16),
          ),
          child: Image.asset(foods[0].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            // foods is out demo list
            foods[0].title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text ("\RM13",
          style: TextStyle (fontWeight: FontWeight.bold),
        )
        ],
    );
  }
}

// moved to categories.dart
/* class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Breakfast", "Lunch", "Dinner", "Snacks"];
  // By default, 1st item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container (
              margin: EdgeInsets.only (top: kDefaultPaddin / 4), // top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
`        ],
        ),
      ),
    );
  }
}*/ // in categories.dart
