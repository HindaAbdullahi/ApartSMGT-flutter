import 'package:appart/widgets/custom-text-form-filed.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddEmpolyeScreen extends StatefulWidget {
  const AddEmpolyeScreen({super.key});

  @override
  State<AddEmpolyeScreen> createState() => _AddEmpolyeScreen();
}

class _AddEmpolyeScreen extends State<AddEmpolyeScreen> {
  final TextEditingController _fullNamecontroller = TextEditingController();
  final TextEditingController _empPhonecontroller = TextEditingController();
  final TextEditingController _empEmailcontroller = TextEditingController();
  final TextEditingController _empAddresscontroller = TextEditingController();
 final   TextEditingController _empDeptcontroller = TextEditingController();
  final TextEditingController _empSalarycontroller = TextEditingController();
  final TextEditingController _statuscontroller = TextEditingController();
    final TextEditingController _datCreatecontroller = TextEditingController();
  DateTime ? _dateCreate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add employee"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextFormField(
              controller: _fullNamecontroller,
              txtLabel: "fullName ",
            ),
            const SizedBox(height: 10.0),
            customTextFormField(
              controller: _empPhonecontroller,
              txtLabel: "empPhone  ",
            ),
            const SizedBox(height: 10.0),
            customTextFormField(
              controller: _empEmailcontroller,
              txtLabel: "empEmail  ",
            ),
            const SizedBox(height: 10.0),
            customTextFormField(
              controller: _empAddresscontroller,
              txtLabel: "empAddress  ",
            ),
            const SizedBox(height: 10.0),
            customTextFormField(
              controller: _empDeptcontroller,
              txtLabel: "dept  ",
            ),
            const SizedBox(height: 10.0),
            customTextFormField(
              controller: _empSalarycontroller,
              txtLabel: "enter salary  ",
            ),
            const SizedBox(height: 10.0),
            customTextFormField(
              controller: _statuscontroller,
              txtLabel: "status  ",
            ),
            const SizedBox(height: 10.0),
              TextFormField(
      controller: _datCreatecontroller,
      keyboardType: TextInputType.name,
      decoration: const   InputDecoration(
         border:OutlineInputBorder(),
         label: Text("enter date")
      ),
     
      validator: (value){
        if(value ==null || value.isEmpty){
          return ( " data   not empty");
        }
        return null;
      },
      onTap: ()=>pickDateCreate(context),
    ),
            
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
  Future<void> pickDateCreate( BuildContext context)async{
     final initialDate=DateTime.now();
     final newDate= await showDatePicker(context: context, 
     initialDate:_dateCreate ?? initialDate,
    firstDate: DateTime(DateTime.now().year -100), 
      lastDate: DateTime(DateTime.now().year +1),
      builder: (context ,child)=> Theme(
      data: ThemeData().copyWith(
      colorScheme: const ColorScheme.light(
        primary: Colors.pink,
        onPrimary: Colors.white,
        onSurface: Colors.black
      ),
      dialogBackgroundColor: Colors.white,
      ),
      child:  child ?? const Text(""),
      
      )
      );
      if(newDate==null){
        return;
      }
      setState(() {
        _dateCreate=newDate;
        String  dob=DateFormat('dd/MM/yyyy').format(newDate);
        _datCreatecontroller.text=dob;

      });
  }
}
