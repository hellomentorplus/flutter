import 'dart:io';

void main() {
  List<int> nums = [];
  int? i;
  int? target;

  stdout.writeln("Please input a array one by one : ");
  do {
    i = int.tryParse(stdin.readLineSync() ?? "");
    if (i != null) {
      nums.add(i);
    }
  } while (i != null);

  stdout.writeln("Please input a array one by one : ");
  do {
    stdout.write("Please input a target number : ");
    target = int.tryParse(stdin.readLineSync() ?? "");
  } while (i != null);
  if (twoSum() != null) {
    stdout.writeln(twoSum(num2: nums, target: target));
  } else {
    stdout.write("[]");
  }

  // stdout.writeln(nums);
  // stdout.writeln(target);
}

twoSum({List<int> num2 = const [], int? target}) {
  for (var i = 0; i < num2.length; i++) {
    for (var j = i + 1; j < num2.length; j++) {
      if (num2[i] + num2[j] == target) {
        return {i, j};
      }
    }
  }
  return [];
}
