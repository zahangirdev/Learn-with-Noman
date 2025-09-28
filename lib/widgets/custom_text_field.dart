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
        TextField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(), hintText: FieldText2),
          style: const TextStyle(),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

/*
TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your email"),
                      style: TextStyle(
                        
                      ),
                    );

                    /// 
import 'package:flutter/material.dart';
import 'package:learn_with_noman/conts.dart';

class Custombuttom extends StatelessWidget {
  final String btmText;
  final VoidCallback onTab;

  const Custombuttom({
    super.key,
    required this.btmText,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: OnBoarding.buttomBG,
            //     color: Colors.red,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btmText,
              style: const TextStyle(color: Colors.white),
            ),
            const Icon(
              Icons.person_3_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

/*
InkWell(
      onTap: onTab,
      child: Container(
        height: 50,
        width: 120,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
        ),
        child: Text(
          btmText,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    )
*/
*/