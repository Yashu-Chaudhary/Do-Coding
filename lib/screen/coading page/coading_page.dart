import 'package:coading_area/screen/coading%20page/widgets/blace_container_for_sample_outputs.dart';
import 'package:coading_area/screen/coading%20page/widgets/heading_text.dart';
import 'package:coading_area/screen/coading%20page/widgets/list.dart';
import 'package:coading_area/util/constants/images.dart';
 
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/java.dart';

class CoadingPage extends StatefulWidget {
   CoadingPage({super.key, required this.dis});
  Map<String, dynamic> dis;

  @override
  State<CoadingPage> createState() => _CoadingPageState();
}

class _CoadingPageState extends State<CoadingPage> {
  List<String> list=[];
  @override
  void initState() {
    
    for (var i = 0; i < 4; i++) {
      list.add(widget.dis['TaskList']?[i]??"");
    }
    super.initState();
  }
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
                PDiscription(text: widget.dis['Problem']??''),
                const SizedBox(height: 12),
                const SizedBox(
                  child: Image(image: AssetImage(PImages.ifelse)),
                ),
                const SizedBox(height: 12),
                const PHeadingText(text: 'Task :'),
                PDiscription(text: widget.dis['Task']??''),
                 PointList(
                  
                  points:  list
                ),
                 PDiscription(
                  text:
                      widget.dis['TaskBelow'],
                ),
                const SizedBox(height: 12),
                const PHeadingText(text: 'Input Format :'),
                 PDiscription(
                    text: widget.dis['InputFormat']??''),
                const SizedBox(height: 12),
                const PHeadingText(text: 'Constraints :'),
                 PDiscription(text: widget.dis['Constraints']??''),
                const SizedBox(height: 12),
                const PHeadingText(text: 'Output Format :'),
               PDiscription(
                    text:
                        widget.dis['OutputFormat']??''),
                const PHeadingText(text: 'Sample Input 0'),
                 PBlackContainer(text: widget.dis['SampleInput0']??''),
                const PHeadingText(text: 'Sample Output 0'),
                 PBlackContainer(text: widget.dis['SampleOutput0']??''),
                const PHeadingText(text: 'Sample Input 1'),
                 PBlackContainer(text: widget.dis['SampleInput1']??''),
                const PHeadingText(text: 'Sample Output 1'),
                 PBlackContainer(text: widget.dis['SampleOutput1']??''),
                const PHeadingText(text: 'Explanation'),
                PDiscription(text: widget.dis['exText0']??''),
               PDiscription(
                    text:
                        widget.dis['exText1']??''),
               PDiscription(text: widget.dis['exText2']??''),
                 PDiscription(
                    text:
                        widget.dis['exText3']??''),
                const SizedBox(height: 500, child: CodeEditor()),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Submit')),
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
