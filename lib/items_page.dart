import 'package:flutter/material.dart';
import 'package:flutter_application_1/row_item_widget.dart';
import 'package:flutter_application_1/items_cubit.dart';
import 'package:flutter_application_1/items_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Example')),
      body: BlocBuilder<ItemsCubit, ItemsState>(
        builder: (context, state) {
          // MyStackWidget(),
          switch (state) {
            case ItemsLoading():
              return const Center(child: CircularProgressIndicator());
            case ItemsLoaded():
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  return RowItemWidget(data: state.items[index]);
                },
              );
            case ItemsError():
              return const Center(child: Text('Failed to load items'));
          }
        },
      ),
    );
  }
}
