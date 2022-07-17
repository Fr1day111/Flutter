import 'package:flutter/material.dart';

class SemPage extends StatefulWidget {
  const SemPage({Key? key}) : super(key: key);

  @override
  State<SemPage> createState() => _SemPageState();
}

class _SemPageState extends State<SemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SemPage'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    hintText: 'Enter ID to delete/update',
                    labelText: 'ID'),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(decimal: false),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    hintText: 'Enter Semester',
                    labelText: 'Semester'),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    hintText: 'Enter Grade',
                    labelText: 'Grade'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(onPressed: () {addGrade();}, child: Text('Add')),
                  OutlinedButton(onPressed: () {updateGrade();}, child: Text('Update')),
                  OutlinedButton(onPressed: () {}, child: Text('Read')),
                ],
              ),
              OutlinedButton(onPressed: () {deleteGrade();}, child: Text('Delete')),
            ],
          ),
        ),
      ),
    );
  }
}

void deleteGrade() {
}

void updateGrade() {
}

void addGrade() {
}
