import 'dart:io';

void main() {
  Map<int, List<String>> frequentWordsPerLine = {};
  Map<String, int> wordFrequency = {};

  int lineNumber = 0;
  String filePath = 'file.txt';
  List<String> fileLines = File(filePath).readAsLinesSync();
  
  for (String line in fileLines) {
    wordFrequency.clear();
    List<String> mostFrequentWords = [];
    int highestCount = 0;
    lineNumber += 1;
    
    List<String> words = line.toLowerCase().split(' ');
    for (String word in words) {
      wordFrequency[word] = (wordFrequency[word] ?? 0) + 1;
      highestCount = wordFrequency[word]! > highestCount ? wordFrequency[word]! : highestCount;
    }
    
    for (var key in wordFrequency.keys) {
      if (wordFrequency[key] == highestCount) {
        mostFrequentWords.add(key);
      }
    }
    
    frequentWordsPerLine[lineNumber] = mostFrequentWords;
  }
  
  for (var key in frequentWordsPerLine.keys) {
    print('Most frequent words: ["${frequentWordsPerLine[key]!.join(", ")}"] (found in line $key)');
  }
}