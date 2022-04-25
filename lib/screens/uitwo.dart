import 'package:flutter/material.dart';

class UiTwoWidget extends StatelessWidget {
  const UiTwoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Manage Store'),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 16,
            childAspectRatio: 50 / 32,
          ),
          children: [
            contentsgrid(
              icon: Icons.campaign_outlined,
              contenttitle: "Marketing \nDesigns",
              color: Colors.orange,
            ),
            contentsgrid(
              icon: Icons.currency_rupee_sharp,
              contenttitle: "Online \nPayments",
              color: Colors.green,
            ),
            contentsgrid(
              icon: Icons.discount_rounded,
              contenttitle: "Discount \nCoupons",
              color: const Color.fromARGB(255, 243, 179, 81),
            ),
            contentsgrid(
              icon: Icons.people_outline_outlined,
              contenttitle: "My \nCustomers",
              color: Colors.teal,
            ),
            contentsgrid(
                icon: Icons.qr_code_scanner_outlined,
                contenttitle: "Store QR \nCode",
                color: Colors.grey),
            contentsgrid(
              icon: Icons.attach_money_rounded,
              contenttitle: "Extra \nCharges",
              color: const Color.fromARGB(200, 109, 66, 167),
            ),
            contentsgrid(
              icon: Icons.format_align_left_outlined,
              contenttitle: "Order \nForm",
              color: const Color.fromARGB(200, 192, 91, 135),
              othertext: 'NEW',
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomnavbar(),
    );
  }

  bottomnavbar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 3,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money_outlined),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.layers_outlined),
          label: 'Manage',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Account',
        ),
      ],
    );
  }

  contentsgrid(
      {required icon, required contenttitle, required color, othertext}) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                if (othertext != null)
                  Container(
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(200, 28, 172, 40),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        othertext,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              contenttitle,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
