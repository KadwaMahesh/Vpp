import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:vpp/views/stockType.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/progressBar.dart';

class PicUpDate extends StatefulWidget {
  const PicUpDate({super.key});

  @override
  State<PicUpDate> createState() => _PicUpDateState();
}

class _PicUpDateState extends State<PicUpDate> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final config = CalendarDatePicker2Config(
      calendarType: CalendarDatePicker2Type.single,
      firstDate: DateTime(1990, 1, 1),
      lastDate: DateTime(2100, 12, 31),
      currentDate: DateTime.now(),
      selectedDayHighlightColor: AppColor.buttonColor,
      weekdayLabels: const ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
      weekdayLabelTextStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF3C3C43).withOpacity(0.3),
      ),
      controlsTextStyle: AppTextStyle.heading1,
      dayTextStyle: AppTextStyle.heading1,
      selectedDayTextStyle: AppTextStyle.heading1.copyWith(
        color: AppColor.buttonText,
      ),
      daySplashColor: Colors.transparent,
    );

    return Scaffold(
      backgroundColor: AppColor.pagebackground,
      body: Container(
        color: AppColor.pagebackground,
        child: SafeArea(
          child: Column(
            children: [
              PreferredSize(
                preferredSize: const Size.fromHeight(120),
                child: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: AppColor.pagebackground,
                  elevation: 0,
                  flexibleSpace: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 2,
                        top: 18,
                        right: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 24,
                              color: AppColor.buttonColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Date of pick up',
                              style: AppTextStyle.textHeading,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      LinearProgressBar(value: 0.2),
                      SizedBox(height: 16),
                      Text(
                        'Pick up will occur before 4pm on the day selected',
                        style: AppTextStyle.heading1,
                      ),
                      const SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.pagebackground,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColor.border, width: 1),
                        ),
                        child: CalendarDatePicker2(
                          config: config,
                          value: [selectedDate],
                          onValueChanged: (dates) {
                            if (dates.isNotEmpty && dates.first != null) {
                              setState(() {
                                selectedDate = dates.first!;
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CustomButton(
                      buttonText: 'Next',
                      onPressed: () {
                        Get.to(() => const StockType());
                      },
                      backgroundColor: AppColor.buttonColor,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
