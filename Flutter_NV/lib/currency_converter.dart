import 'package:flutter/material.dart';
// import 'package:flutter_nv/loginpage.dart';

void main() {
  runApp(const CurrencyConverterApp());
}

class CurrencyConverterApp extends StatelessWidget {
  const CurrencyConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Converter',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterPage(),
    );
  }
}

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CurrencyConverterPageState createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  final TextEditingController _inputController = TextEditingController();
  String _outputValue = "";

  String _inputCurrency = "USD";
  String _outputCurrency = "INR";

  // Example rates
  final Map<String, double> rates = {
    "USD": 1.0,
    "INR": 83.0,
    "EUR": 0.92,
    "GBP": 0.79,
  };

  void _convert() {
    double? inputAmount = double.tryParse(_inputController.text);
    if (inputAmount == null) return;

    double inUsd = inputAmount / rates[_inputCurrency]!; // convert to USD
    double outAmount = inUsd * rates[_outputCurrency]!;

    setState(() {
      _outputValue = outAmount.toStringAsFixed(2);
    });
  }

  Widget _buildCurrencySelector(
    String groupValue,
    Function(String?) onChanged,
  ) {
    return Column(
      children: rates.keys.map((currency) {
        return RadioListTile<String>(
          title: Text(currency),
          value: currency,
          groupValue: groupValue,
          onChanged: onChanged,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Currency Converter")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _inputController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter amount",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            Text("Select Input Currency"),
            _buildCurrencySelector(_inputCurrency, (val) {
              setState(() => _inputCurrency = val!);
            }),

            SizedBox(height: 16),

            Text("Select Output Currency"),
            _buildCurrencySelector(_outputCurrency, (val) {
              setState(() => _outputCurrency = val!);
            }),

            SizedBox(height: 16),

            ElevatedButton(onPressed: _convert, child: Text("Convert")),

            SizedBox(height: 16),

            TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: "Converted Amount",
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: _outputValue),
            ),
          ],
        ),
      ),
    );
  }
}
