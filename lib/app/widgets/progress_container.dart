import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';

class ProgressContainer extends StatelessWidget {
  final Widget child;
  const ProgressContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 141,
        height: 141,
        decoration: const BoxDecoration(
            color: Color(0xffC6DDF0),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 3),
                blurRadius: 8,
                spreadRadius: 0,
                color: Color(0xffC6DDF0),
              )
            ]),
        // 2n container
        child: Center(
          child: Container(
            width: 115,
            height: 115,
            decoration: const BoxDecoration(
                color: kWhite,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 3),
                    blurRadius: 8,
                    spreadRadius: 0,
                    color: Color(0xffC6DDF0),
                  )
                ]),
            // 3n container
            child: Center(
              child: Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                    color: kWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 3),
                        blurRadius: 8,
                        spreadRadius: 0,
                        color: Color(0xffC6DDF0),
                      )
                    ]),
                child: Center(child: child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
