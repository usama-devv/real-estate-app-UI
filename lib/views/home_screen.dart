import 'package:flutter/material.dart';
import 'package:real_estate_app_ui/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Stack(
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

                    const SizedBox(height: 10),
                    ListView.builder(itemBuilder: (context, index){
                      GestureDetector(

                      );
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
