// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/travel_ui.dart';
import 'package:flutter_thai_hotline_app/views/emg_ui.dart';
import 'package:flutter_thai_hotline_app/views/bank_ui.dart';
import 'package:flutter_thai_hotline_app/views/pub_ui.dart';
import 'package:flutter_thai_hotline_app/views/about_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 
class HomeUI extends StatefulWidget {
  const HomeUI({super.key});
 
  @override
  State<HomeUI> createState() => _HomeUIState();
}
 
class _HomeUIState extends State<HomeUI> {
  // สร้างตัวแปรเก็บหมายเลข index ของ BarItem ที่เลือก
  int selectedIndex = 0;
 
  // สร้างตัวแปรประเภท List เก็บหน้าจอ TravelUI, EmgUI, BankUI, PubUI
  // List เหมือนกับ Array
  List subViewShow = [
    TravelUi(),
    EmgUi(),
    BankUi(),
    PubUi(),
    AboutUi(),
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ส่วนของ AppBar-------------------------------
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline, color: Colors.black),
            onPressed: () {
              // 2. ใส่โค้ด Navigator เพื่อให้เปิดไปหน้า AboutUi เมื่อผู้ใช้กดที่ตัวไอคอน i
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUi(),
                ),
              );
            },
          ),
        ],
        centerTitle: true,
      ),
      // ส่วนของ BottomNavigationBar------------------
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          //***** โค้ดใดที่มีผลต่อการแสดงผลเขียนอยู่ใต้คำสั่ง setState( )
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.travel_explore,
            ),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.emergency,
            ),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.moneyCheckDollar,
            ),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.buildingShield,
            ),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
      // ส่วนของ body---------------------------------
      body: subViewShow[selectedIndex],
    );
  }
}
