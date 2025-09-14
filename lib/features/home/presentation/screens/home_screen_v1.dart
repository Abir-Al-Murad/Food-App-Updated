import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappjava/features/home/presentation/screens/search_screen.dart';
import 'package:foodappjava/features/shared/presentation/widgets/food_card.dart';
import 'package:foodappjava/features/shared/presentation/widgets/search_field.dart';
import '../../../shared/presentation/widgets/title_row.dart';

class HomeScreenV1 extends StatefulWidget {
  const HomeScreenV1({super.key});
  static String name = '/home-screen';
  @override
  State<HomeScreenV1> createState() => _HomeScreenV1State();
}

class _HomeScreenV1State extends State<HomeScreenV1> {
  String selectedLocation = 'Kawla,Dhaka';
  int selectedIndex = 0;

  List<String> category = ['All', 'Hot Dog', 'Burger','Pizza','Coffee'];
  List<String> officies = ['Halal Lab Office', 'Haram Lab Office'];
  String selectedOffice = 'Halal Lab Office';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 90,
        titleSpacing: 0,
        toolbarHeight: 80,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: SvgPicture.asset(
                "assets/images/Menu.svg",
                height: 45,
                width: 45,
              ),
              iconSize: 45,
            );
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "DELIVER TO",
              style: TextStyle(
                color: Color(0xffFC6E2A),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton(
                isDense: true,
                value: selectedOffice,
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.black),
                items: officies
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (v) {
                  selectedOffice = v!;
                  setState(() {
                  });
                },
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/images/Cart.svg",

              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Hey Halal, ", style: TextStyle(fontSize: 16)),
                  Text(
                    "Good Afternoon!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SearchField(hintText: "Search dishes,restaurants",onTap: (){
                Navigator.pushNamed(context, SearchScreen.name);
              },),
              const SizedBox(height: 30),
              titleRow(title: "All Categories", onTap: () {}),
              const SizedBox(height: 20),
              SizedBox(
                height: 70,
                child: buildCategoryRoundedCard(),
              ),
              const SizedBox(height: 20),
              titleRow(title: "Open Restaurants", onTap: () {}),
              const SizedBox(height: 18),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return FoodCard(title: "Rose Garden Restaurant",subTitle: "Buger-Chiken-Riche-Wings",rating: '4.7',deliveryFee: 'Free',duration: '20 min',);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryRoundedCard() {
    return ListView.builder(
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(minWidth: 120),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(39),
                          color: selectedIndex == index
                              ? Color(0xffFFD27C)
                              : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xff98A8B8),
                                radius: 30,
                              ),
                              const SizedBox(width: 8),
                              Text(category[index]),
                              SizedBox(width: 10,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
  }
}





