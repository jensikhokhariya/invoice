import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice/screen/in_2.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {

  TextEditingController c_name = TextEditingController();
  TextEditingController c_email = TextEditingController();
  TextEditingController c_Add= TextEditingController();
  TextEditingController c_Phon = TextEditingController();
  TextEditingController i_num = TextEditingController();
  TextEditingController i_date = TextEditingController();
  TextEditingController due_date = TextEditingController();
  TextEditingController Pro_na = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController Quantity = TextEditingController();
  dynamic i=0;
  dynamic d_value='18';

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Invoice Generator"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body:  Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child:Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 50,
                width: double.infinity,
                color: Colors.pink.shade800,
                child: Text("Compny Detail",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: c_name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label:Text("Compny name"),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: c_email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label:Text("E_mail"),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: c_Add,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label:Text("Address"),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: c_Phon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label:Text("Phone Number"),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.centerLeft,
                height: 50,
                width: double.infinity,
                color: Colors.pink.shade800,
                child: Text("Invoice Detail",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    child: TextField(
                      controller: i_num,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Invoice #"),
                      ),
                    ),
                  ),
                ],
              ),
               Row(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: TextField(
                        controller: i_date,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label:Text("Invoice Date"),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 100,
                      width: 150,
                      child: TextField(
                        controller: due_date,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label:Text("Due Date"),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  width: double.infinity,
                  color: Colors.pink.shade800,
                  child: Text("Item Detail",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      child: Text("Products",style: TextStyle(fontSize: 20,color: Colors.black),),
                    ),
                    SizedBox(width:20),
                    Container(
                      height: 50,
                      width: 100,
                      child: Text("Amount",style: TextStyle(fontSize: 20,color: Colors.black),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: Pro_na,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(),
                        labelText: "Product"
                        ),
                      ),
                    ),
                    SizedBox(width: 130,),
                    Container(
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: amount,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(),
                        labelText: "Amount"
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
               SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(),
                        labelText: "$i"
                      ),
                    ),
                  ),
                ],
              ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      FloatingActionButton(onPressed: (){
                        setState(() {
                          i++;
                          print("$i");
                        });
                      },
                        child: Icon(Icons.add),
                        backgroundColor: Colors.pink.shade800,
                      ),
                      SizedBox(width: 200,),
                      FloatingActionButton(onPressed: (){
                        setState(() {
                          i--;
                          print("$i");
                        });
                      },
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.pink.shade800,
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("GST",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  Divider(height: 30,
                    thickness: 3,
                    color: Colors.black,
                  ),
                  Container(
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
                      onChanged: (newValue)async{
                        setState(() {
                          d_value=newValue!;
                        });
                      },
                      items: ['3','5','8','12','18']
                      .map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem(value: value,child: Text(value),);
                      }).toList(),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'page1',arguments: inmodel(
                        c_name.text,
                        c_email.text,
                        c_Add.text,
                        c_Phon.text,
                        i_num.text,
                        i_date.text,
                        due_date.text,
                        Pro_na.text,
                        amount.text,
                        Quantity.text,
                        i,
                        d_value,
                    ));
                   },
                    child: Text("Next"),
                    style: ElevatedButton.styleFrom(primary: Colors.pink.shade800),
                  ),
               ],
            ),
          ),
        ),
      ),
    );
  }
}
