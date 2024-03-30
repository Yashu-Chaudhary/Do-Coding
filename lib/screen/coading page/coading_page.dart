import 'package:coading_area/screen/coading%20page/widgets/blace_container_for_sample_outputs.dart';
import 'package:coading_area/screen/coading%20page/widgets/heading_text.dart';
import 'package:coading_area/screen/coading%20page/widgets/list.dart';
import 'package:coading_area/util/constants/images.dart';
import 'package:coading_area/util/constants/string_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:highlight/languages/java.dart';

class CoadingPage extends StatelessWidget {
  const CoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Practice',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PHeadingText(text: 'Problem :'),
                const PDiscription(text: PTexts.problem),
                const SizedBox(height: 12),
                const SizedBox(
                  child: Image(image: AssetImage(PImages.ifelse)),
                ),
                const SizedBox(height: 12),
                const PHeadingText(text: 'Task :'),
                const PDiscription(text: PTexts.given),
                const PointList(
                  points: [
                    'If n is odd, print Weird',
                    'If n is even and in the inclusive range of 2 to 5, print Not Weird',
                    'If n is even and in the inclusive range of 6 to 20, print Weird',
                    'If n is even and greater than 20, print Not Weird'
                  ],
                ),
                const PDiscription(
                  text:
                      'Complete the stub code provided in your editor to print whether or not  is weird.',
                ),
                const SizedBox(height: 12),
                const PHeadingText(text: 'Input Format :'),
                const PDiscription(
                    text: 'A single line containing a positive integer,n.'),
                const SizedBox(height: 12),
                const PHeadingText(text: 'Constraints :'),
                const PDiscription(text: '1<=n<=100'),
                const SizedBox(height: 12),
                const PHeadingText(text: 'Output Format :'),
                const PDiscription(
                    text:
                        'Print Weird if the number is weird; otherwise, print Not Weird.'),
                const PHeadingText(text: 'Sample Input 0'),
                const PBlackContainer(text: '3'),
                const PHeadingText(text: 'Sample Output 0'),
                const PBlackContainer(text: 'Weird'),
                const PHeadingText(text: 'Sample Input 1'),
                const PBlackContainer(text: '24'),
                const PHeadingText(text: 'Sample Output 1'),
                const PBlackContainer(text: 'Not Weird'),
                const PHeadingText(text: 'Explanation'),
                const PDiscription(text: 'Sample Case 0: n = 3'),
                const PDiscription(
                    text:
                        'n is odd and odd numbers are weird, so we print Weird.'),
                const PDiscription(text: 'Sample Case 1: n = 24'),
                const PDiscription(
                    text:
                        "n > 20 and n is even, so it isn't weird. Thus, we print Not Weird."),
                const SizedBox(height: 500, child: CodeEditor()),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text('Submit')),
                    const SizedBox(width: 12),
                    ElevatedButton(onPressed: () {}, child: const Text('Run'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final controller = CodeController(
  text: '...', // Initial code
  language: java,
);

class CodeEditor extends StatelessWidget {
  const CodeEditor({super.key});

  @override
  Widget build(BuildContext context) {
    return CodeField(
      controller: controller,
    );
  }
}



class PDiscription extends StatelessWidget {
  const PDiscription({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey, fontSize: 18),
    );
  }
}

