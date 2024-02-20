import 'package:flutter/material.dart';

class InfiniteListState extends StatefulWidget {
  const InfiniteListState({super.key});

  @override
  State<InfiniteListState> createState() => _InfiniteListStateState();
}

class _InfiniteListStateState extends State<InfiniteListState> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Lista infinita'),
    );
  }
}