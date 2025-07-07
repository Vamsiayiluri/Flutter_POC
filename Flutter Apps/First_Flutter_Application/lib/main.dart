import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home:QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes=[
    Quote(author:"Arya", text:"Dream big. Start small."),
    Quote(author:"Kathir", text:"You can. End of story."),
    Quote(author:"Mira", text:"Progress, not perfection."),
    Quote(author:"Zane", text:"Stay hungry. Stay foolish."),
    Quote(author:"Noor", text:"Make it happen."),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "Awesome Quotes",
            ),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList()
      ),
    );
  }
}




class SampleCard extends StatefulWidget {

  @override
  State<SampleCard> createState() => _SampleCardState();
}

class _SampleCardState extends State<SampleCard> {
  int currentLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Hello all",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              currentLevel +=1;
            });
          },
          child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/13th.PNG'),
                radius: 42.0,
              ),
            ),
             Divider(
               height: 60.0,
             ),

             Text(
              'Name:',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              'Vamsi',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 26.0),
            Text(
              'Current level:',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              '$currentLevel',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 26.0),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey[600],
                ),
                SizedBox(width: 6.0),
                Text(
                  'vamsi.ayiluri@cognine.com',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

