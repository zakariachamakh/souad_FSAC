import 'package:direct_select/direct_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_souad/ui_view/tablebtn1.dart';

import 'app_theme.dart';

class Table2 extends StatefulWidget {
  @override
  _Table2State createState() => _Table2State();
}

class _Table2State extends State<Table2> {
  int selectedIndex1 = 0;
  final elements1 = [
    "porduct 1",
    "porduct 2",
    "porduct 3",
    "porduct 4",
    "porduct 5",
    "porduct 6",
  ];

  List<Widget> _buildItems1() {
    return elements1
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Transform.translate(
          offset: Offset(0, 56),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                    child: Text(
                      'Besoins',
                      textAlign: TextAlign.left,
                      style: AppTheme.display1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24, top: 24),
                    child: DirectSelect(
                        itemExtent: 35.0,
                        selectedIndex: selectedIndex1,
                        child: MySelectionItem(
                          isForList: false,
                          title: elements1[selectedIndex1],
                        ),
                        onSelectedItemChanged: (index) => setState(() {
                              selectedIndex1 = index;
                              print(index);
                            }),
                        items: _buildItems1()),
                  ),
                ],
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Bession')),
                      DataColumn(label: Text('Prix')),
                      DataColumn(label: Text('Cree le')),
                      DataColumn(label: Text('Modifie le')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('1')),
                        DataCell(Text('Arya')),
                        DataCell(Text('6')),
                        DataCell(Text('6')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('12')),
                        DataCell(Text('John')),
                        DataCell(Text('9')),
                        DataCell(Text('9')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
