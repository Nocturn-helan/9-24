// 类型基础：变量、字符串插值、空安全四件套
void runTypesDemo() {
  print('========== 1. 变量 ==========');
  var name = '小明'; // 类型推断：String
  int age = 20; // 显式声明类型
  final school = '实训大学'; // 运行时常量，只能赋值一次
  const pi = 3.14159; // 编译时常量
  print('$name，$age 岁，就读于 $school，圆周率 = $pi');

  print('========== 2. 字符串插值 ==========');
  int math = 90;
  int english = 85;
  print('数学 $math 分，英语 $english 分，两门总分 ${math + english} 分');

  print('========== 3. 空安全四件套 ==========');
  // (1) ? 可空类型：允许变量为 null
  String? nickname;
  print('未赋值时的昵称: $nickname'); // null
  nickname = '明明';

  // (2) ?? 空合并运算符：为 null 时取默认值
  print('显示名: ${nickname ?? '匿名同学'}');

  // (3) ?. 安全调用：对象为 null 时不报错，整体结果为 null
  String? major;
  print('未选专业，专业名长度: ${major?.length}'); // null

  // (4) ! 强制解包：确信不为 null 时使用，为 null 会抛异常
  major = '软件工程';
  print('已选专业 $major，专业名长度: ${major!.length}');
}
