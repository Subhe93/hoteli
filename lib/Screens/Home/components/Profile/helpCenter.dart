import 'package:flutter/material.dart';
import 'package:hoteli/Screens/login.dart/components/roundedTextBox.dart';
import 'package:hoteli/Util/fadeAnimations.dart';
import 'package:hoteli/constants.dart';

class HelpCenterScreen extends StatefulWidget {
  HelpCenterScreen({Key key}) : super(key: key);

  @override
  _HelpCenterScreenState createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  List<Item> _books = generateItems(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: darkGold,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: FadeAnimation(
                0.5,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "How Can We Help ?",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RoundedTextBox(
                          hint: 'Search help Center',
                        )),
                  ],
                ),
              ),
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: darkGold),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Common Questions :",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: _buildPanel(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _books[index].isExpanded = !isExpanded;
        });
      },
      children: _books.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                item.headerValue,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'sed ut perspiciatis unde',
      expandedValue:
          'Usu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes molestie. Sed ad debet scaevola, In eum omnes molestieUsu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes molestie. Sed ad debet scaevola, In eum omnes molestieUsu habeo equidem sanctus no. Suas summo id sed, eratUsu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes molestie. Sed ad debet scaevola, In eum omnes molestieUsu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes molestie. Sed ad debet scaevola, In eum omnes molestieUsu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes molestieUsu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes molestie. Sed ad debet scaevola, In eum omnes molestieUsu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes molestie. Sed ad debet scaevola, In eum omnes molestieUsu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes molestieUsu habeo equidem sanctus non eum omnes molestieUsu habeo equidem sanctus no. Suas summo id sed, erat erant oporteat cu pri. In eum omnes . In eum omnes molestie',
    );
  });
}
