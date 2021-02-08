import 'dart:io';
import 'package:termstyle/colors.dart';
import 'package:termstyle/emojis.dart';

void runCommand(String shellCommand){
  List<String> shellItems = shellCommand.split(' ');
  String initItem = shellItems[0];
  shellItems.removeAt(0);
  Process.run(
    initItem, shellItems).then((result) {
      stdout.write(result.stdout);
      stderr.write(result.stderr);
    }
  );
}

String rootUrl(){
  return 'https://github.com/iamtheblackunicorn';
}

void clone(String project) {
  String gitRootUrl = rootUrl();
  String command = 'git clone $gitRootUrl/$project';
  try {
    runCommand(command);
  } catch(e) {
    printColoredString('Fetching $project failed!', 'red');
  }
}

void switchBranch(String branch) {
  String gitBranch = 'git checkout -b ';
  String command = '$gitBranch$branch';
  try {
    runCommand(command);
  } catch(e) {
    printColoredString('Switching to "$branch" failed!', 'red');
  }
}

void build(){
  try {
    String command = 'make build';
    runCommand(command);
  } catch(e) {
    printColoredString('Build failed!', 'red');
  }
}

void version(){
  String progName = 'Black Unicorn Source Manager';
  String version = '1.0';
  String unicornHead = getEmoji('unicornHead');
  String message = '$unicornHead $progName $version';
  printColoredString(message, 'magenta');
}

void main(List<String> arguments){
  String unicornHead = getEmoji('unicornHead');
  String blackHeart = getEmoji('blackHeart');
  String redHeart = getEmoji('redHeart');
  String angryFace = getEmoji('angryFace');
  if(arguments[0] == '--version'){
    version();
  }
  else if (arguments[0] == 'get'){
    String project = arguments[1];
    printColoredString('$unicornHead $blackHeart Getting $project...', 'magenta');
    clone(project);
  }
  else if (arguments[0] == 'switch'){
    String branch = arguments[1];
    printColoredString('$unicornHead $blackHeart Switching to branch "$branch"...', 'magenta');
    switchBranch(branch);
  }
  else if (arguments[0] == 'build'){
    printColoredString('$redHeart Initiating build...', 'magenta');
    build();
  }
  else {
    printColoredString('$angryFace Invalid options supllied!', 'red');
  }
}
