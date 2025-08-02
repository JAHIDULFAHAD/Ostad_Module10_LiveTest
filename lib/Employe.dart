import 'package:flutter/material.dart';

class AddEmploye extends StatelessWidget {
  const AddEmploye({super.key});

  @override
  Widget build(BuildContext context) {
    final fromkey=GlobalKey<FormState>();
    TextEditingController name=TextEditingController();
    TextEditingController age=TextEditingController();
    TextEditingController salary=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employe'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Form(
                key: fromkey,
                child: Column(
              children: [
                SizedBox(
                  width: 360,
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: 'Name',
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please Enter Name";
                      } else{
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 360,
                  child: TextFormField(
                    controller: age,
                    decoration: InputDecoration(
                      hintText: 'Age',
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please Enter Age";
                      } else{
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 360,
                  child: TextFormField(
                    controller: salary,
                    decoration: InputDecoration(
                      hintText: 'Salary',
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please Enter Salary";
                      } else{
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  if(fromkey.currentState!.validate()){

                  }
                }, child: Text("Add Employe"))
              ],
            )),
      )


    );
  }
}
