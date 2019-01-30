import 'package:flutter/material.dart';

class DataApp extends StatefulWidget{
  @override
  DataAppState createState() => new DataAppState();
}

class DataAppState extends State<DataApp>{
  void getSelectedRowInfo(){
    print('selected item row name here...');
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text('data table'),

      ),
      body: Container(
        child: DataTable(
          onSelectAll: (b) {},
          sortAscending: true,
          columns: <DataColumn>[
            DataColumn(
              label: Text('Item'),
            ),
            DataColumn(
              label: Text('Price'),

            ),
          ],
          rows: items.map(
    (itemRow) => DataRow(
      cells: [
        DataCell(
          Text(itemRow.itemName),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Text(itemRow.itemPrice),
          showEditIcon: true,
          placeholder: false,
          onTap: getSelectedRowInfo,
        ),
      ],
    ),
          )
            .toList(),
        ),
      ),
    );
  }

}
class ItemInfo{
  String itemName;
  String itemPrice;

  ItemInfo({
    this.itemName,
    this.itemPrice,
});
}

var items = <ItemInfo>[
  ItemInfo(
    itemName: 'Item A',
    itemPrice: '240',
  ),
  ItemInfo(
    itemName: 'Item b',
    itemPrice: '230',
  ),
  ItemInfo(
    itemName: 'Item c',
    itemPrice: '200',
  ),

];