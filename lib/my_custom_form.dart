import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  //List<int> choices = [1,2,3,4];
  int selectedChoice = 2;
  String selectedDifficulty = 'Easy';
  String topics ='';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Test Title',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Name is required';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Course Name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Name is required';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Number of Questions',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Name is required';
                }
                return null;
              },
            ),

            // CHOICES RADIO BUTTON
            const SizedBox(height: 8,),
            Row(
              children: [
                const Text('Number of Choices:'),
                Radio<int>(
                  value: 2,
                  groupValue: selectedChoice,
                  onChanged: (value) {
                    setState(() {
                      selectedChoice = value!;
                    });
                  },
                ),
                const Text('2'),
                Radio<int>(
                  value: 3,
                  groupValue: selectedChoice,
                  onChanged: (value) {
                    setState(() {
                      selectedChoice = value!;
                    });
                  },
                ),
                const Text('3'),
                Radio<int>(
                  value: 4,
                  groupValue: selectedChoice,
                  onChanged: (value) {
                    setState(() {
                      selectedChoice = value!;
                    });
                  },
                ),
                const Text('4'),
              ],
            ),
            const SizedBox(height: 8,),
            DropdownButtonFormField<String>(
              value: selectedDifficulty,
              onChanged: (value) {
                setState(() {
                  selectedDifficulty = value!;
                });
              },
              items: ['Easy', 'Medium', 'Hard']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              decoration: const InputDecoration(
                labelText: 'Difficulty Level',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Difficulty level is required';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 14,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Topics (Separated by commas)',
              ),
              onChanged: (value) {
                topics = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Topics are required';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 14,
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
