// BLACK UNICORN SOURCE MANAGER by Alexander Abraham a.k.a. "The Black Unicorn"
// licensed under the MIT license

import 'package:clibu/files.dart'; // "runCommand()" comes from here.
import 'package:termstyle/colors.dart'; // All ANSI colors come from here.
import 'package:termstyle/emojis.dart'; // All emojis come from here.

/// Updates the BUS tool.
void updateTool(){
  String projectUrl = 'https://github.com/iamtheblackunicorn/bus.git';
  String command = 'git clone $projectUrl';
  String changeDir = 'cd bus';
  String pubGet = 'dart pub get';
  String buildExecutable = 'make';
  String moveExecutable = 'mv -f dist/bus \$(which bus)';
  runCommand(command);
  runCommand(changeDir);
  runCommand(pubGet);
  runCommand(buildExecutable);
  runCommand(moveExecutable);
}

/// Fetches the lastest source code of a current project.
void fetchLatestSource(String branch){
  String baseCommand = 'git pull origin $branch';
  runCommand(baseCommand);
}

/// Returns the root URL of my GitHub.
String rootUrl(){
  return 'https://github.com/iamtheblackunicorn';
}

/// Clones down the source code of the specified project.
void clone(String project) {
  String gitRootUrl = rootUrl();
  String command = 'git clone $gitRootUrl/$project';
  try {
    runCommand(command);
  } catch(e) {
    printColoredString('Fetching $project failed!', 'red');
  }
}

/// Switches to the specified branch of a current repo.
void switchBranch(String branch) {
  String gitBranch = 'git checkout -b ';
  String command = '$gitBranch$branch';
  try {
    runCommand(command);
  } catch(e) {
    printColoredString('Switching to "$branch" failed!', 'red');
  }
}

/// Runs the rule 'make' in a current project.
void build(){
  try {
    String command = 'make';
    runCommand(command);
  } catch(e) {
    printColoredString('Build failed!', 'red');
  }
}

/// Returns the tool's version.
void version(){
  String progName = 'Black Unicorn Source Manager';
  String version = '1.0';
  String unicornHead = getEmoji('unicornHead');
  String message = '$unicornHead $progName $version';
  printColoredString(message, 'magenta');
}

/// Entry point for the Dart VM.
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
  else if (arguments[0] == 'upgrade'){
    printColoredString('$unicornHead $blackHeart Updating tool...', 'magenta');
    updateTool();
  }
  else if (arguments[0] == 'update'){
    String branch = arguments[1];
    printColoredString('$unicornHead $blackHeart Fetching last changes from "$branch"...', 'magenta');
    fetchLatestSource(branch);
  }
  else {
    printColoredString('$angryFace Invalid options supplied!', 'red');
  }
}
