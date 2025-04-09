import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Map<String, dynamic>> settingItems = [
    {
      "title": "Edit Profile",
      "icon": Icon(Icons.edit),
    },
    {
      "title": "Order History",
      "icon": Icon(Icons.delivery_dining),
    },
    {
      "title": "Shipping Details",
      "icon": Icon(Icons.location_pin),
    },
    {
      "title": "All Coupons",
      "icon": Icon(Icons.money),
    },
    {
      "title": "Change Password",
      "icon": Icon(Icons.lock),
    },
    {
      "title": "Logout",
      "icon": Icon(Icons.logout),
    }
  ];
  List<String> langues = ["English", "Khmer"];
  String? selectedlangues = "Khmer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings",
            style: TextStyle(color: Color(0xffEB415B)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.notifications),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Color(0xffEFEFEF)),
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Color(0xff0A8973), width: 3),
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/theary_profile.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chorn Theary",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text("chorntheary12@gmail.com",
                          style: TextStyle(color: Color(0xffADADAD)))
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              // title: GestureDetector(
              //   onTap: () {
              //     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //     //   content: Text("English is changed."),
              //     //   action: SnackBarAction(label: "Undo", onPressed: () {}),
              //     // ));
              //   },
              //   child: DropdownButton(
              //     icon: Icon(Icons.keyboard_arrow_down),
              //     value: selectedlangues,
              //     onChanged: (value) {
              //       setState(() {
              //         selectedlangues = value;
              //       });
              //     },
              //     items: langues
              //         .map((item) =>
              //             DropdownMenuItem(value: item, child: Text(item)))
              //         .toList(),

              //   ),
              // ),
              title: GestureDetector(
                onTap: () {
                  
                  // showBottomSheet(
                    
                  //   context: context, builder: (context){
                  //   return Container(
                  //     width: double.infinity,
                  //     height: MediaQuery.of(context).size.height * 0.5,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10)
                  //     ),
                  //   );
                  // });
                  showDialog(context: context, builder: (context){
                    return Dialog(
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Change language"),
                            ElevatedButton(onPressed: (){}, child: Text("Submit"))
                          ],
                        ),
                      ),
                    );
                  });
                },
                child: Row(
                  children: [
                    Text(
                      "English",
                      style: TextStyle(fontSize: 16, color: Color(0xffADADAD)),
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Dark Mode",
                    style: TextStyle(fontSize: 16, color: Color(0xffADADAD)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CupertinoSwitch(value: false, onChanged: (value) {})
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(color: Color(0xffEFEFEF)),
                      child: ListTile(
                        leading: settingItems[index]['icon'],
                        title: Text(settingItems[index]['title']),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                      ),
                  itemCount: settingItems.length),
            )
          ],
        ));
  }
}
