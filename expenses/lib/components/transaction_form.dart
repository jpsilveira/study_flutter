import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  _submitForm() {
    final tittle = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;

    if (tittle.isNotEmpty && value > 0) {
      onSubmit(
        tittle,
        value,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Título"),
            ),
            TextField(
              controller: valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Valor (R\$)"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.purple,
                  ),
                  child: Text("Nova Transação"),
                  onPressed: () {
                    _submitForm();

                    // final title = titleController.text;
                    // final value = double.tryParse(valueController.text) ?? 0.0;
                    // onSubmit(title, value);
                    // print(titleController.text);
                    // print(valueController.text);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
