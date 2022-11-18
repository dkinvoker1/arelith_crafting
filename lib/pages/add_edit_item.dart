// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, use_build_context_synchronously, invalid_use_of_protected_member, library_private_types_in_public_api, must_call_super

import 'dart:typed_data';

import 'package:arelith_crafting/bloc/add_edit_item/add_edit_item_bloc.dart';
import 'package:arelith_crafting/widgets/form/int_dropdown.dart';
import 'package:arelith_crafting/widgets/form/text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';

import '../models/component/component_item.dart';
import '../routes/router.gr.dart';
import '../widgets/component/card.dart';
import '../widgets/component/prompt.dart';
import '../widgets/styled_elevated_button/rounded_elevated_button.dart';

class AddEditItemPage extends StatefulWidget {
  AddEditItemPage({
    Key? key,
    @PathParam('editedItemDocumentId') this.editedItemDocumentId,
  }) : super(key: key);

  final String? editedItemDocumentId;

  @override
  State<AddEditItemPage> createState() => _AddEditItemPageState();
}

class _AddEditItemPageState extends State<AddEditItemPage> {
  final _formKey = GlobalKey<FormState>();

  final double _baseSize = 40;

  @override
  Widget build(BuildContext context) {
    var bloc = AddEditItemBloc();

    bloc.add(AddEditItemEvent.initialiseComponents());

    if (widget.editedItemDocumentId != null) {
      bloc.add(AddEditItemEvent.load(widget.editedItemDocumentId!));
    }

    return BlocProvider(
        create: (context) => bloc,
        child: BlocConsumer<AddEditItemBloc, AddEditItemState>(
          listenWhen: (previousState, state) {
            if (previousState.exception != state.exception ||
                previousState.isUploaded != state.isUploaded) {
              return true;
            }
            return false;
          },
          listener: (context, state) {
            if (state.isUploaded) {
              context.router.push(ItemListRoute());
            } else {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Item upload unsuccesfull'),
                  content: Text(state.exception!.toString()),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            }
          },
          builder: (context, state) {
            if (widget.editedItemDocumentId != null && state.loadPrevious) {
              return Center(child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Row(
                  children: [
                    Flexible(child: Container()),
                    Flexible(
                      child: Column(children: [
                        //============================================= Text boxes ================================================
                        ArelithTextFormField(
                          name: 'Name',
                          onSaved: (newValue) {
                            context.read<AddEditItemBloc>().add(
                                AddEditItemEvent.update(
                                    'Name'.toLowerCase(), newValue));
                          },
                          initialValue: state.item.name,
                        ),
                        ArelithTextFormField(
                          name: 'Description',
                          onSaved: (newValue) {
                            context.read<AddEditItemBloc>().add(
                                AddEditItemEvent.update(
                                    'Description'.toLowerCase(), newValue));
                          },
                          initialValue: state.item.name,
                        ),
                        //============================================= ItemDropdown ================================================
                        ArelithIntDropdown(
                            name: 'Width',
                            initialValue: state.item.width,
                            onChanged: (newValue) {
                              context.read<AddEditItemBloc>().add(
                                  AddEditItemEvent.update(
                                      'Width'.toLowerCase(), newValue));
                            }),
                        ArelithIntDropdown(
                            name: 'Height',
                            initialValue: state.item.height,
                            onChanged: (newValue) {
                              context.read<AddEditItemBloc>().add(
                                  AddEditItemEvent.update(
                                      'Height'.toLowerCase(), newValue));
                            }),
                        //============================================= Image upload ================================================
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FormField<Uint8List>(
                            builder: (formFieldState) {
                              return Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () async {
                                            var picked = await FilePicker
                                                .platform
                                                .pickFiles(
                                              type: FileType.custom,
                                              allowMultiple: false,
                                              allowedExtensions: [
                                                'jpg',
                                                'jpeg',
                                                'png'
                                              ],
                                            );

                                            if (picked != null &&
                                                picked.files.first.bytes !=
                                                    null) {
                                              context
                                                  .read<AddEditItemBloc>()
                                                  .add(
                                                      AddEditItemEvent.setImage(
                                                          picked.files.first));
                                              formFieldState.setValue(
                                                  picked.files.first.bytes);
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              Text('Select image'),
                                              Icon(
                                                Icons.upload,
                                              ),
                                            ],
                                          )),
                                      state.fileBytes != null
                                          ? Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.grey)),
                                              child: Image.memory(
                                                fit: BoxFit.fill,
                                                state.fileBytes!,
                                                width: _baseSize *
                                                    state.item.width,
                                                height: _baseSize *
                                                    state.item.height,
                                              ),
                                            )
                                          : Container(
                                              width:
                                                  _baseSize * state.item.width,
                                              height:
                                                  _baseSize * state.item.height,
                                              color: Colors.white,
                                            ),
                                    ],
                                  ),
                                  formFieldState.hasError
                                      ? Text(formFieldState.errorText!,
                                          style: TextStyle(
                                              color: Color(0xffd32f2f),
                                              fontSize: 12))
                                      : SizedBox.shrink()
                                ],
                              );
                            },
                            validator: (value) {
                              if (state.fileBytes == null) {
                                return 'Please select image';
                              }
                              return null;
                            },
                          ),
                        ),
                        //============================================= Components ================================================
                        state.componentItems != null
                            ? ComponentsField(
                                componentItems: state.componentItems!)
                            : Container(),
                        //============================================= Save button ================================================
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RoundedElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState?.save();
                                context
                                    .read<AddEditItemBloc>()
                                    .add(AddEditItemEvent.save());
                              }
                            },
                            child: Text('Save'),
                          ),
                        )
                      ]),
                    ),
                    Flexible(child: Container()),
                  ],
                ),
              ),
            );
          },
        ));
  }
}

//=======================================================================
//=========================== ComponentsField ==============================
//=======================================================================

class ComponentsField extends StatefulWidget {
  const ComponentsField({super.key, required this.componentItems});

  final List<ComponentItem> componentItems;

  @override
  _ComponentsFieldState createState() => _ComponentsFieldState();
}

class _ComponentsFieldState extends State<ComponentsField> {
  @override
  Widget build(BuildContext context) {
    var chosenComponent =
        widget.componentItems.where((element) => element.quantity > 0).toList();

    var column = Column(
      children: [],
    );

    var rowWidth = 3;
    var rows = (chosenComponent.length / rowWidth).ceil();
    double containerHeight = rows * 60 + 4;

    for (var r = 0; r < rows; r++) {
      var row = Row(
        children: [],
      );

      for (var c = 0; c < rowWidth; c++) {
        var index = r * rowWidth + c;
        if (index < chosenComponent.length) {
          row.children.add(ComponentPrompt(
              component: chosenComponent[index],
              onPressed: () {
                _showMyDialog(context);
              }));
        } else {
          row.children.add(Expanded(child: SizedBox()));
        }
      }
      column.children.add(row);
    }

    if (column.children.isEmpty) {
      column.children.add(Row());
      containerHeight = 64;
    }

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            height: containerHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Colors.grey.shade700,
                width: 1.0,
                style: BorderStyle.solid,
              ),
            ),
            child: InkWell(
                onTap: () async {
                  await _showMyDialog(context);
                },
                child: column),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      'Components',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _showMyDialog(BuildContext localContext) async {
    List<ComponentCard> componentCards = [];

    return showDialog<void>(
      context: localContext,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String searchText = '';

        return StatefulBuilder(builder: (context, setState) {
          componentCards.clear();
          var filteredComponentItems = widget.componentItems.where((element) =>
              element.item.name
                  .toLowerCase()
                  .contains(searchText.toLowerCase()));
          for (var component in filteredComponentItems) {
            componentCards.add(ComponentCard(component: component));
          }

          return AlertDialog(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    searchText = text;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search',
                ),
              ),
            ),
            content: SingleChildScrollView(
                child: Column(
              children: componentCards,
            )),
            actionsAlignment: MainAxisAlignment.spaceEvenly,
            actions: <Widget>[
              RoundedElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.red,
                child: Text('Cancel'),
              ),
              RoundedElevatedButton(
                onPressed: () {
                  var componentItems =
                      componentCards.map((e) => e.component).toList();
                  _updateComponents(componentItems);
                  Navigator.of(context).pop();
                },
                color: Colors.green,
                child: Text('OK'),
              )
            ],
          );
        });
      },
    );
  }

  void _updateComponents(List<ComponentItem> componentItems) {
    context
        .read<AddEditItemBloc>()
        .add(AddEditItemEvent.setComponentItems(componentItems));
  }
}
