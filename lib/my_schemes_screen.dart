import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shiksha_tech/schemes_screen.dart';
class MySchemesScreen extends StatefulWidget {
  const MySchemesScreen({super.key});

  @override
  State<MySchemesScreen> createState() => _MySchemesScreenState();
}

class _MySchemesScreenState extends State<MySchemesScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF4E74F9),
        title: Text('Government Schemes'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE4ECFF), Color(0xFFC1D2FF)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300, // Take up the full width
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Adjust the border color
                      width: 1.0, // Adjust the border width
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _buildDropdownField('Gender', 'dropdown1', ['Male', 'Female']),
                        _buildDropdownField('Age', 'dropdown2', ['0-18', '19-24','25-30','30-45','45-60','60+']),
                        _buildDropdownField('State', 'dropdown3', [
                          "Andhra Pradesh",
                          "Arunachal Pradesh",
                          "Assam",
                          "Bihar",
                          "Chhattisgarh",
                          "Goa",
                          "Gujarat",
                          "Haryana",
                          "Himachal Pradesh",
                          "Jharkhand",
                          "Karnataka",
                          "Kerala",
                          "Madhya Pradesh",
                          "Maharashtra",
                          "Manipur",
                          "Meghalaya",
                          "Mizoram",
                          "Nagaland",
                          "Odisha",
                          "Punjab",
                          "Rajasthan",
                          "Sikkim",
                          "Tamil Nadu",
                          "Telangana",
                          "Tripura",
                          "Uttar Pradesh",
                          "Uttarakhand",
                          "West Bengal"
                        ]),
                        _buildDropdownField('Caste', 'dropdown4', ['General', 'OBC', 'SC', 'ST']),
                        _buildDropdownField('Income', 'dropdown5', ['0-50000','50000-100000', '100000-500000','500000-1000000','1000000+']),
                        _buildDropdownField('Disability', 'dropdown6', ['Yes', 'No']),
                        _buildDropdownField('Minority', 'dropdown7', ['Yes', 'No']),
                        // Add more dropdown fields as needed with different options
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _buildSubmitButton(), // Place the submit button outside the container
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField(String label, String name, List<String> options) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      width: 200.0, // Adjust the width as needed
      child: FormBuilderDropdown(
        name: name,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        items: options
            .map((option) => DropdownMenuItem(
          value: option,
          child: Text(option),
        ))
            .toList(),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context){
              return Schemes();
            }
            )
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        textStyle: TextStyle(color: Color(0xFF4E74FF)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'Submit',
          style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF4E74FF)),
        ),
      ),
    );
  }
}




