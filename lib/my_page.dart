import 'package:flutter/material.dart';
import 'items_page.dart';
import 'subject_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubjectCubit()..loadItems(),
      child: const ItemsPage(),
    );
  }
}
