import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final List<String> allItems = [

    "capteur de température",
    "oxymètre",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0341),
      appBar: AppBar(title: Text("Search ")),
      body: SearchList(items: allItems),
    );
       
  }
}
class SearchList extends StatefulWidget {
  final List<String> items;

  SearchList({required this.items});

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  TextEditingController searchController = TextEditingController();
  List<String> filteredItems = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(filteredItems[index]),
                textColor: Colors.orange,
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    filteredItems = widget.items;
    searchController.addListener(_filterItems);
  }

  void _filterItems() {
    setState(() {
      filteredItems = widget.items
          .where((item) => item.toLowerCase().contains(searchController.text.toLowerCase()))
          .toList();
    });
  }
}