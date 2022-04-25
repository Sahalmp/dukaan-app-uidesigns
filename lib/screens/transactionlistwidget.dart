import 'package:flutter/material.dart';
import 'package:uidesigns/screens/list.dart';
import 'package:uidesigns/screens/uithree.dart';

class TransactionListWidget extends StatelessWidget {
  const TransactionListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (ctx, index) {
        final data = transactionlist[index];

        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 207, 224, 233),
                            width: 0.5),
                        borderRadius: BorderRadius.circular(6)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset("${data['prdtimg']}"))),
                title: Text('Order #${data['Orderid']}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18)),
                subtitle: Text(' ${data['date']}'),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        '₹${data['amount']}',
                        style: const TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 14,
                          ),
                        ),
                        Text(
                          'Successful',
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 8),
                child: Text(
                  '₹${data['amount']} deposited to 56800000008',
                  style: const TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.grey),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return divideline();
      },
      itemCount: transactionlist.length,
    );
  }
}
