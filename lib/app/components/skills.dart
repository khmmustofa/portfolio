import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            'My Skills',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width < 900
              ? MediaQuery.of(context).size.width * 0.9
              : ((MediaQuery.of(context).size.width * 0.7) / 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.all(28.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Programming Languages',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text('Dart'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('PHP'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width < 900
              ? MediaQuery.of(context).size.width * 0.9
              : ((MediaQuery.of(context).size.width * 0.7) / 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.all(28.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Frameworks',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text('Flutter'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Laravel'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width < 900
              ? MediaQuery.of(context).size.width * 0.9
              : ((MediaQuery.of(context).size.width * 0.7) / 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.all(28.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Other Tools',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text('Flutter'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Laravel'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
