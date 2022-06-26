import 'dart:math';

class PrintLaser {
  void print_laser() {}
}

class PrintInkjet {
  void print_inkJet() {}
}

class Print implements PrintLaser, PrintInkjet {
  @override
  void print_inkJet() {
    // TODO: implement print_inkJet
  }

  @override
  void print_laser() {
    // TODO: implement print_laser
  }
}

void checkAge(int a) {
  if (a < 1) {
    throw FormatException("Age less than 1");
  }
}

void main() {
  Set set1 = new Set();

  set1.add(13);
  set1.add(14);

  Set set2 = new Set.from([1, 2, 3]);

  var num = 1;

  try {
    print("Zero Divide ${num / 0}");
  } catch (e) {
    print(e);
  }

  try {
    int a1 = 0;
    checkAge(a1);
  } catch (e) {
    print(e);
  }
}