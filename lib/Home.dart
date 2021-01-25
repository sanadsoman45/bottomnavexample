import 'package:flutter/material.dart';
import 'Placeholder.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return navbar();
  }
}

class navbar extends State<Home>{
  int _curindex=0;
  final List<Widget> _children = [custnav("Fragment1", Colors.amber.shade700),
    custnav("Fragment2",Colors.redAccent.shade200),
    custnav("Fragment3", Colors.greenAccent.shade200)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_curindex],
      appBar: AppBar(
        title: Text("Navbar Example"),
        centerTitle: true,
        backgroundColor: Colors.amber.shade700,
      ),
      bottomNavigationBar: Builder(
        builder: (context)=>BottomNavigationBar(
          currentIndex: _curindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("Person")),
            BottomNavigationBarItem(icon: Icon(Icons.storefront_rounded),title: Text("Store")),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit),title: Text("ac_unit"))
          ],
          onTap: (int index){
            setState(() {
              _curindex = index;
            });
            final snackbar1=SnackBar(content: Text("You have Tapped Element at $index position"),duration: const Duration(seconds: 1),);
            Scaffold.of(context).showSnackBar(snackbar1);
          },
        ),
      ),
    );
  }

  void _Tappednavitem(int index) {
    setState(() {
      _curindex = index;
    });
    final snackbar=SnackBar(content: Text("Index of clicked item is:$index"));
    Scaffold.of(context).showSnackBar(snackbar);
  }


}