import 'package:flutter/material.dart';

import '../widgets/main_app_bar.dart';

class PropertyInfoScreen extends StatelessWidget {
  const PropertyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: MainAppBar(
          title: "Property Info",
        ),
      ),
    );
  }
}
