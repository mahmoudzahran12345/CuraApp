import 'package:flutter/material.dart';
import '../../layout/widget/textfield.dart';
import '../../models/symptoms/symptom.dart';
import '../../shared/styles/colors.dart';

class SymptomsScrren extends StatefulWidget {
  @override
  _SymptomsScrrenState createState() => _SymptomsScrrenState();
}

class _SymptomsScrrenState extends State<SymptomsScrren> {
  List<ContactModel> contacts = [
    ContactModel("itching",  false),
    ContactModel(" skin rash", false),
    ContactModel(" vomiting", false),
    ContactModel("cough", false),
    ContactModel("headeck",  false),
    ContactModel(" nausea",  false),
    ContactModel("lethargy",  false),
    ContactModel("itching",  false),
    ContactModel(" skin rash", false),
    ContactModel(" vomiting", false),
    ContactModel("cough", false),
    ContactModel("headeck",  false),
    ContactModel(" nausea",  false),
    ContactModel("lethargy",  false),
  ];
  List<ContactModel> ?selectedContacts = [] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondColor,
      appBar: AppBar(
        backgroundColor: secondColor,
        elevation: 0.0,
        title: CustomText(title: 'List Of Symptoms',color: Colors.white,fontSize: 25,alignment: Alignment.center),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: TextButton(onPressed: (){}, child: CustomText(title: 'OK',color:Colors.white,fontSize: 25,)),
          )
        ],

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  // return item
                  return ContactItem(
                    contacts[index].name,
                    contacts[index].isSelected,
                    index,
                  );
                }),
          ),

        ],
      ),
    );
  }

  Widget ContactItem(String name,  bool isSelected, int index) {
    return CheckboxListTile(
        title: CustomText(title: '${name}',fontSize: 25,color: Colors.white),
        side: BorderSide(color: Colors.white),
        checkColor: Colors.black,
        activeColor: Colors.white,
        value: isSelected, onChanged: (value){
      setState(() {
        contacts[index].isSelected = !contacts[index].isSelected;
        if (contacts[index].isSelected == true) {
         // selectedContacts?.add(ContactModel(name,  true));
        } else if (contacts[index].isSelected == false) {
          selectedContacts?.removeWhere((element) => element.name == contacts[index].name);
        }
      });

    });
  }
}