import 'package:adapter_design_pattern/adapter.dart';

void main() {
  // Using OldPrinter
  OldPrinter oldPrinter = OldPrinter();
  oldPrinter.printDocument("Hello, world!");
  // Output: Old Printer: Printing document - Hello, world!

  // Using NewPrinter through the Adapter
  NewPrinter newPrinter = NewPrinter();
  OldPrinter adapter = PrinterAdapter(newPrinter);
  adapter.printDocument("Hello, Dart!");
  // Output: New Printer: Printing document - Hello, Dart!
}
