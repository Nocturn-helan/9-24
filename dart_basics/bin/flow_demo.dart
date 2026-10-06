// 流程控制：gradeOf 分级器 + for-in 循环

// 分级器：根据百分制分数返回等级
String gradeOf(int score) {
  if (score >= 90) {
    return '优秀';
  } else if (score >= 80) {
    return '良好';
  } else if (score >= 70) {
    return '中等';
  } else if (score >= 60) {
    return '及格';
  } else {
    return '不及格';
  }
}

void runFlowDemo() {
  print('========== 流程控制：gradeOf 分级器 + for-in ==========');
  final scores = [95, 82, 70, 61, 45];
  for (final score in scores) {
    print('分数 $score → 等级：${gradeOf(score)}');
  }
}
