// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class GoPremium extends StatelessWidget {
  const GoPremium({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  shape: BoxShape.circle
                ),
                child: const Icon(Icons.star, color: Colors.white, size: 20,),
              ),
              const SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Go Premium',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 10,),
                  Text('Get unlimited access\nto all the features!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),)
                ],
              )
          ],),
        ),
        Positioned(
          bottom: 15,
          right: 15,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(15)
            ),
            child: const Icon(Icons.arrow_forward, color: Colors.white,),
          ),
        )
      ],
    );
  }
}