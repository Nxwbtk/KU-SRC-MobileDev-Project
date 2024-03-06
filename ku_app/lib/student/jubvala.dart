import 'package:flutter/material.dart';

class PaymentChannelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ช่องทางการจ่ายเงิน'),
      ),
      body: ListView(
        children: [
          BankCard(
            bankName: 'ธนาคาร A',
            onTap: () {
              // รายละเอียดเมธอดเมื่อกดธนาคาร A
            },
          ),
          BankCard(
            bankName: 'ธนาคาร B',
            onTap: () {
              // รายละเอียดเมธอดเมื่อกดธนาคาร B
            },
          ),
          BankCard(
            bankName: 'ธนาคาร C',
            onTap: () {
              // รายละเอียดเมธอดเมื่อกดธนาคาร C
            },
          ),
          BankCard(
            bankName: 'ธนาคาร D',
            onTap: () {
              // รายละเอียดเมธอดเมื่อกดธนาคาร D
            },
          ),
          BankCard(
            bankName: 'ธนาคาร E',
            onTap: () {
              // รายละเอียดเมธอดเมื่อกดธนาคาร E
            },
          ),
        ],
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  final String bankName;
  final VoidCallback onTap;

  const BankCard({
    required this.bankName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(10),
        child: ListTile(
          title: Text(bankName),
          leading: Icon(Icons.account_balance),
        ),
      ),
    );
  }
}
