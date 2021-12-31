// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskmanagement/models/task.dart';
import 'package:taskmanagement/screens/detail/widgets/date_picker.dart';
import 'package:taskmanagement/screens/detail/widgets/task_title.dart';

import 'widgets/task_timeline.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  const DetailPage(this.task);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.black,
        systemNavigationBarColor: Colors.black));

    final detailList = task.desc;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: CustomScrollView(
            slivers: [
              _buildAppBar(context),
              SliverToBoxAdapter(
                  child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [DatePicker(), TaskTitle()],
                ),
              )),
              detailList == null ? 
              SliverFillRemaining(
                child: Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'No task today',
                      style: TextStyle(color: Colors.grey, fontSize: 18)))),
              ) :
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, index) => TaskTimeline(detailList[index]),
                  childCount: detailList.length
                ),
              )
            ],
          )),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Colors.black,
      leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 20),
      actions: const [
        Icon(
          Icons.more_vert,
          size: 26,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${task.title} tasks',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'You have ${task.left} tasks for today',
              style: TextStyle(fontSize: 10.6, color: Colors.grey[600]),
            )
          ],
        ),
      ),
    );
  }
}
