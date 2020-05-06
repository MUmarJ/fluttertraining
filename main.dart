import 'package:fluttertraining/fluttertraining.dart' as fluttertraining;
import 'dart:math';
import 'dart:mirrors';

dynamic getTypeName(dynamic obj) {
  return reflect(obj).type.reflectedType.toString();
}

void main() async {
  const fileName = 'example.txt';
  final contents = await fluttertraining.readFile(fileName);
  // print(contents);

  //-Letter counting and casting to List<int> so dart:math.max() can run on it.
  final letterCountMap = fluttertraining.countLetters(contents);
  // List<int> letterCountList = letterCountMap.values.cast<int>().toList();

  //-Debug code for getting type
  // var typeName = getTypeName(letterCountList);
  // print(typeName);

  // print(letterCountList);
  // var maxLetterCount = letterCountList.reduce(max);

  var maxLetterCount = 0;
  var greatestLetter;
  letterCountMap.forEach((letter, count) {
    if (count > maxLetterCount && letter != ' ') {
      maxLetterCount = count;
      greatestLetter = letter;
    }
  });
  print(
      'The most occuring letter is $greatestLetter appearing $maxLetterCount times');
}
