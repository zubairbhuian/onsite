import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
// import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final String? description;
  final List<Widget>? children;
  const CustomExpansionTile(
      {super.key,
      required this.title,
       this.description,
       this.children});

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpended = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        dividerColor: Colors.transparent,
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: kWhite,
            boxShadow: [kCardShadow],
            borderRadius: BorderRadius.circular(8)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: ExpansionTile(
            trailing:
              widget.children!=null? null:  isExpended ? const Icon(Icons.remove) : const Icon(Icons.add),
            expandedAlignment: Alignment.topLeft,
            childrenPadding:
                const EdgeInsets.only(left: 15, bottom: 15, right: 15),
            title: Text(
              widget.title,
              style: kTitleSmall
                  .copyWith(color: isExpended ? kPrimaryColor : kTextColor),
            ),
            children:widget.children??[
              Text(
                widget.description??'',
                style: kBodyLarge,
              ),
            ],
            onExpansionChanged: (value) {
              setState(() {
                isExpended = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
