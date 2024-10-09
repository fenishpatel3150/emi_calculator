import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2e2f3f),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 35.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'EMI Calculator',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.h,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20.h,),
                IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Container(
              height: 150.h,
              width: 300.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffef734d),
                  Color(0xfff16654),
                  Color(0xffeb5756)
                ]),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'EMI MONTHLY PAYMENT',
                    style: TextStyle(color: Colors.white, fontSize: 12.h),
                  ),
                  Text(
                    '₹25000',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.h,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Container(
              height: 60.h,
              width: 300.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.h),
                color: Color(0xff212232),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Total Intrest Payable',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 2.h,
                      ),
                      Text(
                        '1000',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Total Payment',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 22.h,
                      ),
                      Text(
                        '10000',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h, top: 30.h),
            child: Text(
              'Loan amount',
              style: TextStyle(color: Colors.white, fontSize: 15.h),
            ),
          ),
          FlutterSlider(
            values: [5000],
            max: 200000,
            // max should be greater than min
            min: 5000,
            // min should be smaller than max
            tooltip: FlutterSliderTooltip(
              alwaysShowTooltip: true, // Set to true to always show the tooltip
              textStyle: TextStyle(
                fontSize: 25.h,
                color: Colors.black,
              ),
              boxStyle: FlutterSliderTooltipBox(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for the tooltip
                ),
              ),
              format: (String value) {
                return 'Value: $value'; // Customize the format of the hint value
              },
            ),
            trackBar: FlutterSliderTrackBar(
              activeTrackBar: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffef734d),
                  Color(0xfff16654),
                  Color(0xffeb5756)
                ]),
              ),
              inactiveTrackBar: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h, top: 10.h),
            child: Text(
              'Interest %',
              style: TextStyle(color: Colors.white, fontSize: 15.h),
            ),
          ),
          FlutterSlider(
            values: [50],
            // Set a value within the min and max range
            max: 100,
            min: 1,
            tooltip: FlutterSliderTooltip(
              alwaysShowTooltip: true, // Set to true to always show the tooltip
              textStyle: TextStyle(
                fontSize: 25.h,
                color: Colors.black,
              ),
              boxStyle: FlutterSliderTooltipBox(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for the tooltip
                ),
              ),
              format: (String value) {
                return 'Interest: $value %'; // Customize the format of the hint value
              },
            ),
            trackBar: FlutterSliderTrackBar(
              activeTrackBar: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffef734d),
                  Color(0xfff16654),
                  Color(0xffeb5756)
                ]),
              ),
              inactiveTrackBar: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h, top: 20.h),
            child: Text(
              'Loan Tenure',
              style: TextStyle(color: Colors.white, fontSize: 15.h),
            ),
          ),
          FlutterSlider(
            values: [60],
            // Set the value within the min and max range
            max: 120,
            min: 6,
            tooltip: FlutterSliderTooltip(
              alwaysShowTooltip: true, // Set to true to always show the tooltip
              textStyle: TextStyle(
                fontSize: 25.h,
                color: Colors.black,
              ),
              boxStyle: FlutterSliderTooltipBox(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for the tooltip
                ),
              ),
              format: (String value) {
                return 'Month: $value'; // Customize the format of the hint value
              },
            ),
            trackBar: FlutterSliderTrackBar(
              activeTrackBar: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffef734d),
                  Color(0xfff16654),
                  Color(0xffeb5756)
                ]),
              ),
              inactiveTrackBar: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Container(
              height: 50.h,
              width: 300.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffef734d),
                  Color(0xfff16654),
                  Color(0xffeb5756)
                ]),
                borderRadius: BorderRadius.circular(20.h),
              ),
              child: Center(
                  child: Text(
                'Calculate',
                style: TextStyle(color: Colors.white, fontSize: 20.h),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
