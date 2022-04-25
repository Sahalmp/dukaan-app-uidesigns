import 'package:flutter/material.dart';
import 'package:uidesigns/screens/list.dart';
import 'package:uidesigns/screens/statelesswidget.dart';

class UiSixWidget extends StatelessWidget {
  UiSixWidget({Key? key}) : super(key: key);

  bool onswitch = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xfff5f5f5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Catalogue'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Categories',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
              itemBuilder: ((ctx, index) {
                final data = productlist[index];

                return Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 193, 216, 228),
                                        width: 0.7),
                                    borderRadius: BorderRadius.circular(6)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.asset("${data['pimg']}"),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: ListTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "${data['pname']}",
                                      maxLines: 1,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Icon(Icons.more_vert),
                                  )
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('1 piece'),
                                  Text(
                                    "\n₹${data['pamount']}",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                      height: 0.9,
                                    ),
                                  ),
                                  SwitchfunctionWidget(onswitch: onswitch)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                        ),
                        label: const Text(
                          "Share Product",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shadowColor: Colors.white,
                            elevation: 0),
                      )
                    ],
                  ),
                );
              }),
              itemCount: productlist.length),
        ),
      ),
    );
  }
}
