import 'package:direct_select/direct_select.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

class Table1 extends StatefulWidget {
  @override
  _Table1State createState() => _Table1State();
}

class _Table1State extends State<Table1> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Transform.translate(
          offset: Offset(0, 56),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 14),
                child: Text(
                  'Consulter Budget',
                  textAlign: TextAlign.left,
                  style: AppTheme.display1,
                ),
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
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Tony')),
                        DataCell(Text('8')),
                        DataCell(Text('8')),
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

class MySelectionItem extends StatelessWidget {
  final String title;
  final bool isForList;

  const MySelectionItem({Key key, this.title, this.isForList = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: isForList
          ? Padding(
              child: _buildItem(context),
              padding: EdgeInsets.all(10.0),
            )
          : Card(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                children: <Widget>[
                  _buildItem(context),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
    );
  }

  Widget _buildItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: FittedBox(
          child: Text(
        title,
      )),
    );
  }
}
