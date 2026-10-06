// 类型基础：变量、字符串插值、空安全四件套

// (2) ?? 空合并运算符：左侧为 null 时取右侧默认值
String displayName(String? nickname) => nickname ?? '匿名同学';

// (3) ?. 安全调用：接收者为 null 时整体结果为 null，不抛异常
int? lengthOrNull(String? text) => text?.length;

// (4) ! 强制解包：确信非 null 时使用，若为 null 会在运行时抛异常
int forceLength(String? text) => text!.length;

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
  print('赋值后的昵称: $nickname');

  // ?? 演示：分别传入 null 与非空值
  print('昵称为 null 时的显示名: ${displayName(null)}'); // 匿名同学
  print('昵称非空时的显示名: ${displayName(nickname)}'); // 明明

  // ?. 演示：major 先 null 后赋值
  String? major;
  print('未选专业，专业名长度: ${lengthOrNull(major)}'); // null
  major = '软件工程';
  print('已选专业 $major，专业名长度: ${lengthOrNull(major)}'); // 4

  // ! 演示：确信 major 已赋值，强制解包取长度
  print('强制解包「$major」的长度: ${forceLength(major)}'); // 4
}
