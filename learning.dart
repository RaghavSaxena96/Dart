import 'dart:math';

enum Day { Mon, Tue, Wed, Thus, Fri, Sat, Sun }

Function multi_by(n1) {
  int inner_func(x) {
    return x * n1;
  }

  return inner_func;
}

bool Function(int) is_even = (int x) => x % 2 == 0;

typedef DoMath(int n1, int n2);

add(int n1, int n2) {
  print("${n1 + n2}");
}

void main() {
  String num = "45";

  int iNum = int.parse(num);

  double dNum = double.parse(num);

  double? tNum = double.tryParse("1.2e");

  //print(tNum);

  var n1 = 5;

  n1++;

  // print(n1);

  var m1 = 34;

  Random r1 = new Random();

  //print(r1.nextInt(20));

  //print(e);

  var age = 2;

  switch (age) {
    case 2:
    case 3:
      break;
    default:
      print("Default");
  }

  var s2 = """
     I am Raghav Saxena
     From Google
     """;

  //print(s2.length);

  var buf = StringBuffer();

  for (var i = 0; i < 10; i++) {
    buf.write("$i");
  }

  //print(buf.toString());

  var l1 = <String>[];

  List<String> l2 = ["B", "A"];

  var l3 = [123, "Raghav"];

  l2.sort((a, b) => a.compareTo(b));

  Random r2 = new Random();

  var l5 = List<int>.generate(5, (int ind) => r2.nextInt(100));

  //print(l5);

  l5.forEach((element) {
    // print(element);
  });

  int y = 1;

  while (y < 10) {
    if (y % 2 == 0) {
      //print(y);
    }
    y++;
  }

  Map<String, int> map = new Map<String, int>();

  var heros = {"Batman": "Wayne", "SuperMan": "Kent"};

  heros["Flash"] = "Allen";

  Day favDay = Day.Sun;

  // print("Values is ${favDay} and index is ${favDay.index}");

  var num1 = "\u{0031}";

  //print(num1);

  String s4 = "Raghav";

  //print(s4.codeUnits);

  //print(multi_by(5)(2));

  // print(is_even(2));

  DoMath math = add;
  math(5, 4);
}

int get_Sum(n1, {n2: 0}) {
  return n1 + n2;
}

int get_Sum3(n1, n2) => n1 + n2;

int get_Sum4(List vals) {
  return vals.reduce((value, element) => (value + element));
}
