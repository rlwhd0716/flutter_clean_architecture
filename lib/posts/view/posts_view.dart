import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/posts/bloc/posts_bloc.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  void initState() {
    super.initState();

    context.read<PostsBloc>().add(PostsGetListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      buildWhen: (prev, cur) => prev != cur,
      builder: (context, state) {
        print("state - $state");
        switch (state.status) {
          case PostsStatus.loading:
            return const Center(
                child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 252, 113, 49)));
          case PostsStatus.success:
            return const Text('loading data Success!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
          case PostsStatus.failure:
            return const Text('Error loading data',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
          // default:
          //   return const Text('No data.',
          //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
        }
      },
    );
  }
}
