import 'dart:io';
import 'package:invoice/screen/in_2.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
class PDF{
  void pdfg(inmodel inv)async{
    var pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context){
          return pw.Container(
          width: double.infinity,
          padding: pw.EdgeInsets.all(10),
          child: pw.Column(
              children: [
                pw.Container(
                  height: 50,
                  width: double.infinity,
                  child: pw.Text(
                    "Invoice Preview",
                    style: (pw.TextStyle(
                      color: PdfColors.black,
                      fontSize: 30,
                    )),
                  ),
                ),
                pw.Container(
                  height: 50,
                  width: double.infinity,
                  child: pw.Text(
                    "GSTIN : 33GSPTN0372G1ZC",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  color: PdfColors.black,
                ),
                pw.SizedBox(
                  width: 15,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.SizedBox(
                      width: 15,
                    ),
                    pw.Expanded(
                      child: pw.Container(
                        height: 50,
                        width: 50,
                        child: pw.Text(
                          "invoice #",
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 15,
                    ),
                    pw.Expanded(
                      child: pw.Container(
                        height: 50,
                        width: 50,
                        child: pw.Text(
                          "${inv.i_num}",
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                pw.Divider(
                  height: 1,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.black,
                ),
                pw.SizedBox(
                  height: 15,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.SizedBox(
                      width: 15,
                    ),
                    pw.Expanded(
                      child: pw.Container(
                        height: 50,
                        width: 150,
                        child: pw.Text(
                          "invoice Date",
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 15,
                    ),
                    pw.Expanded(
                      child: pw.Container(
                        height: 50,
                        width: 90,
                        child: pw.Text(
                          "${inv.i_date}",
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                pw.Divider(
                  height: 1,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.black,
                ),
                pw.SizedBox(
                  height: 15,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.SizedBox(
                      width: 15,
                    ),
                    pw.Expanded(
                      child: pw.Container(
                        height: 50,
                        width: 150,
                        child: pw.Text(
                          "Due Date",
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 15,
                    ),
                    pw.Expanded(
                      child: pw.Container(
                        height: 50,
                        width: 90,
                        child: pw.Text(
                          "${inv.due_date}",
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                pw.Divider(
                  height: 3,
                  thickness: 2,
                  color: PdfColors.black,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      "Product Details",
                      style: pw.TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                pw.Divider(
                  height: 50,
                  thickness: 2,
                  color: PdfColors.black,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.SizedBox(
                      width: 15,
                    ),
                    pw.Expanded(
                      child: pw.Container(
                        height: 50,
                        width: 150,
                        child: pw.Text(
                          "${inv.Pro_na}",
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 15,
                    ),
                    pw.Expanded(
                      child: pw.Container(
                        height: 50,
                        width: 90,
                        child: pw.Text(
                          "${inv.amount}",
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                pw.Row(
                  children: [
                    pw.Container(
                      margin: pw.EdgeInsets.only(left: 20),
                      width: 100,
                      child: pw.Text(
                        "${inv.i}*${inv.amount}",
                        style: pw.TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                pw.Divider(
                  height: 30,
                  thickness: 1,
                  indent: 5,
                  endIndent: 5,
                  color: PdfColors.black,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      "SubTotal",
                      style: pw.TextStyle(fontSize: 19),
                    ),
                    pw.Text(
                      "${int.parse(inv.amount) * inv.i}",
                      style: pw.TextStyle(fontSize: 19),
                    ),
                  ],
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      "GST(${inv.d_value}%)",
                      style: pw.TextStyle(fontSize: 20),//200*3/100+200=206
                    ),
                    pw.Text(
                      "${int.parse(inv.amount) * inv.i * int.parse(inv.d_value) / 100}",
                      style: pw.TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                pw.Divider(
                  height: 30,
                  thickness: 3,
                  indent: 5,
                  endIndent: 5,
                  color: PdfColors.black,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text("Total Amount",
                      style: pw.TextStyle(fontSize: 19),
                    ),
                    pw.Text(
                      "${int.parse(inv.amount) * inv.i * int.parse(inv.d_value) / 100+int.parse(inv.amount) * inv.i}",
                      style: pw.TextStyle(fontSize: 19),
                    ),
                  ],
                ),
                pw.Divider(
                  height: 30,
                  thickness: 3,
                  indent: 5,
                  endIndent: 5,
                  color: PdfColors.black,
                ),
              ],
            ),
        );
        }
      ),
    );
    Directory? dr =await getExternalStorageDirectory();
    File file= File("${dr!.path}/flutter.pdf");
    file.writeAsBytes(await pdf.save());
    print(dr);
  }
}