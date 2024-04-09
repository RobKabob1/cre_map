import 'package:flutter/material.dart';
import '../widgets/main_app_bar.dart';
import 'map_screen.dart';

class CollectionsScreen extends StatelessWidget {
  const CollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MainAppBar(
          title: "Collections",
        ),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromARGB(198, 218, 218, 218)),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              itemCount: 10, // Number of cards
              itemBuilder: (BuildContext context, int index) {
                return const CollectionCard();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Row(
          children: [
            Icon(Icons.add),
            Text('New Collection'),
          ],
        ),
      ),
    );
  }
}

class CollectionCard extends StatelessWidget {
  const CollectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MapScreen()),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.grey[300],
              child: Image.asset(
                'assets/images/placeholder_building.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ), // Placeholder for image
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Newmark Office Building Search',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          '15 Properties',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          ' - ',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          '4 Favorites',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}
