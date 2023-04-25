import 'package:crypto_events/main.dart';
import 'package:flutter/material.dart';

class CreatorsCard extends StatelessWidget {
  const CreatorsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage(
              'lib/images/girla.jpeg',
            )),
            title: const Text(
              'Adel Wishing',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Concept ART',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
            ),
            trailing: OutlinedButton(
              onPressed: () {},
              clipBehavior: Clip.antiAlias,
              child: Text('Follow',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kColorScheme.primaryContainer)),
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
