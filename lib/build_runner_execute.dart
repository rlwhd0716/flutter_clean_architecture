import 'dart:io';

void main() {
  final currentDir = Directory.current.path;
  final List<String> projectPaths = [
    '$currentDir/packages/data',
    '$currentDir/packages/domain',
    currentDir,
  ];

  print("Build Runner 실행 프로그램 winitech_md_sb v1");
  print("1. 기본 build 실행");
  print("2. --delete-conflicting-outputs 추가");
  print("3. clean 실행");
  print("4. watch 모드 실행");

  stdout.write("원하는 작업 번호를 입력하세요: ");
  final commandChoice = stdin.readLineSync();

  List<String> args;
  switch (commandChoice) {
    case '1':
      args = ['build'];
      break;
    case '2':
      args = ['build', '--delete-conflicting-outputs'];
      break;
    case '3':
      args = ['clean'];
      break;
    case '4':
      args = ['watch'];
      break;
    default:
      print("유효하지 않은 선택입니다.");
      return;
  }

  for (final projectPath in projectPaths) {
    if (Directory(projectPath).existsSync()) {
      print("\n[$projectPath]에서 명령어 실행 중...");
      _runCommand(projectPath, args);
    } else {
      print("\n[$projectPath] 경로가 존재하지 않습니다. 스킵합니다.");
    }
  }
}

void _runCommand(String path, List<String> args) async {
  final process = await Process.start(
    'dart',
    ['run', 'build_runner', ...args],
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
    print("[$path] 명령어 실행 완료: dart run build_runner ${args.join(' ')}");
  } else {
    print("[$path] 명령어 실행 중 오류 발생: $exitCode");
  }
}

// dart lib/build_runner_execute.dart
