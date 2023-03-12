import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class FullScreen extends StatefulWidget {
  final String imageurl;
  const FullScreen({super.key, required this.imageurl});

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  // Future<void> setwallpaper() async {
  //   int location = WallpaperManager.HOME_SCREEN;
  //   var file = await DefaultCacheManager().getSingleFile(widget.imageurl);
  //   String result =
  //       await WallpaperManager.setWallpaperFromFile(file.path, location);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Container(
              height: 60,
              width: double.infinity,
              child: Image.network(widget.imageurl),
            )),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: double.infinity,
                child: Center(
                    child: Text(
                  'Set Wallpaper',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 73, 73, 73)),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
