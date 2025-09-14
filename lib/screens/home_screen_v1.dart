import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenV1 extends StatefulWidget {
  const HomeScreenV1({super.key});

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
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF6F6F6),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: "Search dishes,restaurants",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 12,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              titleRow(title: "All Categories", onTap: () {}),
              const SizedBox(height: 20),
              SizedBox(
                height: 70,
                child: ListView.builder(
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
                ),
              ),
              const SizedBox(height: 20),
              titleRow(title: "Open Restaurants", onTap: () {}),
              const SizedBox(height: 18),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0xff98A8B8),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Rose Garden Restaurant",
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Buger-Chiken-Riche-Wings",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA0A5BA),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SvgPicture.asset("assets/images/star.svg"),
                                  Text(" 4.7"),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/delivery.svg",
                                  ),
                                  Text(" Free"),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              child: Row(
                                children: [
                                  SvgPicture.asset("assets/images/clock.svg"),
                                  Text(" 20 min"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class titleRow extends StatelessWidget {
  const titleRow({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        Container(
          child: Row(
            children: [
              Text("See All ", style: TextStyle(fontSize: 15)),
              Icon(Icons.arrow_forward_ios_rounded, size: 20),
            ],
          ),
        ),
      ],
    );
  }
}
