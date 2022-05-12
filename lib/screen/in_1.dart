import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice/screen/in_2.dart';
import 'package:invoice/screen/pdf.dart';

class In_1 extends StatefulWidget {
  const In_1({Key? key}) : super(key: key);

  @override
  State<In_1> createState() => _In_1State();
}

class _In_1State extends State<In_1> {
  String newvalue = " ";
  String d_value = "18%";
  @override
  Widget build(BuildContext context) {
    inmodel inv = ModalRoute.of(context)!.settings.arguments as inmodel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pdf page"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
              setState(() {
                PDF().pdfg(inv);
              });
            }, icon: Icon(Icons.save),),
          ],
        ),
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
                  child: Text(
                    "Invoice Preview",
                    style: (TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    )),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text(
                    "GSTIN : 33GSPTN0372G1ZC",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Text(
                          "invoice #",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Text(
                          "${inv.i_num}",
                          style: TextStyle(fontSize: 20),
                        ),
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 150,
                        child: Text(
                          "invoice Date",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 90,
                        child: Text(
                          "${inv.i_date}",
                          style: TextStyle(fontSize: 20),
                        ),
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 150,
                        child: Text(
                          "Due Date",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 90,
                        child: Text(
                          "${inv.due_date}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 3,
                  thickness: 2,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Product Details",
                      style: TextStyle(fontSize: 25),
                    ),
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
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 150,
                        child: Text(
                          "${inv.Pro_na}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 90,
                        child: Text(
                          "${inv.amount}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      child: Text(
                        "${inv.i}*${inv.amount}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  indent: 5,
                  endIndent: 5,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SubTotal",
                      style: TextStyle(fontSize: 19),
                    ),
                    Text(
                      "${int.parse(inv.amount) * inv.i}",
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "GST(${inv.d_value}%)",
                      style: TextStyle(fontSize: 20),//200*3/100+200=206
                    ),
                    Text(
                      "${int.parse(inv.amount) * inv.i * int.parse(inv.d_value) / 100}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 3,
                  indent: 5,
                  endIndent: 5,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Amount",
                      style: TextStyle(fontSize: 19),
                    ),
                    Text(
                      "${int.parse(inv.amount) * inv.i * int.parse(inv.d_value) / 100+int.parse(inv.amount) * inv.i}",
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 3,
                  indent: 5,
                  endIndent: 5,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
