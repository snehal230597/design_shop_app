import 'package:flutter/material.dart';


class ListDataTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(

        columns: const <DataColumn>[

          DataColumn(
            label: Text(
              'Credit Card',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Name on Card',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Expires on',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Action',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Visa card ending in 4392')),
              DataCell(Text('Snehal Prajapati')),
              DataCell(Text('04/2023')),
              DataCell(Text('Edit Delete', style: TextStyle(color: Colors.cyan),),),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Master card ending in 5392')),
              DataCell(Text('Snehal Prajapati')),
              DataCell(Text('07/2022')),
              DataCell(Text('Edit Delete', style: TextStyle(color: Colors.cyan),),),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Visa card ending in 2285')),
              DataCell(Text('Snehal Prajapati')),
              DataCell(Text('11/2021')),
              DataCell(Text('Edit Delete', style: TextStyle(color: Colors.cyan),),),
            ],
          ),
        ],
      ),
    );
  }
}
