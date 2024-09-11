import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app_ui/model/real_estate_model.dart';
import 'package:real_estate_app_ui/utils/colors.dart';
import 'package:real_estate_app_ui/views/property_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    /// Header Parts
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.menu,
                              size: 30,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Current Location",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 15,
                              ),
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Melbourne, Aus",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.tune,
                              size: 30,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),

                    /// For Search Bar
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search for Dream Home",
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            prefixIcon: const Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),

                    /// Banner
                    Stack(
                      children: [
                        Container(
                          width: size.width,
                          height: 110,
                          decoration: BoxDecoration(
                            color: bannerColor1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  children: [
                                    Text(
                                      "GET YOUR 10% \nCASHBACK",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "*Expired 20 Sep 2024",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -10,
                          top: -15,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: bannerColor2,
                          ),
                        ),
                        const Positioned(
                          right: -35,
                          child: Image(
                            image: AssetImage("assets/images/bannerr1.png"),
                            height: 200,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: realEstateModel.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final house = realEstateModel[index];
                        return GestureDetector(
                          onTap: () {
                            Get.to(() => PropertyDetailScreen(house: house));
                          },
                          child: SizedBox(
                            width: size.width,
                            height: 290,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: size.width,
                                      height: 210,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(house.image),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 15,
                                      left: 15,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "\$${house.price}",
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const TextSpan(
                                                text: "/month",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          house.name,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 15,
                                              color: Colors.grey.shade500,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              house.place,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey.shade500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.grey.shade200,
                                          width: 1,
                                        ),
                                      ),
                                      child: Transform.rotate(
                                        angle: -45,
                                        child: const Icon(
                                          Icons.arrow_downward,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -30,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.grey,
                    selectedFontSize: 0,
                    unselectedFontSize: 0,
                    backgroundColor: Colors.black,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: currentIndex,
                    onTap: (value){
                      currentIndex = value;
                    },
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: "",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.favorite),
                        label: "",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: "",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
