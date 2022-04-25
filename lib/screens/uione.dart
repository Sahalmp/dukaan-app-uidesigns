// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class UiOneWidget extends StatefulWidget {
  UiOneWidget({Key? key}) : super(key: key);

  @override
  State<UiOneWidget> createState() => _UiOneWidgetState();
}

class _UiOneWidgetState extends State<UiOneWidget> {
  bool onswitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Additional Information'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                const ListTile(
                  title: Text('Share Dukaan App'),
                  leading: Icon(Icons.share_outlined),
                  trailing: Icon(Icons.navigate_next),
                ),
                const ListTile(
                  title: Text('Change Language'),
                  leading: Icon(Icons.language_outlined),
                  trailing: Icon(Icons.navigate_next),
                ),
                ListTile(
                  title: const Text('WhatsApp Chat Support'),
                  leading: const Icon(Icons.whatsapp_rounded),
                  trailing: Switch(
                    onChanged: (value) {
                      setState(() {
                        onswitch = value;
                      });
                    },
                    value: onswitch,
                  ),
                ),
                const ListTile(
                  title: Text('Privacy policy'),
                  leading: Icon(Icons.lock_outline),
                ),
                const ListTile(
                  title: Text('Rate Us'),
                  leading: Icon(Icons.star_border_outlined),
                ),
                const ListTile(
                  title: Text('Sign Out'),
                  leading: Icon(Icons.logout_outlined),
                ),
              ],
            ),
          ),
          Column(
            children: const [
              Text(
                'Version',
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '2.4.2',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 141, 141, 141)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
