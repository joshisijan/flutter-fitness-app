import 'package:fitness_app/custom_pluging/food_card.dart';
import 'package:fitness_app/function/search_deligate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: PageStorageKey('foodpage'),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 120.0,
            pinned: true,
            title: Text(
              'Foods',
              style: TextStyle(
                color: Theme.of(context).textTheme.title.color,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).textTheme.caption.color,
                ),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: FoodSearchDelegate(),
                  );
                },
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: <Widget>[
              FoodCard(
                title: 'Fruit',
                link: 'https://www.snopes.com/tachyon/2018/04/fruits_feature.jpg?resize=865,452',
                click: (){

                },
              ),
              FoodCard(
                title: 'Meat',
                link: 'https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2019/10/redMeat-849360782-770x553-650x428.jpg',
                click: (){

                },
              ),
              FoodCard(
                title: 'Ice Cream',
                link: 'https://thestayathomechef.com/wp-content/uploads/2018/07/Homemade-Ice-Cream-1-small.jpg',
                click: (){

                },
              ),
              FoodCard(
                title: 'Beans',
                link: 'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/320/320192/lots-of-beans-in-a-large-spoon.jpg?w=1155&h=1297',
                click: (){

                },
              ),
              FoodCard(
                title: 'Vegetable',
                link: 'https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/slideshows/powerhouse_vegetables_slideshow/650x350_powerhouse_vegetables_slideshow.jpg',
                click: (){

                },
              ),
              FoodCard(
                title: 'Chocolate',
                link: 'https://economictimes.indiatimes.com/thumb/msid-70545996,width-1200,height-900,resizemode-4,imgsize-679342/chocolate2.jpg?from=mdr',
                click: (){

                },
              ),
              FoodCard(
                title: 'Soup',
                link: 'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/recipe-image-legacy-id-1074500_11.jpg',
                click: (){

                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
