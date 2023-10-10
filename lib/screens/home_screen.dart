import 'package:flutter/material.dart';
import '../data/paragraph.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About me'),
      ),
      body: const Bio(),
    );
  }
}

class Bio extends StatefulWidget {
  const Bio({super.key});

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
  bool visible = false;
  String p = par;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/profile1.png',
              ),
              radius: 150,
            ),
            ElevatedButton(
                onPressed: () => setState(() {
                      if (visible) {
                        visible = false;
                      } else {
                        visible = true;
                      }
                    }),
                child: const Text('VIEW MY BIO')),
            Visibility(
              visible: visible,
              child: Text(
                p,
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
