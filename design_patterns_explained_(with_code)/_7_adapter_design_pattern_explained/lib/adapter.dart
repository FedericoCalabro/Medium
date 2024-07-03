import 'package:adapter_design_pattern/new.dart';
import 'package:adapter_design_pattern/old.dart';

class PrinterAdapter implements OldPrinter {
  final NewPrinter newPrinter;

  PrinterAdapter(this.newPrinter);

  @override
  void printDocument(String text) {
    // Delegates the call to the newPrinter's print method
    newPrinter.newPrintMethod(text);
  }
}
