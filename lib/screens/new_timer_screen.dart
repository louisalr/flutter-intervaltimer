import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTimerScreen extends StatefulWidget {
  static const routeName = '/new-timer';
  final Function addNewTimer;
  const NewTimerScreen({Key? key, required this.addNewTimer}) : super(key: key);

  @override
  State<NewTimerScreen> createState() => _NewTimerScreenState();
}

class _NewTimerScreenState extends State<NewTimerScreen> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _repsController = TextEditingController();
  final TextEditingController _activeMinutesController = TextEditingController();
  final TextEditingController _activeSecondsController = TextEditingController();
  final TextEditingController _restController = TextEditingController();


  void _formatForm(){
    // Format the form to the match Timer model

  }

  void _validateForm(){
    // Check the form to make sure all the needed fields are filled
    if (_formKey.currentState!.validate()){
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New timer'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Timer name'
                  ),
                  controller: _nameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Numbe of reps'
                  ),
                  controller: _repsController,
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text('Active training time'),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Minutes'
                        ),
                        controller: _activeMinutesController,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Seconds'
                        ),
                        controller: _activeSecondsController,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                )
              ),
              const Text('Rest training time'),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Minutes'
                          ),
                          controller: _activeMinutesController,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Seconds'
                          ),
                          controller: _activeSecondsController,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  )
              ),
              ElevatedButton(
                  onPressed: _validateForm,
                  child: Text('Create the new timer')
              )
            ],
          ),
        ),
      ),
    );
  }
}
