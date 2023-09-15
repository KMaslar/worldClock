import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: "The purpose of our lives is to be happy.",
        author: "Dailai Lame"),
    Quote(
        text: "Life is what happens when you're busy making other plans.",
        author: "Some author"),
    Quote(
      text: "Get busy living or get busy dying",
      author: "John Leneon",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awsome quote"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList()),
    );
  }
}
