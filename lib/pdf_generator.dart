import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<void> generatePrintContainerPDF({
  required String selectedMonth,
  required String selectedMoney,
  required String userName,
  required String userDesi,
  required String userId,
  required String userDate,
  required String userPayDate,
}) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (context) => pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text("Payslip for the Month: $selectedMonth",
              style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 20),

        
          pw.Text("EMPLOYEE SUMMARY",
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text("Employee Name   : $userName"),
                    pw.SizedBox(height: 4),
                    pw.Text("Designation      : $userDesi"),
                    pw.SizedBox(height: 4),
                    pw.Text("Employee ID     : $userId"),
                    pw.SizedBox(height: 4),
                    pw.Text("Date of Joining : $userDate"),
                    pw.SizedBox(height: 4),
                    pw.Text("Pay Period       : $selectedMonth"),
                    pw.SizedBox(height: 4),
                    pw.Text("Pay Date         : $userPayDate"),
                  ],
                ),
              ),
              pw.Container(
                height: 100,
                width: 150,
                decoration: pw.BoxDecoration(
                  border: pw.Border.all(color: PdfColors.grey),
                  borderRadius: pw.BorderRadius.circular(8),
                ),
                child: pw.Column(
                  children: [
                    pw.Container(
                      padding: const pw.EdgeInsets.all(6),
                      decoration: pw.BoxDecoration(
                        color: PdfColors.green100,
                        borderRadius: const pw.BorderRadius.only(
                          topLeft: pw.Radius.circular(8),
                          topRight: pw.Radius.circular(8),
                        ),
                      ),
                      child: pw.Row(
                        children: [
                          pw.Container(width: 4, height: 30, color: PdfColors.green),
                          pw.SizedBox(width: 6),
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(selectedMoney,
                                  style: pw.TextStyle(
                                      fontSize: 14, fontWeight: pw.FontWeight.bold)),
                              pw.Text("Employee Net Pay",
                                  style: pw.TextStyle(fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    pw.Spacer(),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text("Paid Days   : 31",
                              style: pw.TextStyle(fontSize: 10)),
                          pw.Text("LOP Days    : 0",
                              style: pw.TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 20),

          
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text("PF A/C Number : ",
                  style: pw.TextStyle(color: PdfColors.grey800)),
              pw.Text(userId,
                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(width: 30),
              pw.Text("UAN : ", style: pw.TextStyle(color: PdfColors.grey800)),
              pw.Text(userPayDate,
                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
            ],
          ),
          pw.SizedBox(height: 20),

          
          pw.Container(
            decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.grey),
              borderRadius: pw.BorderRadius.circular(8),
            ),
            padding: const pw.EdgeInsets.all(8),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Row(
                  children: [
                    _headerCell("EARNINGS", 60),
                    _spacer(),
                    _headerCell("AMOUNT", 60),
                    _spacer(),
                    _headerCell("YTD", 65),
                    _spacer(),
                    _headerCell("DEDUCTIONS", 95),
                    _spacer(),
                    _headerCell("AMOUNT", 60),
                    _spacer(),
                    _headerCell("YTD", 60),
                  ],
                ),
                pw.SizedBox(height: 10),
                _dataRow("Basic", "₹25,000", "₹3,00,000", "PF Deduction", "₹2,500", "₹30,000"),
                pw.SizedBox(height: 10),
                _dataRow("HRA", "₹10,000", "₹1,20,000", "Tax Deduction", "₹7,500", "₹90,000"),
                pw.SizedBox(height: 10),
                _dataRow("Travel\nAllowance", "₹3,000", "₹36,000", "", "", ""),
                pw.SizedBox(height: 10),
                _dataRow("Meal/Other\nAllowance", "₹2,000", "₹24,000", "", "", ""),
                pw.SizedBox(height: 10),
                pw.Container(
                  decoration: pw.BoxDecoration(
                    color: PdfColors.blue100,
                    borderRadius: const pw.BorderRadius.only(
                      bottomLeft: pw.Radius.circular(8),
                      bottomRight: pw.Radius.circular(8),
                    ),
                  ),
                  padding: const pw.EdgeInsets.all(6),
                  child: pw.Row(
                    children: [
                      _summaryCell("Gross\nEarnings", "₹55,000", 60),
                      pw.SizedBox(width: 65),
                      _summaryCell("Total\nDeduction", "₹10,000", 60),
                      pw.SizedBox(width: 40),
                      _summaryCell("Net Pay", selectedMoney, 60),
                    ],
                  ),
                ),
                pw.SizedBox(height: 20),
                buildNetPayableContainer(selectedMoney),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  await Printing.layoutPdf(onLayout: (format) async => pdf.save());
}

pw.SizedBox _spacer() => pw.SizedBox(width: 5);

pw.Widget _headerCell(String text, double width) {
  return pw.Container(
    width: width,
    child: pw.Center(
      child: pw.Text(text,
          style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
    ),
  );
}

pw.Widget _dataRow(String e, String ea, String eytd, String d, String da, String dytd) {
  return pw.Row(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      _dataCell(e, 60),
      _spacer(),
      _dataCell(ea, 60, center: true),
      _spacer(),
      _dataCell(eytd, 65, center: true),
      _spacer(),
      _dataCell(d, 95, center: true),
      _spacer(),
      _dataCell(da, 60, center: true),
      _spacer(),
      _dataCell(dytd, 60, center: true),
    ],
  );
}

pw.Widget _dataCell(String text, double width, {bool center = false}) {
  return pw.Container(
    width: width,
    child: center
        ? pw.Center(child: pw.Text(text, style: pw.TextStyle(fontSize: 10)))
        : pw.Text(text, style: pw.TextStyle(fontSize: 10)),
  );
}

pw.Widget _summaryCell(String label, String amount, double width) {
  return pw.Container(
    width: width,
    child: pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        pw.Text(label, style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
        pw.Text(amount, style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
      ],
    ),
  );
}

pw.Widget buildNetPayableContainer(String selectedMoney) {
  return pw.Container(
    height: 60,
    decoration: pw.BoxDecoration(
      border: pw.Border.all(color: PdfColors.grey800),
      borderRadius: pw.BorderRadius.circular(10),
    ),
    padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    child: pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.center,
          children: [
            pw.Text(
              "Total Net Payable",
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            ),
            pw.Text(
              "Gross Earning - Total Deductions",
              style: pw.TextStyle(fontSize: 10),
            ),
          ],
        ),
        pw.Container(
          decoration: pw.BoxDecoration(
            color: PdfColors.lightGreen,
            borderRadius: pw.BorderRadius.circular(10),
          ),
          padding: const pw.EdgeInsets.all(8),
          width: 150,
          child: pw.Center(
            child: pw.Text(
              selectedMoney,
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            ),
          ),
        ),
      ],
    ),
  );
}
