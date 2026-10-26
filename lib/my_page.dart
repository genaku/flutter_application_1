import 'package:flutter/material.dart';
import 'package:flutter_application_1/item_repository.dart';
import 'package:flutter_application_1/item_repository_impl.dart';

import 'items_page.dart';
import 'items_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final ItemRepository _itemRepository = ItemRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemsCubit(_itemRepository)..loadItems(),
      child: const ItemsPage(),
    );
  }
}