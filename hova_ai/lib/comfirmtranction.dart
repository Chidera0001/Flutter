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
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
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
                width: 100.w,
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
                        fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff727272).withOpacity(0.1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Amata y’inyange 1L',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13)),
                        Icon(
                          Icons.more_horiz,
                          color: Color(0xff581845),
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('QTY 1 x 1000',
                            style: TextStyle(
                                color: Color(0xff545150), fontSize: 12)),
                        Text('RWF 1000',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    const Divider(color: Colors.white, thickness: 2),
                    SizedBox(height: 10.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Juice',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13)),
                        Icon(
                          Icons.more_horiz,
                          color: Color(0xff581845),
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('QTY 1 x 1000',
                            style: TextStyle(
                                color: Color(0xff545150), fontSize: 12)),
                        Text('RWF 1000',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    const Divider(color: Colors.white, thickness: 2),
                    SizedBox(height: 10.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub-total',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        Text(
                          'RWF 2000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tax(18%)',
                            style:
                                TextStyle(color: Colors.black, fontSize: 13)),
                        Text('RWF 360',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',
                            style: TextStyle(
                                color: Color(0xff581845),
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                        Text('RWF 2000',
                            style: TextStyle(
                                color: Color(0xff581845),
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(width: 2, color: const Color(0xff581845)),
                    ),
                    child: const Center(
                        child: Row(
                      children: [
                        Icon(Icons.add, color: Color(0xff581845), size: 30),
                        Text(
                          'CUSTOMER',
                          style: TextStyle(
                              color: Color(0xff581845),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    height: 50.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(width: 2, color: const Color(0xff581845)),
                    ),
                    child: const Center(
                        child: Row(
                      children: [
                        Icon(Icons.add, color: Color(0xff581845), size: 30),
                        Text(
                          'PAYMENT METHOD',
                          style: TextStyle(
                              color: Color(0xff581845),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff581845),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.verified_rounded, color: Colors.white, size: 30),
                    SizedBox(width: 10),
                    Text(
                      'Confirm Transaction',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
