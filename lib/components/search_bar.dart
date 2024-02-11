import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class mySearchBar extends StatelessWidget {
  const mySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary,borderRadius: BorderRadius.circular(12)),
          child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.all(12.0),
                child: Text('Search'),
              ),
              Icon(Icons.search)
            ],
          ),
        ),
      ),
    );
  }
}
