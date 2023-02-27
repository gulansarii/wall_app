import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 15, 22),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color.fromARGB(255, 180, 177, 177),
            child: Icon(Icons.add),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'HOME',
            style: TextStyle(color: Color.fromARGB(255, 156, 156, 156)),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 250,
                crossAxisCount: 2,
              ),
              itemCount: 1000,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Container(
                    child: Text('class'),
                    alignment: Alignment.center,
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepPurple),
                  ),
                );
                ;
              },
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