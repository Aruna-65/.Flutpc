import 'package:flutter/material.dart';
import 'package:flutter_searchable_dropdown/flutter_searchable_dropdown.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  String selectedDropdownValue = '';
  List<String> dropdownValues = ['Option 1', 'Option 2', 'Option 3'];

  bool checkboxValue = false;

  TextEditingController textFieldController = TextEditingController();

  String selectedSearchableDropdownValue = '';
  List<DropdownMenuItem> searchableDropdownItems = [
    DropdownMenuItem(child: Text('Item 1'), value: 'Item 1'),
    DropdownMenuItem(child: Text('Item 2'), value: 'Item 2'),
    DropdownMenuItem(child: Text('Item 3'), value: 'Item 3'),
  ];

  DateTime selectedDate;

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: selectedDropdownValue,
                items: dropdownValues.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedDropdownValue = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Dropdown',
                ),
              ),
              SizedBox(height: 16.0),
              CheckboxListTile(
                value: checkboxValue,
                onChanged: (value) {
                  setState(() {
                    checkboxValue = value;
                  });
                },
                title: Text('Checkbox'),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: textFieldController,
                decoration: InputDecoration(
                  labelText: 'Text Field',
                ),
              ),
              SizedBox(height: 16.0),
              SearchableDropdown.single(
                items: searchableDropdownItems,
                value: selectedSearchableDropdownValue,
                hint: 'Select an item',
                searchHint: 'Search for an item',
                onChanged: (value) {
                  setState(() {
                    selectedSearchableDropdownValue = value;
                  });
                },
                isExpanded: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  final DateTime picked = await showDatePicker(
                    context: context,
                    initialDate: selectedDate ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );
                  if (picked != null) {
                    setState(() {
                      selectedDate = picked;
                    });
                  }
                },
                child: Text(selectedDate != null
                    ? 'Selected Date: ${selectedDate.toString()}'
                    : 'Select Date'),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 200.0,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyScreen(),
  ));
}
