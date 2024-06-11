import 'package:carousel_slider/carousel_slider.dart';
import 'package:cre_map/utils/image_list.dart';
import 'package:cre_map/utils/property_info_list.dart';
import 'package:flutter/material.dart';

import '../widgets/main_app_bar.dart';

class PropertyInfoScreen extends StatefulWidget {
  const PropertyInfoScreen({super.key});

  @override
  State<PropertyInfoScreen> createState() => _PropertyInfoScreenState();
}

class _PropertyInfoScreenState extends State<PropertyInfoScreen> {
  //Needed for the Carousel Slider to work correctly
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: MainAppBar(
          title: "Property Info",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imageSliders,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 0, 0),
            child: Text(
              "Specifications",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(18, 10, 20, 0),
                child: Column(
                  children: propertyMap.entries
                      .map((entry) => ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            title: Text(
                              entry.key,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Text(
                              entry.value.toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const  Icon(Icons.favorite),
      ),
    );
  }
}
