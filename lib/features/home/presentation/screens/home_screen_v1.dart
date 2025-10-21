import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/app/assets_path.dart';
import 'package:foodappjava/features/cart/presentation/screens/my_cart.dart';
import 'package:foodappjava/features/home/data/list_of_data.dart';
import 'package:foodappjava/features/search/presentation/screens/search_screen.dart';
import 'package:foodappjava/features/shared/presentation/widgets/food_card.dart';
import 'package:foodappjava/features/shared/presentation/widgets/search_field.dart';
import '../../../shared/presentation/widgets/Profile_Header.dart';
import '../../../shared/presentation/widgets/title_row.dart';
import '../widgets/cart_logo.dart';
import '../widgets/grey_container.dart';

class HomeScreenV1 extends StatefulWidget {
  const HomeScreenV1({super.key});
  static String name = '/home-screen';
  @override
  State<HomeScreenV1> createState() => _HomeScreenV1State();
}

class _HomeScreenV1State extends State<HomeScreenV1> {
  String selectedLocation = 'Kawla,Dhaka';
  int selectedIndex = 0;

  ListOfData data = ListOfData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange.shade300,
              ),
              child: ProfileHeader(),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Column(
                children: [
                  GreyContainer(items: data.drawerItems,),
                  SizedBox(height: 18,),
                  GreyContainer(items: data.drawerItems2),
                  SizedBox(height: 18,),
                  GreyContainer(items: data.drawerItem3),
                  SizedBox(height: 18,),
                  GreyContainer(items: data.drawerItem4),

                ],
              ),
            ),
          ],
        ),
      ),

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
                AssetsPath.menuIcon,
              ),
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
                value: data.selectedOffice,
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.black),
                items: data.officies
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (v) {
                  data.selectedOffice = v!;
                  setState(() {
                  });
                },
              ),
            ),
          ],
        ),
        actions: [
          CartLogo(),
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
                itemCount: data.category.length,
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
                              Text(data.category[index]),
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









