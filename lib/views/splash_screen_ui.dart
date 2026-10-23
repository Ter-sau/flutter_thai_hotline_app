// ignore_for_file: use_build_context_synchronously, unused_element, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          // ใช้ความสูงของพื้นที่ใช้งานจริงแทน MediaQuery ป้องกันหน้าจอแดง
          final screenHeight = constraints.maxHeight;

          return Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Image.asset(
                      'assets/icons/icon.png',
                      width: screenHeight * 0.20,
                      height: screenHeight * 0.20,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: screenHeight * 0.20,
                          height: screenHeight * 0.20,
                          color: const Color(0xFFEEEEEE),
                          child: const Icon(Icons.image_outlined, color: Colors.black54),
                        );
                      },
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      'THAI HOTLINE APP',
                      style: TextStyle(
                        fontSize: screenHeight * 0.045,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'สายด่วน',
                      style: TextStyle(
                        fontSize: screenHeight * 0.025,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
