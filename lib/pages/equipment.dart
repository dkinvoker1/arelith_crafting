// ignore_for_file: prefer_const_constructors_in_immutables, depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/equipment/equipment_bloc.dart';
import '../models/component/component_item.dart';
import '../widgets/component/image.dart';

class EquipmentPage extends StatefulWidget {
  EquipmentPage({Key? key}) : super(key: key);

  @override
  State<EquipmentPage> createState() => _EquipmentPageState();
}

class _EquipmentPageState extends State<EquipmentPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EquipmentBloc()..add(EquipmentEvent.load()),
      child: BlocBuilder<EquipmentBloc, EquipmentState>(
        builder: (context, state) {
          return state.resultsList.isEmpty
              ? Center(child: CircularProgressIndicator())
              : buildResultsAndComponents(state);
        },
      ),
    );
  }

  Widget buildResultsAndComponents(EquipmentState state) {
    return Column(
      children: [
        buildResults(state.resultsList),
        buildComponents(state.componentsList)
      ],
    );
  }

  Widget buildResults(List<ComponentItem> results) {
    var itemsInRow = 5;
    var rowCount = (results.length / itemsInRow).ceil();

    var column = Column(
      children: [],
    );

    for (var r = 0; r < rowCount; r++) {
      var row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      );

      for (var c = 0; c < itemsInRow; c++) {
        var index = r * itemsInRow + c;
        if (index < results.length) {
          row.children.add(ComponentImage(
            component: results[index],
          ));
        }
      }

      column.children.add(row);
    }

    return Column(
      children: [
        Divider(color: Colors.grey),
        Center(
          child: Text(
            'End result',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Divider(color: Colors.grey),
        column,
      ],
    );
  }

  Widget buildComponents(List<ComponentItem> components) {
    var itemsInRow = 5;

    var rowCount = (components.length / itemsInRow).ceil();

    var column = Column(
      children: [],
    );

    for (var r = 0; r < rowCount; r++) {
      var row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      );

      for (var c = 0; c < itemsInRow; c++) {
        var index = r * itemsInRow + c;
        if (index < components.length) {
          row.children.add(ComponentImage(
            component: components[index],
          ));
        }
      }

      column.children.add(row);
    }

    return Column(
      children: [
        Divider(color: Colors.grey),
        Center(
          child: Text(
            'Components',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Divider(color: Colors.grey),
        column,
      ],
    );
  }
}
