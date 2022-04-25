// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:uidesigns/screens/uithree.dart';

class FaqExpansionTile extends StatefulWidget {
  FaqExpansionTile({
    Key? key,
    required this.faqtitle,
    this.faqtext = " ",
    this.customTileExpanded = false,
  }) : super(key: key);
  final faqtitle;
  var faqtext;
  bool customTileExpanded;
  @override
  State<FaqExpansionTile> createState() => _FaqExpansionTileState();
}

class _FaqExpansionTileState extends State<FaqExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: widget.customTileExpanded,
            title: Text(
              widget.faqtitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Icon(
              widget.customTileExpanded ? Icons.remove : Icons.add,
              color: Colors.black,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  widget.faqtext,
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                ),
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => widget.customTileExpanded = expanded);
            },
          ),
        ),
        divideline()
      ],
    );
  }
}

class SwitchfunctionWidget extends StatefulWidget {
  bool onswitch;
  SwitchfunctionWidget({Key? key, required this.onswitch}) : super(key: key);

  @override
  State<SwitchfunctionWidget> createState() => _SwitchfunctionWidgetState();
}

class _SwitchfunctionWidgetState extends State<SwitchfunctionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.onswitch ? "In stock" : "Out of stock",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: widget.onswitch ? Colors.green : Colors.red,
                fontSize: 15),
          ),
          Switch(
            onChanged: (value) {
              setState(() {
                widget.onswitch = value;
              });
            },
            value: widget.onswitch,
          ),
        ],
      ),
    ));
  }
}
