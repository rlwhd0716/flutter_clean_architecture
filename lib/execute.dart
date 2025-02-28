import 'dart:io';

void main() {
  final currentDir = Directory.current.path;
  final List<String> projectPaths = [
    '$currentDir/packages/data',
    '$currentDir/packages/domain',
    '$currentDir/packages/util',
    currentDir,
  ];

  print("Dart Run MD v1");
  print("1. dart run build 실행");
  print("2. build --delete-conflicting-outputs 실행");
  print("3. watch 모드 실행");
  print("4. flutter pub get 실행");
  print("5. clean 실행");

  stdout.write("원하는 작업 번호를 입력하세요: ");
  final commandChoice = stdin.readLineSync();

  String executable;
  List<String> args;
  switch (commandChoice) {
    case '1':
      executable = 'dart';
      args = ['run', 'build_runner', 'build'];
      break;
    case '2':
      executable = 'dart';
      args = ['run', 'build_runner', 'build', '--delete-conflicting-outputs'];
      break;
    case '3':
      executable = 'dart';
      args = ['run', 'build_runner', 'watch'];
      break;
    case '4':
      executable = 'flutter';
      args = ['pub', 'get'];
      break;
    case '5':
      executable = 'flutter';
      args = ['clean'];
      break;
    default:
      print("유효하지 않은 선택입니다.");
      return;
  }

  for (final projectPath in projectPaths) {
    if (Directory(projectPath).existsSync()) {
      print("\n[$projectPath]에서 명령어 실행 중...");
      _runCommand(projectPath, executable, args);
    } else {
      print("\n[$projectPath] 경로가 존재하지 않습니다. 스킵합니다.");
    }
  }
}

void _runCommand(String path, String executable, List<String> args) async {
  final process = await Process.start(
    executable,
    args,
    workingDirectory: path,
    runInShell: true,
  );

  process.stdout.listen((data) {
    stdout.add(data); // stdout 스트림 처리
  });

  process.stderr.listen((data) {
    stderr.add(data); // stderr 스트림 처리
  });

  final exitCode = await process.exitCode;

  if (exitCode == 0) {
    print("[$path] 명령어 실행 완료: $executable ${args.join(' ')}");
  } else {
    print("[$path] 명령어 실행 중 오류 발생: $exitCode");
  }
}

// dart lib/execute.dart
