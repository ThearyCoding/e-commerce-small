import 'package:e_commerce/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = ["Trending Now", "All", "New"];

  List<Map<String, dynamic>> products = [
    {
      "imagePath": "Blue-denimArtboard-1_600x600.jpg",
      "name": "Jacket Jeans",
      "price": 45.9,
      "isAdded": true,
    },
    {
      "imagePath": "image2.jpg",
      "name": "Acrylic Sweater",
      "price": 37.9,
      "isAdded": false,
    },
        {
      "imagePath": "team_member_7.jpg",
      "name": "Jacket Women",
      "price": 45.9,
      "isAdded": true,
    },
            {
      "imagePath": "retrato-do-estilo-de-vida-de-mulher-usando-vestido-elegante-glamour-e-oculos-de-sol-vintage-tons-quentes-em-tons-humor-positivo_291049-756.jpg",
      "name": "Acrylic Sweater Gril",
      "price": 45.9,
      "isAdded": true,
    },
          {
      "imagePath": "images.jpg",
      "name": "Jacket Boy",
      "price": 45.9,
      "isAdded": true,
    },
          {
      "imagePath": "images.jpg",
      "name": "Jacket game",
      "price": 45.9,
      "isAdded": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xffFDF0F3), Color(0xffFFFBFC)])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: Container(
              margin: EdgeInsets.only(left: 15),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Image.asset('assets/images/apps.png'),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/theary_profile.jpg"),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Match Your Style",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Color(0xffB6B6B6)),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffC0C0C0),
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Chip(
                              padding: EdgeInsets.all(15),
                              side: BorderSide.none,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              backgroundColor: index == 0
                                  ? Color(0xffE96E6E)
                                  : Color(0xffDFDCDC),
                              label: Text(
                                categories[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: index == 0
                                        ? Colors.white
                                        : Color(0xff938F8F)),
                              ));
                        }),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MasonryGridView.builder(
                      itemCount: products.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //     crossAxisCount: 2,
                      //     crossAxisSpacing: 10,
                      //     mainAxisSpacing: 10,
                      //     childAspectRatio: 0.6),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onDoubleTap: () {
                            print("doubled tap");
                          },
                          onLongPress: () {
                            print("onLongPress");
                          },
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => DetailPage(
                              product: products[index],
                            )));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Hero(
                                    tag: products[index]['name'],
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          fit: BoxFit.cover,
                                          width: 200,
                                          "assets/images/${products[index]['imagePath']}"),
                                    ),
                                  ),
                                  Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                          child: Icon(
                                            products[index]['isAdded'] == true
                                                ? Icons.favorite_rounded
                                                : Icons.favorite_outline,
                                            color: Color(0xffE55B5B),
                                          )))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      products[index]['name'],
                                      style: TextStyle(
                                          color: Color(0xff444444),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$${products[index]['price']}",
                                      style: TextStyle(
                                          color: Color(0xff9C9C9C),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      })
                ],
              ),
            ),
          )),
    );
  }
}
