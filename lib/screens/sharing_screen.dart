import 'package:flutter/material.dart';
import '../widgets/main_app_bar.dart';

class SharingScreen extends StatelessWidget {
  const SharingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: MainAppBar(
          title: "Sharing Screen",
        ),
      ),
    );
  }
}
