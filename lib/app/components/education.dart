import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width < 900
          ? MediaQuery.of(context).size.width * 0.9
          : MediaQuery.of(context).size.width < 1600
              ? MediaQuery.of(context).size.width * 0.5
              : MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Education',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
              itemCount: 4,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '20 March 2014',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.indigo,
                          ),
                        ),
                        Text(
                          'Passed 10th + $index',
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '10th grade from this particular and with 90% of marks were secured by me',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
