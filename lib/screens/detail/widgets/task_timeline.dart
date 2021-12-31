// ignore_for_file: use_key_in_widget_constructors, unnecessary_this, must_be_immutable

import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeline extends StatelessWidget {

  bool valuefirst = false;

  final Map<String, dynamic> detail;
  TaskTimeline(this.detail);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          _buildTimeline(detail['tlColor']),
          const SizedBox(width: 5,),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(detail['time']),
              detail['title'].isNotEmpty
                  ? _buildCard(
                      detail['bgColor'], detail['title'], detail['slot'])
                  : _buildCard(Colors.white, '', ''),
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildCard(Color bgColor, String title, String slot) {
    return Container(
      width: 216,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        )
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, 
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 10),
              Text(slot, 
              style: const TextStyle(
                color: Colors.grey
              ),
              )
            ],
          ),  
        ],
      ),
    );
  }

  Widget _buildTimeline(Color color) {
    return SizedBox(
      height: 105,
      width: 20,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
            indicatorXY: 0,
            width: 20,
            indicator: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(width: 5, color: color),
              ),
            )),
        afterLineStyle: LineStyle(thickness: 2, color: color),
      ),
    );
  }
}
