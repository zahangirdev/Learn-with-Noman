import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String FieldText1;
  final String FieldText2;

  const CustomTextField({
    super.key,
    required this.FieldText1,
    required this.FieldText2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          FieldText1,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(
          height: 3,
        ),

        //

        TextField(
          decoration: InputDecoration(

              // focusColor: AppColors.textField,
              // fillColor: AppColors.textField,
              border: const OutlineInputBorder(),
              hintText: FieldText2),
          style: const TextStyle(),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
