
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["New Releases", "Editor's choice", "Most popular", "Random picks"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context)
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
              child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: <Widget>[
            Text (categories[index],
          style: Theme.of(context).textTheme.headline5.copyWith(
            color: index == selectedCategory ? Colors.pink : Colors.black.withOpacity(0.4),
            fontWeight: FontWeight.w600,
          ),
          ),
          Container(
            
            margin: EdgeInsets.symmetric(vertical: 6 / 2),
            height: 6,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: index == selectedCategory ? Colors.pink: Colors.transparent,
              
            ),
          )
        ],
        ),
      ),
    );
  }
}