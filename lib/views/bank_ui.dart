// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BankUi extends StatefulWidget {
  const BankUi({ super.key });

  @override
  State<BankUi> createState() => _BankUiState();
}

class _BankUiState extends State<BankUi> {
  @override
  Widget build( BuildContext context ) {
     return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 25.0 
            ),
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  'สายด่วน\nธนาคาร',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.2,
                  ),
                ),
                SizedBox( 
                  height: 20.0 
                ),
                Container(
                  width: 180.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/bank/bank_0.png',
                      fit: BoxFit.cover,
                      errorBuilder: ( context, error, stackTrace ) {
                        return Container(
                          color: Colors.grey[200],
                          child: Icon(
                            Icons.image,
                            size: 60.0,
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0, 
                vertical: 10.0 
              ),
              children: [
                _buildCard( 'ธนาคารกรุงเทพ', '1333', 'assets/images/bank/bank_1.png'),
                _buildCard( 'ธนาคารออมสิน', '1115', 'assets/images/bank/bank_2.png'),
                _buildCard( 'ธนาคารกสิกรไทย', '02 888 8888', 'assets/images/bank/bank_3.png'),
                _buildCard( 'ธนาคารกรุงไทย', '02 111 1111', 'assets/images/bank/bank_4.png'),
                _buildCard( 'ธนาคารกรุงศรีอยุธยา', '1572', 'assets/images/bank/bank_5.png'),
                _buildCard( 'ธนาคารทีทีบี', '1428', 'assets/images/bank/bank_6.png'),
                _buildCard( 'ธนาคารซิตี้แบงก์', '1588', 'assets/images/bank/bank_7.png'),
                _buildCard( 'ธนาคารแลนด์ แอนด์ เฮ้าส์', '1327', 'assets/images/bank/bank_8.png'),
                _buildCard( 'ธนาคารอาคารสงเคราะห์', '02 645 9000', 'assets/images/bank/bank_9.png'),
                _buildCard( 'ธนาคารไทยพาณิชย์', '02 777 7777', 'assets/images/bank/bank_10.png'),
                _buildCard( 'ธนาคารเกียรตินาคินภัทร', '02 165 5555', 'assets/images/bank/bank_11.png'),
                _buildCard( 'ธนาคารไทยเครดิต', '02 697 5454', 'assets/images/bank/bank_12.png'),
                _buildCard( 'ธนาคารยูโอบี', '02 285 1555', 'assets/images/bank/bank_13.png'),
                _buildCard( 'ธนาคารทิสโก้', '02 633 6000', 'assets/images/bank/bank_14.png'),
                _buildCard( 'ธนาคารอิสลามแห่งประเทศไทย', '02 204 2766', 'assets/images/bank/bank_15.png'),
                _buildCard( 'ธนาคารซีไอเอ็มบี ไทย', '02 626 7777', 'assets/images/bank/bank_16.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard( String title, String number, String imagePath ) {
    return Container(
      margin: EdgeInsets.only( 
        bottom: 16.0 
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 18.0 
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8.0,
            offset: Offset(
              0, 
              4
            ),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: Colors.grey[300]!,
                width: 1.0,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: ( context, error, stackTrace ) {
                  return Container(
                    color: Colors.grey[100],
                    child: Icon(
                      Icons.image_outlined,
                      color: Colors.grey[500],
                      size: 30.0,
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            width: 20.0 
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 6.0 
                ),
                Text(
                  number,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.phone_in_talk_outlined,
            color: Colors.grey[700],
            size: 32.0,
          ),
        ],
      ),
    );
  }
}
