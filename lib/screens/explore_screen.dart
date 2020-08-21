import 'package:airbnb_clone_flutter/resources/places.dart';
import 'package:airbnb_clone_flutter/screens/map_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ExploreScreen extends StatelessWidget {
  List<Places> places = [
    Places(
        title: "Murree",
        subtitle: "\$53/night avg",
        imageUrl: "images/stockimage4.jpg"),
    Places(
        title: "Skardu",
        subtitle: "\$50/night avg",
        imageUrl: "images/stockimage5.jpg"),
    Places(
        title: "Abottabad",
        subtitle: "\$50/night avg",
        imageUrl: "images/stockimage6.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 80,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Title"),
            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //First Container
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      textDirection: TextDirection.ltr,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "images/stockimage2.jpg",
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 1.7,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Markdown(
                              //   data: "Get out and stretch your imagination",
                              //   styleSheet: MarkdownStyleSheet(
                              //     textAlign: WrapAlignment.center,
                              //   ),
                              // ),
                              Text(
                                "Get out and stretch your imagination",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  "Plan a different kind of getaway to uncover the hidden gems near you",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white54),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Material(
                                elevation: 10,
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "Explore Nearby",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //2nd Container with carousel
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 310.0, enableInfiniteScroll: false),
                    items: [1, 2, 3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return carouselSliderContainer(
                            image: "images/stockimage1.jpg",
                            title: "Unique Stays",
                            subtitle: "Places that are more than just to sleep",
                            elevation: 3,
                            color: Colors.white,
                            titleTextColor: Colors.black,
                            subtitleTextColor: Colors.black,
                            widthOfImage: 1,
                            heightOfImage: 3.5,
                          );
                        },
                      );
                    }).toList(),
                  ),
                  //3rd container with black background and carousel also
                  Container(
                    color: Colors.black87,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "BroadWay Online Experiences",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Text(
                                "Join live, interactive performances, and conversations with people from Broadway and beyond. Without leaving home",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 355.0,
                            enableInfiniteScroll: false,
                          ),
                          items: [1, 2, 3].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return carouselSliderContainer(
                                  image: "images/stockimage3.jpg",
                                  title:
                                      "Day in the life of a Las Vegas Dancer",
                                  titleTextColor: Colors.white,
                                  elevation: 2,
                                  color: Colors.black26,
                                  heightOfImage: 2.7,
                                  widthOfImage: 0.3,
                                );
                              },
                            );
                          }).toList(),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text('Explore All',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              )),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //4th Container with ListTiles
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Next Escape",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CarouselSlider(
                          items: [1, 2, 3].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Expanded(
                                  child: ListView.builder(
                                    itemCount: places.length,
                                    itemBuilder: (context, index) {
                                      return Expanded(
                                        child: ListTileCarousel(
                                          image: places[index].imageUrl,
                                          title: places[index].title,
                                          subtitle: places[index].subtitle,
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 250.0,
                            enableInfiniteScroll: false,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Next Escape",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CarouselSlider(
                          items: [1, 2, 3].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Expanded(
                                  child: ListView.builder(
                                    itemCount: places.length,
                                    itemBuilder: (context, index) {
                                      return Expanded(
                                        child: ListTileCarousel(
                                          image: places[index].imageUrl,
                                          title: places[index].title,
                                          subtitle: places[index].subtitle,
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 250.0,
                            enableInfiniteScroll: false,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

class ListTileCarousel extends StatelessWidget {
  final String image;
  final String title, subtitle;

  const ListTileCarousel({Key key, this.image, this.title, this.subtitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
    );
  }
}

class carouselSliderContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double elevation;
  final Color color, titleTextColor, subtitleTextColor;
  final double heightOfImage;
  final double widthOfImage;

  const carouselSliderContainer(
      {Key key,
      this.image,
      this.title,
      this.subtitle,
      this.elevation,
      this.color,
      this.titleTextColor,
      this.subtitleTextColor,
      this.heightOfImage,
      this.widthOfImage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Material(
          color: color,
          elevation: elevation,
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.grey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  image,
                  width: MediaQuery.of(context).size.width / widthOfImage,
                  height: MediaQuery.of(context).size.height / heightOfImage,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: titleTextColor,
                            fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: subtitle != null && subtitleTextColor != null
                          ? Text(
                              subtitle,
                              style: TextStyle(
                                fontSize: 13,
                                color: subtitleTextColor,
                              ),
                            )
                          : Container(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
