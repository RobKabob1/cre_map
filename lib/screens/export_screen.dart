import 'package:flutter/material.dart';
import '../widgets/main_app_bar.dart';

class ExportScreen extends StatelessWidget {
  const ExportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: MainAppBar(
          title: "Export Screen",
        ),
      ),
    );
  }
}
