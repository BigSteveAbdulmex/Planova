import 'package:flutter/material.dart';

class CustomTextInputFields extends StatelessWidget {
  const CustomTextInputFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            // keyboardType: ,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 12.0),
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.065,
                maxWidth: MediaQuery.of(context).size.width,
              ),
              filled: true,
              fillColor: Colors.grey,
              hintText: "",
              // hintStyle: ,
              // prefixIcon: ,
              // suffixIcon: ,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: Colors.yellow,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: Colors.yellowAccent,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: Colors.yellowAccent,
                  width: 1.0,
                ),
              ),
            ),
          ),
          TextFormField(),
        ],
      ),
    );
  }
}
