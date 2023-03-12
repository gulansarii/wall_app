// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class CartPage extends StatefulWidget {
//   const CartPage({super.key});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   List<String> myList = [];
//   // String newList = '';

//   // List<int> myOtherList = [];
//   late String temp;

//   @override
//   Widget build(BuildContext context) {
//     var isSearch = true;
//     // var items;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         titleSpacing: 2,

//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: InkWell(
//               onTap: () {
//                 setState(() {
//                   isSearch == !isSearch;
//                 });
//               },
//               child: Icon(isSearch ? Icons.close : Icons.search),
//             ),
//           ),
//         ],
//         // title: isSearch == true ? TextField(
//         //   onSubmitted: (value) {

//         //   },
//         // );

//         iconTheme: IconThemeData(color: Color.fromARGB(255, 104, 104, 104)),
//         backgroundColor: Color.fromARGB(255, 255, 255, 255),
//         elevation: 0,
//       ),
//       drawer: Drawer(
//         backgroundColor: Color.fromARGB(255, 192, 192, 192),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               height: 90,
//               width: MediaQuery.of(context).size.width,
//               child: Text(
//                 'List View',
//                 style: TextStyle(
//                     fontSize: 30, color: Color.fromARGB(255, 134, 134, 134)),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextFormField(
//                 onChanged: (str) {
//                   temp = str;
//                 },
//                 decoration: InputDecoration(
//                     hintText: 'search something',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30))),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   // if (!myList.contains(newList)) {
//                   //   myList.add(newList);
//                   // }

//                   myList.add(temp);
//                 });
//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 height: 40,
//                 width: 100,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Color.fromARGB(255, 44, 171, 255)),
//                 child: Text(
//                   'Search',
//                   style: TextStyle(
//                       fontSize: 18, letterSpacing: 1, color: Colors.white),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   myList.remove(temp);
//                 });
//               },
//               child: Container(
//                 child: Icon(
//                   Icons.delete,
//                   color: Color.fromARGB(255, 253, 253, 253),
//                 ),
//                 height: 30,
//                 width: 50,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Color.fromARGB(255, 44, 171, 255)),
//               ),
//             ),

//             // ListView(
//             //   shrinkWrap: true,
//             //   children: myList.map((element) => Text(element)).toList(),
//             // ),
//             SizedBox(
//               height: 460,
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 itemCount: myList.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     leading: Container(
//                       alignment: Alignment.center,
//                       height: 40,
//                       width: 360,
//                       decoration: BoxDecoration(
//                           color: Color.fromARGB(255, 7, 156, 255),
//                           borderRadius: BorderRadius.circular(
//                             30,
//                           )),
//                       child: Text(
//                         myList[index],
//                         style: TextStyle(fontSize: 20, color: Colors.white),
//                       ),
//                     ),
//                   );
//                   // Padding(
//                   //   padding: const EdgeInsets.all(8.0),
//                   //   child: Container(
//                   //     alignment: Alignment.center,
//                   //     height: 50,
//                   //     width: 200,
//                   //     decoration: BoxDecoration(
//                   //         borderRadius: BorderRadius.circular(30),
//                   //         color: Color.fromARGB(255, 42, 147, 218)),
//                   //   ),
//                   // );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

    // SizedBox(
    //             height: 50,
    //             child: ListView.builder(
    //                 scrollDirection: Axis.horizontal,
    //                 itemCount: country.length,
    //                 itemBuilder: (context, index) {
    //                   return Padding(
    //                     padding: const EdgeInsets.all(6.0),
    //                     child: Container(
    //                       alignment: Alignment.center,
    //                       decoration: BoxDecoration(
    //                           border: Border.all(color: Colors.grey),
    //                           borderRadius: BorderRadius.circular(20)),
    //                       child: Padding(
    //                         padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
    //                         child: Text(
    //                           country[index],
    //                         ),
    //                       ),
    //                     ),
    //                   );
    //                 }),
    //           ),

// appBar: AppBar(
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: InkWell(
//                 onTap: () {
//                   setState(() {
//                     isSearch = !isSearch;
//                   });
//                 },
//                 child: Icon(isSearch ? Icons.close : Icons.search)),
//           )
//         ],

//         //

//         title: isSearch == true
//             ? TextField(
//                 onSubmitted: (v) {
//                   print(searchText.text);
//                 },
//                 controller: searchText,
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Search any item',
//                     hintStyle: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.w400)),
//               )
//             : Container(
//                 alignment: Alignment.center,
//                 width: double.infinity,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: const Text(
//                     'Wallpapers',
                  
//                   ),
//                 )),
//       ),