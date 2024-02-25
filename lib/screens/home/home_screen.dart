import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
// import 'package:infinite_carousel/infinite_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController carouselController = ScrollController();
  List<MaterialColor> bgcolors = [Colors.red, Colors.blue, Colors.green];
  Random rnd = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Serenify',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: FlutterCarousel(
          items: [
            Image.asset('assets/images/gifs/community.gif'),
            Image.asset('assets/images/gifs/community.gif'),
            Image.asset('assets/images/gifs/community.gif')
          ].map((e) {
            return Builder(builder: (context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                color: bgcolors[rnd.nextInt(bgcolors.length)],
                child: e,
              );
            });
          }).toList(),
          options: CarouselOptions(
            height: 400.0,
            showIndicator: true,
            slideIndicator: const CircularSlideIndicator(),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
          ),
        ),
      ),
    );
  }
}
