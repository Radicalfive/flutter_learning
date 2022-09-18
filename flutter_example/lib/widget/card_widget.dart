import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../list/list_task.dart';

final Color color1 = Color(0xff8d70fe);
final Color color2 = Color(0xff2da9ef);

final titleStyle = TextStyle(
  fontSize: 22,
  color: Colors.grey.shade700,
  fontWeight: FontWeight.bold,
);

final subTitleStyle = TextStyle(
  color: color2,
  fontSize: 16,
);

final TextStyle notDoneStyle = const TextStyle(
  color: Colors.black45,
  fontSize: 16,
);

final TextStyle doneStyle = const TextStyle(
  color: Colors.green,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

class CardWidget extends StatelessWidget {
  final Task task;
  const CardWidget({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: color2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        minLeadingWidth: 2,
        leading: Container(width: 2, color: color2),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(task.taskName, style: titleStyle),
        ),
        subtitle: Text(task.description, style: subTitleStyle),
        trailing: task.isDone
            ? Text('Done', style: doneStyle)
            : Text(DateFormat('hh:mm a').format(task.taskTime),
            style: notDoneStyle),
      ),
    );
  }
}