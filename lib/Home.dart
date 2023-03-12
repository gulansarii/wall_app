import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_0/Login.dart';
import 'package:flutter_application_0/controllers/homeController.dart';
import 'package:flutter_application_0/fullScreen.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Get.put(HomeController());
  List images = [];
  Future<void> _refresh() async {
    // Refresh your data here
    await Future.delayed(Duration(seconds: 1));
    setState(() {});
  }

  @override
  void initState() {
    homeController.fetchApi('1'); // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            homeController.isDark == true ? Colors.black : Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 90,
                child: Text(
                  'PEXELS',
                  style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  homeController.isDark = !homeController.isDark;
                  setState(() {});
                },
                child: Container(
                  child: Icon(
                    homeController.isDark ? Icons.dark_mode : Icons.light_mode,
                    color: Color.fromARGB(255, 112, 112, 112),
                  ),
                  height: 20,
                  width: 40,
                ),
              )
            ],
          ),
          elevation: 0,
          backgroundColor: homeController.isDark ? Colors.black : Colors.white,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 116, 116, 116)),
        ),
        drawer: Drawer(
          backgroundColor: homeController.isDark ? Colors.black : Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                      ),
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/13767091/pexels-photo-13767091.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                        fit: BoxFit.cover),
                  ),
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 7, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.login,
                          color: homeController.isDark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: homeController.isDark
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 7, 0, 0),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.account_box_outlined,
                        color:
                            homeController.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'About Us',
                        style: TextStyle(
                            color: homeController.isDark
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 7, 0, 0),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.rate_review_outlined,
                        color:
                            homeController.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Rate Us',
                        style: TextStyle(
                            color: homeController.isDark
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 7, 0, 0),
                child: InkWell(
                  onTap: () {
                    exit(0);
                  },
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.exit_to_app,
                          color: homeController.isDark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Exit',
                          style: TextStyle(
                              color: homeController.isDark
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: GNav(
              haptic: true,
              gap: 8,
              padding: EdgeInsets.all(15),
              // backgroundColor: Colors.transparent,
              tabBackgroundColor: Colors.grey,
              tabs: [
                GButton(
                  iconColor: Colors.amber,
                  iconActiveColor: Colors.amber,
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  iconColor: Colors.red,
                  iconActiveColor: Colors.red,
                  icon: Icons.favorite_border,
                  text: 'Likes',
                ),
                GButton(
                  iconColor: Colors.blueAccent,
                  iconActiveColor: Colors.blueAccent,
                  icon: Icons.search,
                  text: 'search',
                ),
                GButton(
                  iconColor: Color.fromARGB(255, 139, 139, 139),
                  icon: Icons.settings,
                  text: 'settings',
                )
              ]),
        ),
        body: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: RefreshIndicator(
              onRefresh: _refresh,
              child: Obx(
                () => GridView.builder(
                  controller: homeController.scrollController,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 250,
                    crossAxisCount: 2,
                  ),
                  itemCount: homeController.images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullScreen(
                                      imageurl: homeController.images
                                          .value[index]['src']['large2x'],
                                    )));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.network(
                          homeController.images[index]['src']['medium'],
                          fit: BoxFit.cover,
                        ),
                        height: 250,
                        width: 180,
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        }));
  }
}

// SizedBox(
//         height: double.infinity,
//         width: double.infinity,
//         child: Builder(builder: (context) {
//           return GridView.builder(
//               gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                   maxCrossAxisExtent: 200,
//                   childAspectRatio: 1.2 / 2.1,
//                   crossAxisSpacing: 0,
//                   mainAxisSpacing: 0),
//               itemCount: url.length,
//               itemBuilder: (context, index) {
//                 return InkWell(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => ImagePage(url[index])));
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       alignment: Alignment.center,
//                       child: Text(
//                         name[index],
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       height: 250,
//                       width: 200,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: NetworkImage(url[index].toString()),
//                               fit: BoxFit.cover),
//                           color: Colors.green.shade100,
//                           borderRadius: BorderRadius.circular(12)),
//                     ),
//                   ),
//                 );
//               });
//         }),
//       ),


//  bottomNavigationBar: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//         child: const GNav(
//             gap: 8,
//             padding: EdgeInsets.all(11),
//             // backgroundColor: Color.fromARGB(255, 58, 58, 58),
//             tabBackgroundColor: Colors.grey,
//             tabs: [
//               GButton(
//                 icon: Icons.home,
//                 text: 'Home',
//               ),
//               GButton(
//                 icon: Icons.favorite_border,
//                 text: 'Likes',
//               ),
//               GButton(
//                 icon: Icons.search,
//                 text: 'search',
//               ),
//               GButton(
//                 icon: Icons.settings,
//                 text: 'settings',
//               )
//             ]),
//       ),
// drawer: Drawer(
//         semanticLabel: 'Rate US',
//         backgroundColor: Color.fromARGB(255, 255, 253, 253),
//         child: Column(children: [
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8, left: 0, top: 10),
//             child: Container(
//               decoration: const BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                         blurRadius: 5,
//                         offset: Offset(3, 5),
//                         color: Colors.black26)
//                   ],
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                       image: NetworkImage(
//                           'https://images.pexels.com/photos/1280162/pexels-photo-1280162.jpeg?auto=compress&cs=tinysrgb&w=300'),
//                       fit: BoxFit.cover)),
//               width: 200,
//               height: 200,
//             ),
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const LoginPage()));
//             },
//             child: const Padding(
//               padding: EdgeInsets.only(bottom: 8, left: 20),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: Text('Login'),
//               ),
//             ),
//           ),
//           const Divider(),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8, left: 20),
//             child: Container(
//               child: Text('About Us'),
//               width: double.infinity,
//             ),
//           ),
//           Divider(),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8, left: 20),
//             child: Container(
//               child: Text('Rate US'),
//               width: double.infinity,
//             ),
//           ),
//           Divider(),
//           InkWell(
//             onTap: () {
//               exit(0);
//             },
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 8, left: 20),
//               child: Container(
//                 child: Text('Exit'),
//                 width: double.infinity,
//               ),
//             ),
//           ),
//           Divider()
//         ]),
//       ),