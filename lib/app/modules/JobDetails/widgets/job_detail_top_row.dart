import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class JobDetailTopRow extends StatelessWidget {
  final String title;
  final String btnText;
  final Function()? onPressed;
  const JobDetailTopRow({
    Key? key,
    required this.title,
    required this.btnText, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        )),
        Expanded(
            child: Container(
                height: 25,
                alignment: Alignment.centerRight,
                child: PrimaryBtn(
                  textColor: kPrimaryColor,
                  color: const Color(0xffE5F2FF),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  onPressed: onPressed,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 12),
                  child: Text(btnText),
                )))
      ],
    );
  }
}
