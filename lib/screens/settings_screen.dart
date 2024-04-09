import 'package:cre_map/utils/settings_options.dart';
import 'package:flutter/material.dart';

import '../widgets/main_app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var keys = settingsOptions.keys.toList();
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MainAppBar(
          title: "Profile & Settings",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(
                      'assets/images/placeholder_profile.png',
                    ),
                    radius: 40,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Expanded(
                  flex: 4,
                  child: Center(
                    child: Text(
                      "placeholder.email@gmail.com",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(color: Colors.redAccent),
              height: 50,
              child: const Center(
                child: Text("Subscribed"),
              ),
            ),
          ),
          //const Divider(),
          Expanded(
            child: ListView.builder(
              // shrinkWrap: true,
              itemCount: settingsOptions.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 40,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(settingsOptions[keys[index]]),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(keys[index]),
                            Expanded(
                              child: Container(),
                            ),
                            const Icon(Icons.navigate_next),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  " - ",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Terms of Service",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
