// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Tasks', 
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Text('Timeline',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold
                ),),
                const Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }
}