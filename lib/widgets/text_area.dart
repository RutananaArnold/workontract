import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  final String label;
  final TextEditingController? textAreaController;
  final void Function(String)? onChanged;
  const TextArea(
      {Key? key,
      this.textAreaController,
      required this.label,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 22,
          ),
          child: Text(
            " $label ",
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
              controller: textAreaController,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                hintText: "Biographical",
              ),
              onChanged: onChanged),
        ),
      ],
    );
  }
}
