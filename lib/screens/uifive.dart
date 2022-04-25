import 'package:flutter/material.dart';

class UiFiveWidget extends StatelessWidget {
  const UiFiveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Order #1688068'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              'May 31,05:42 PM',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.circle,
                  size: 20,
                  color: Colors.blue,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Delivered",
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 2,
            thickness: 1.5,
            indent: 16,
            endIndent: 16,
          ),
          headtile(
              headtext: "1 ITEM",
              headicon: Icons.receipt_outlined,
              headiconlabel: "RECIEPT"),
          ListTile(
            leading: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(100, 158, 158, 158)),
                    borderRadius: BorderRadius.circular(6)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'asset/images/orderimage1.webp',
                  ),
                )),
            title: const Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: Text(
                'Explore | Men | Navy Blue',
                style: TextStyle(fontSize: 20),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: Text('1 piece\n Size: XL'),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(children: [
                      Container(
                        alignment: Alignment.center,
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(34, 3, 168, 244),
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(3)),
                        child: const Text(
                          "1",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2.0, horizontal: 4),
                        child: Text(
                          "x ₹799",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ]),
                    const Text("₹799",
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(thickness: 1.5, height: 10, endIndent: 18, indent: 18),
          const SizedBox(
            height: 30,
            child: ListTile(
              title: Text('Item Total', style: TextStyle(fontSize: 18)),
              trailing: Text('₹799', style: TextStyle(fontSize: 18)),
            ),
          ),
          const SizedBox(
            height: 35,
            child: ListTile(
              title: Text('Delivery', style: TextStyle(fontSize: 18)),
              trailing: Text('FREE',
                  style: TextStyle(fontSize: 18, color: Colors.green)),
            ),
          ),
          const ListTile(
            title: Text('Grand Total',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            trailing: Text('₹799',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          ),
          const Divider(thickness: 1.5, height: 10, endIndent: 18, indent: 18),
          headtile(
              headtext: "CUSTOMER DETAILS",
              headicon: Icons.share_outlined,
              headiconlabel: "SHARE"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Deepa",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text("+91-789000484",
                            style: TextStyle(fontSize: 18, height: 1.5)),
                      ],
                    ),
                    Wrap(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                            margin: const EdgeInsets.only(top: 2),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Icon(
                              Icons.call,
                              color: Colors.blue,
                              size: 20,
                            )),
                      ),
                      const Icon(
                        Icons.whatsapp_outlined,
                        color: Colors.green,
                        size: 34,
                      )
                    ])
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                    "D 1101 Chartered Beverly \nHills,Subramanyapura P.O",
                    style: TextStyle(fontSize: 18, height: 1.5)),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "City",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text("Bangalore",
                              style: TextStyle(fontSize: 18, height: 1.5)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pincode",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text("560061",
                              style: TextStyle(fontSize: 18, height: 1.5)),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Payment",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Online",
                        style: TextStyle(fontSize: 18, height: 1.5)),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(80, 76, 175, 79),
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 3),
                        child: Text(
                          'PAID',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green[700],
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.8),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Divider(thickness: 1.5, height: 10, endIndent: 18, indent: 18),
          const ListTile(
            title: Text(
              "ADDITIONAL INFORMATION",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "State",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Text("Karnataka",
                    style: TextStyle(fontSize: 18, height: 1.5)),
                const SizedBox(height: 20),
                const Text(
                  "Email",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Text("greeniceaqua@gmail.com",
                    style: TextStyle(fontSize: 18, height: 1.5)),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Share receipt",
                            style: TextStyle(color: Colors.blue, fontSize: 19),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            side: const BorderSide(color: Colors.blue),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
//
//
  //METHODS

  ListTile headtile(
      {required headtext, required headicon, required headiconlabel}) {
    return ListTile(
      title: Text(
        headtext,
        style: const TextStyle(
            fontSize: 19, color: Colors.blueGrey, fontWeight: FontWeight.w400),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            headicon,
            size: 25,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              headiconlabel,
              style: const TextStyle(
                  fontSize: 19,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
