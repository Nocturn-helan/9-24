// 函数：命名参数 enroll + 箭头函数

// 命名参数函数：学生报名（required 必填参数 + 带默认值的可选参数）
String enroll({
  required String name,
  required int age,
  String major = '计算机应用',
}) {
  return '报名成功：$name，年龄 $age，专业「$major」';
}

// 箭头函数：计算两门课平均分
double average(int a, int b) => (a + b) / 2;

// 箭头函数：判断是否及格
bool isPassed(int score) => score >= 60;

void runFuncDemo() {
  print('========== 函数：命名参数 + 箭头函数 ==========');
  print(enroll(name: '小红', age: 19)); // major 用默认值
  print(enroll(name: '小刚', age: 21, major: '大数据技术'));
  print('两门课平均分: ${average(88, 94).toStringAsFixed(1)}');
  print('59 分是否及格: ${isPassed(59)}，90 分是否及格: ${isPassed(90)}');
}
