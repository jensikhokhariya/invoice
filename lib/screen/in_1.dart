import 'package:flutter/material.dart';
import 'package:invoice/screen/in_2.dart';

class In_1 extends StatefulWidget {
  const In_1({Key? key}) : super(key: key);

  @override
  State<In_1> createState() => _In_1State();
}

class _In_1State extends State<In_1> {

  String newvalue=" ";
  String d_value="18%";
  @override
  Widget build(BuildContext context) {
    inmodel inv=ModalRoute.of(context)!.settings.arguments as inmodel;
    return SafeArea(child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                child: Text("Invoice Preview",
                  style: (
                      TextStyle(
                        color: Colors.black,fontSize: 30,
                      )),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Text("GSTIN : 33GSPTN0372G1ZC",style: TextStyle(
                  fontSize: 20
                ),),
              ),
              Divider(
               height: 1,
                thickness: 2,
                color: Colors.black,
              ),
              SizedBox(width: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("invoice #",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                       height: 50,
                       width: 50,
                       child: Text("${inv.i_num}",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 1,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Colors.black,
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 150,
                      child: Text("invoice Date",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                       height: 50,
                       width: 90,
                       child: Text("${inv.i_date}",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 1,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Colors.black,
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 150,
                      child: Text("Due Date",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                       height: 50,
                       width: 90,
                       child: Text("${inv.due_date}",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 3,
                thickness: 2,
                color: Colors.black,
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Product Details",style: TextStyle(fontSize: 25),),
                ],
              ),
              Divider(
                height: 50,
                thickness: 2,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 150,
                      child: Text("${inv.Pro_na}",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                       height: 50,
                       width: 90,
                       child: Text("${inv.amount}",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 100,
                    child: Text("${inv.Quantity}*${inv.amount}",style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
             /* Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                height: 50,
                width: double.infinity,
                color: Colors.grey.shade300,
                child: DropdownButton<String>(
                  value: d_value,
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down),
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                  underline: Container(
                    height: 3,
                    color: Colors.black,
                  ),
                  onChanged: (newvalue)async{
                    setState(() {
                      d_value=newvalue!;
                    });
                  },
                  items: ['3%','5%','8%','12%','18%']
                      .map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem(
                      child: Text(value),);
                  }).toList(),
                ),
              ),
              Divider(
                height: 30,
                thickness: 1,
                indent: 5,
                endIndent: 5,
                color: Colors.black,
              ),*/
            ],
          ),
        ),
      ),
    ),);
  }
}
