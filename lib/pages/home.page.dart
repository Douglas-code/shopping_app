import 'package:Shopping/Widgets/category/category-list.widget.dart';
import 'package:Shopping/Widgets/product/product-list.widget.dart';
import 'package:Shopping/Widgets/search-box.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            SearchBox(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              child: CategoryList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("See All"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              child: ProductList(
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
