class Task {
  final String taskName;
  final String description;
  final DateTime taskTime;
  final bool isDone;

  Task(
    this.taskName,
    this.description,
    this.taskTime,
    this.isDone,
  );
}

List<Task> listTask = [
  Task(
    '恰饭',
    '补充体力',
    DateTime(2022, 9, 20, 9, 00),
    false,
  ),
  Task(
    '睡觉',
    '补充脑力',
    DateTime(2022, 9, 20, 12, 00),
    false,
  ),
  Task(
    '刷视频',
    '活跃精神世界',
    DateTime(2022, 9, 20, 13, 00),
    false,
  ),
  Task(
    '21天UI打卡',
    '继续学习Flutter',
    DateTime(2022, 9, 20, 15, 30),
    false,
  ),
  Task(
    '完成番茄钟',
    'Flutter技术栈学习',
    DateTime(2022, 9, 20, 17),
    false,
  ),
  Task(
    '杨枝甘露',
    '茶百道必点单品',
    DateTime(2022, 9, 17, 11),
    true,
  ),
  Task(
    '健康上报',
    '企业微信',
    DateTime(2022, 9, 18, 8),
    true,
  ),
];
