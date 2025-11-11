import 'package:flutter/material.dart';
import 'package:tugaspribadi/halaman2.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController umurController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Isi data tersebut!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(label: Text("Nama"), ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Nama tidak boleh kososng!";
                  }
                  return null;
                }
              ),
              TextFormField(
                controller: umurController,
                decoration: const InputDecoration(label: Text("Umur"), ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Umur tidak boleh kososng!";
                  }
                  return null;
                }
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(onPressed: () {
                if (_formKey.currentState!.validate()){
                  String name = nameController.text;
                  String umur = umurController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Halaman2(nama: name, umur: umur)));
                  ScaffoldMessenger.of(
                    context
                    ).showSnackBar(SnackBar(content: Text(name)));
                }
              }, child: const Text("Submit"))
            ],
          )
        ),
      ),
    );
  }
}
