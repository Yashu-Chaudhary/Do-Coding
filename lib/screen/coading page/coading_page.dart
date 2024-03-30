import 'package:coading_area/screen/coading%20page/widgets/blace_container_for_sample_outputs.dart';
import 'package:coading_area/screen/coading%20page/widgets/discription.dart';
import 'package:coading_area/screen/coading%20page/widgets/heading_text.dart';
import 'package:coading_area/screen/coading%20page/widgets/list.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/java.dart';

class CoadingPage extends StatefulWidget {
  CoadingPage({super.key, required this.dis, required this.title});
  Map<String, dynamic> dis;
  String title;

  @override
  State<CoadingPage> createState() => _CoadingPageState();
}

class _CoadingPageState extends State<CoadingPage> {
  List<String> list = [];
  @override
  void initState() {
    for (var i = 0; i < 4; i++) {
      if (widget.dis['TaskList']?[i] != null) {
        list.add(widget.dis['TaskList']?[i] ?? "");
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600]!.withOpacity(0.02),
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.grey[600]!.withOpacity(0.02)),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PHeadingText(text: 'Problem :'),
                PDiscription(text: widget.dis['Problem'] ?? ''),
                const SizedBox(height: 12),
                widget.dis['Task'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Task :'),
                          PDiscription(text: widget.dis['Task'] ?? ''),
                          list.isNotEmpty
                              ? PointList(points: list)
                              : const SizedBox(),
                          widget.dis['TaskBelow'] != null
                              ? PDiscription(
                                  text: widget.dis['TaskBelow'],
                                )
                              : const SizedBox(),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['InputFormat'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Input Format :'),
                          PDiscription(text: widget.dis['InputFormat'] ?? ''),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['Constraints'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Constraints :'),
                          PDiscription(text: widget.dis['Constraints'] ?? ''),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['OutputFormat'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Output Format :'),
                          PDiscription(text: widget.dis['OutputFormat'] ?? ''),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['SampleInput'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Sample Input'),
                          PBlackContainer(text: widget.dis['SampleInput']),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['SampleOutput'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Sample Output'),
                          PBlackContainer(text: widget.dis['SampleOutput']),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['SampleInput0'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Sample Input 0'),
                          PBlackContainer(
                              text: widget.dis['SampleInput0'] ?? ''),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['SampleOutput0'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Sample Output 0'),
                          PBlackContainer(
                              text: widget.dis['SampleOutput0'] ?? ''),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['SampleInput1'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Sample Input 1'),
                          PBlackContainer(
                              text: widget.dis['SampleInput1'] ?? ''),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['SampleOutput1'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Sample Output 1'),
                          PBlackContainer(
                              text: widget.dis['SampleOutput1'] ?? ''),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                widget.dis['exText0'] != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PHeadingText(text: 'Explanation'),
                          widget.dis['exText0'] != null
                              ? PDiscription(text: widget.dis['exText0'] ?? '')
                              : const SizedBox(),
                          widget.dis['exText1'] != null
                              ? PDiscription(text: widget.dis['exText1'] ?? '')
                              : const SizedBox(),
                          widget.dis['exText2'] != null
                              ? PDiscription(text: widget.dis['exText2'] ?? '')
                              : const SizedBox(),
                          widget.dis['exText3'] != null
                              ? PDiscription(text: widget.dis['exText3'] ?? '')
                              : const SizedBox(),
                        ],
                      )
                    : const SizedBox(),
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
  text: '// Enter Your code Here!', 
  language: java,
);

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
    String _selectedLanguage = 'Java'; 

  final List<String> _languages = ['Java', 'C/C++', 'Javascript', 'Python'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Language choose button
        DropdownButton<String>(
          value: _selectedLanguage,
          onChanged: (String? newValue) { 
            setState(() {
              _selectedLanguage = newValue ?? 'Java'; 
            });
          },
          items: _languages.map((String language) {
            return DropdownMenuItem<String>(
              value: language,
              child: Text(language),
            );
          }).toList(),
        ),
        Expanded(
          child: CodeField(
            controller: controller,
          ),
        ),
      ],
    );
  }
}

