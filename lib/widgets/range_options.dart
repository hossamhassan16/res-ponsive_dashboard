import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            "Monthly",
            style: AppStyle.styleMedium16,
          ),
          SizedBox(
            width: 18,
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Color(0xff064060),
          ),
        ],
      ),
    );
  }
}
