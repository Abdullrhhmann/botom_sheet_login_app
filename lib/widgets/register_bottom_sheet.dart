import 'package:flutter/material.dart';

class RegisterBottomSheet extends StatefulWidget {
  const RegisterBottomSheet({super.key});

  @override
  State<RegisterBottomSheet> createState() => _RegisterBottomSheetState();
}

class _RegisterBottomSheetState extends State<RegisterBottomSheet> {
  final _formkey = GlobalKey<FormState>();
  double _Age = 18;
  String _selectGender = "Male";
  bool _reciveNewsLetter = false;
  bool? _isTermChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            controller: TextEditingController(),
            decoration: const InputDecoration(
                label: Text("username"), border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: TextEditingController(),
            decoration: const InputDecoration(
                label: Text("Password"), border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Age: ${_Age.round()}"),
              Expanded(
                child: Slider(
                    label: _Age.toString(),
                    value: _Age,
                    min: 18,
                    max: 100,
                    divisions: 82,
                    onChanged: (value) {
                      setState(() {
                        _Age = value;
                      });
                    }),
              )
            ],
          ),
          Row(children: [
            Expanded(
              child: RadioListTile(
                  title: const Text("Male"),
                  value: "Male",
                  groupValue: _selectGender,
                  onChanged: (value) {
                    setState(() {
                      _selectGender = value.toString();
                    });
                  }),
            ),
            Expanded(
                child: RadioListTile(
                    title: const Text("Femlae"),
                    value: "Female",
                    groupValue: _selectGender,
                    onChanged: (value) {
                      setState(() {
                        _selectGender = value.toString();
                      });
                    }))
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: SwitchListTile(
                    title: const Text("Recive News Letter"),
                    value: _reciveNewsLetter,
                    onChanged: (value) {
                      setState(() {
                        _reciveNewsLetter = !_reciveNewsLetter;
                      });
                    }),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
              title: const Text("agree to terms and condetions ."),
              value: _isTermChecked,
              onChanged: (value) {
                setState(() {
                  _isTermChecked = value;
                });
              }),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed:
                      !(_isTermChecked == false) || _isTermChecked == null
                          ? () {
                              Navigator.of(context).pop();
                            }
                          : null,
                  child: const Text("Regester")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Close"))
            ],
          ),
        ],
      )),
    );
  }
}
