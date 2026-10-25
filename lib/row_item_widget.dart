import 'package:flutter/material.dart';

import 'item_data.dart';

class RowItemWidget extends StatelessWidget {
  const RowItemWidget({super.key, required this._data});

  final ItemData _data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        key: ValueKey(_data.id),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(Icons.star),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_data.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(_data.subtitle),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
