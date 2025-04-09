import 'package:e_commerce/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> products = [
    {
      "imagePath": "Blue-denimArtboard-1_600x600.jpg",
      "name": "Jacket Jeans",
      "price": 45.9,
      "isAdded": true,
      "color": Color(0xff7094C1),
      "size": "L"
    },
    {
      "imagePath": "image2.jpg",
      "name": "Acrylic Sweater",
      "price": 37.9,
      "isAdded": false,
      "color": Color(0xffE1A021),
      "size": "M"
    },
    {
      "imagePath": "image2.jpg",
      "name": "Acrylic Sweater",
      "price": 37.9,
      "isAdded": false,
      "color": Color(0xffE1A021),
      "size": "M"
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
          appBar: AppBar(
            centerTitle: true,
            leadingWidth: 70,
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(Icons.arrow_back_ios)),
              ],
            ),
            backgroundColor: Colors.transparent,
            title: Text("My Cart"),
            actions: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/theary_profile.jpg"),
              ),
              SizedBox(
                width: 15,
              )
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: double.infinity,
                          height: 180,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                    width: 150,
                                    height: 200,
                                    fit: BoxFit.cover,
                                    "assets/images/${products[index]['imagePath']}"),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          spacing: 20,
                                          children: [
                                            Text(
                                              products[index]['name'],
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color(0xff444444),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Icon(
                                              Icons.delete,
                                              color: Color(0xffF68CB5),
                                            )
                                          ],
                                        ),
                                        Text(
                                          "\$${products[index]['price']}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff797979),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: products[index]['color']),
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                          child: Text(
                                            products[index]['size'],
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xff444444)),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 20,
                          ),
                      itemCount: products.length),
                       SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      "Total:",
                      style: TextStyle(
                        color: Color(0xff757575),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    trailing: Text(
                      "\$119.7",
                      style: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Shipping:",
                      style: TextStyle(
                        color: Color(0xff757575),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    trailing: Text(
                      "\$0.0",
                      style: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xffC0C0C0),
                  ),
                  ListTile(
                    title: Text(
                      "Grand Total:",
                      style: TextStyle(
                        color: Color(0xff757575),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    trailing: Text(
                      "\$119.7",
                      style: TextStyle(
                        color: Color(0xff3C3C3C),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.all(15),
            child: CustomButtonWidget(textButton: "Checkout", onPressed: (){})
          )),
    );
  }
}
