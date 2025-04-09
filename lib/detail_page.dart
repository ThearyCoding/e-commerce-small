import 'package:e_commerce/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Map<String, dynamic> product;
  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> sizes = ["S", "M", "L", "XL"];
  List<Color> colors = [
    Color(0xff91A1B0),
    Color(0xffB11D1D),
    Color(0xff1F44A3),
    Color(0xff9F632A),
    Color(0xff1D752B),
    Color(0xff000000)
  ];
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xffFDF0F3), Color(0xffFFFBFC)])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 450,
                actions: [
                  Icon(Icons.favorite_outline),
                  SizedBox(
                    width: 12,
                  )
                ],
                flexibleSpace: FlexibleSpaceBar(
                    background: Hero(
                  tag: widget.product['name'],
                  child: Image.asset(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: 400,
                      "assets/images/${widget.product['imagePath']}"),
                )),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.product['name'],
                              style: TextStyle(
                                  color: Color(0xff444444),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "\$${widget.product['price']}",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff4D4C4C)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        """CLASSIC DENIM JACKET: This classic denim jacket is a wardrobe essential and the perfect year-round layering piece. This flattering silhouette allows for endless styling options. Layer over a t-shirt or a light-weight sweater.
      DETAILS: Authentic denim jacket details, front shank button closure, chest patch pockets with flap and button closure, flattering and durable double needle seaming, and side seam tabs for adjustable fit. All denim is unique and will vary in color due to wash, finish, and dye.
                        """,
                      ),
                      Text(
                        "Sizes",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff444444),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  width: 40,
                                  height: 40,
                                  child: Text(
                                    sizes[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: index == 1
                                            ? Color(0xffE55B5B)
                                            : Color(0xff444444)),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 10,
                                ),
                            itemCount: sizes.length),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Colors",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff444444),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: colors[index],
                                      shape: BoxShape.circle),
                                  width: 40,
                                  height: 40,
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 10,
                                ),
                            itemCount: colors.length),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: CustomButtonWidget(
                  textButton: "Add to Cart", onPressed: () {})),
        ),
      ),
    );
  }
}
