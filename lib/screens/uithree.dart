// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uidesigns/screens/transactionlistwidget.dart';

class UiThreeWidget extends StatelessWidget {
  const UiThreeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Payments'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline)),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 18, right: 18),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(237, 229, 229, 229)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Transaction limit",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'A free limit up to which you will recieve \nthe online payments directly in your bank',
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: LinearProgressIndicator(
                      minHeight: 8,
                      value: 0.3,
                      backgroundColor: Color.fromARGB(255, 229, 229, 229),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '36,668 left out of ₹50,000',
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167),
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Increase Limit'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
              title: Text(
                'Default Method',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Online Payments',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Icon(Icons.navigate_next_outlined)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListTile(
              title: Text(
                'Payment Profile',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Bank Account',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Icon(Icons.navigate_next_outlined)
                ],
              ),
            ),
          ),
          divideline(),
          ListTile(
            title: Text(
              'Payment Overview',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Life Time',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              amountbox(
                color: Color.fromARGB(240, 238, 118, 31),
                amount: '0',
                title: 'ON HOLD',
              ),
              amountbox(
                color: Color.fromARGB(190, 22, 179, 26),
                amount: '13,332',
                title: 'RECIEVED',
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'Transactions',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              )),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            filterbutton(
                filtertext: 'On hold',
                filtercolor: Color.fromARGB(180, 255, 255, 255)),
            filterbutton(
              filtertext: 'Payouts (15)',
              textcolor: Colors.white,
            ),
            filterbutton(
                filtertext: 'Refunds',
                filtercolor: Color.fromARGB(180, 255, 255, 255)),
          ]),
          TransactionListWidget(),
        ],
      ),
    );
  }
}

Widget amountbox({required color, required title, required amount}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    height: 105,
    width: 180,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'AMOUNT $title',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          Text('₹$amount',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              )),
        ],
      ),
    ),
  );
}

filterbutton({
  required filtertext,
  filtercolor = Colors.blue,
  textcolor = Colors.blueGrey,
}) {
  return ElevatedButton(
    onPressed: () {},
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        filtertext,
        style: TextStyle(
            color: textcolor, fontSize: 16, fontWeight: FontWeight.w400),
      ),
    ),
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(filtercolor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ))),
  );
}

Widget divideline() {
  return Divider(
    thickness: 2,
    indent: 20,
    endIndent: 20,
    color: Color.fromARGB(237, 229, 229, 229),
  );
}
