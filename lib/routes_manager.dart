import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/inject/configurations.dart';
import 'package:flutter_clean_architecture/posts/bloc/posts_bloc.dart';
import 'package:flutter_clean_architecture/posts/view/posts_view.dart';
import 'package:go_router/go_router.dart';

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
                BlocProvider.value(
              value: getIt<PostsBloc>(),
              child: const PostsView(),
            ),
          ),
        ],
      );
}
