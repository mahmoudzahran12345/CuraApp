import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/shared/components/constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: searchcontroller,
                decoration:const InputDecoration(
                    labelText: 'Search',
                    border:OutlineInputBorder(
                    ) ,
                    prefixIcon:Icon(
                        Icons.search
                    ) ,
                    labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    )

                ) ,

                keyboardType:TextInputType.name ,
                onFieldSubmitted:  (String text){
                },

                validator: (  value)
                {
                  if(value!.isEmpty)
                  {
                    return 'the Search must not be empty';
                  }
                  return null;
                },

              ),

            ],
          ),
        ),
      ) ,
    );
  }
}
