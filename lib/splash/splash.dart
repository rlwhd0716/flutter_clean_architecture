import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/routes_manager.dart';
import 'package:go_router/go_router.dart';

/// Intro 화면
/// 인증, 자동 로그인, 앱 내부 설정 등을 이 화면에서 확인 및 설정
/// MDM, VPN, 앱위변조 등 외부 솔루션도 대부분 여기에서 설정함
/// Created on 2025-01-10
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              context.go(Routes.postsRoute);
            },
            child: Text('게시글 가져오기')),
      ),
    );
  }
}
