import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/di/injector.dart';
import 'package:flutter_clean_architecture/posts/bloc/posts_bloc.dart';
import 'package:flutter_clean_architecture/posts/view/posts_view.dart';
import 'package:flutter_clean_architecture/splash/splash.dart';
import 'package:go_router/go_router.dart';

/// 화면 전환 Manager
/// Routes 클래스에 String으로 경로 설정
/// Generator에 화면과 Bloc을 할당하여 이동될 수 있도록 초기화
/// Created on 2025-01-06

class Routes {
  static const String splashRoute = "/";
  static const String postsRoute = "/posts";
}

class RouteGenerator {
  static GoRouter getRoute() => GoRouter(
        routes: <RouteBase>[
          GoRoute(
              path: Routes.splashRoute,
              builder: (BuildContext context, GoRouterState state) =>
                  const SplashView(),
              routes: <RouteBase>[
                GoRoute(
                    path: Routes.postsRoute,
                    builder: (BuildContext context, GoRouterState state) =>
                        BlocProvider.value(
                          value: getIt<PostsBloc>(),
                          child: const PostsView(),
                        ))
              ]),
        ],
      );
}
