import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComfirmTransaction extends StatelessWidget {
  const ComfirmTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff581845),
        title: const Text(
          'COMFIRM TRANSACTION',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 20,
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Image.asset('images/logo2.png')),
        ],
      ),
      backgroundColor: const Color(0xff581845),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              const Text(
                'Please review the selected products and the total amount to confirm the transaction..',
                style: TextStyle(
                  color: Color(0xff545150),
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: const Color(0xff581845)),
                ),
                child: const Center(
                  child: Text(
                    'CLEAR',
                    style: TextStyle(
                        color: Color(0xff581845),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
