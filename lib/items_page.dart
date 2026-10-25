import 'package:flutter/material.dart';
import 'package:flutter_application_1/row_item_widget.dart';
import 'package:flutter_application_1/subject_cubit.dart';
import 'package:flutter_application_1/subject_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Example')),
      body: BlocBuilder<SubjectCubit, SubjectState>(
        builder: (context, state) {
          // MyStackWidget(),
          switch (state) {
            case SubjectLoading():
              return const Center(child: CircularProgressIndicator());
            case SubjectLoaded():
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  return RowItemWidget(data: state.items[index]);
                },
              );
            case SubjectError():
              return const Center(child: Text('Failed to load items'));
          }
        },
      ),
    );
  }
}
