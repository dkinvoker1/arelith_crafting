// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, use_build_context_synchronously, invalid_use_of_protected_member, library_private_types_in_public_api, must_call_super

import 'dart:typed_data';

import 'package:arelith_crafting/bloc/add_edit_item/add_edit_item_bloc.dart';
import 'package:arelith_crafting/models/component_item.dart';
import 'package:arelith_crafting/widgets/styled/rounded_elevated_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';

import '../routes/router.gr.dart';
import '../widgets/component_card.dart';
import '../widgets/component_prompt.dart';

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

            return Form(
              key: _formKey,
              child: Row(
                children: [
                  Flexible(child: Container()),
                  Flexible(
                    child: Column(children: [
//============================================= Text boxes ================================================
                      ItemTextField(
                        name: 'Name',
                        initialValue: state.item.name,
                      ),
                      ItemTextField(
                        name: 'Description',
                        initialValue: state.item.description,
                      ),
//============================================= ItemDropdown ================================================
                      ItemDropdown(
                        name: 'Width',
                        initialValue: state.item.width,
                      ),
                      ItemDropdown(
                        name: 'Height',
                        initialValue: state.item.height,
                      ),
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
                                          var picked = await FilePicker.platform
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
                                            context.read<AddEditItemBloc>().add(
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
                                              width:
                                                  _baseSize * state.item.width,
                                              height:
                                                  _baseSize * state.item.height,
                                            ),
                                          )
                                        : Container(
                                            width: _baseSize * state.item.width,
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
                          ? Expanded(
                              child: ComponentsField(
                                  componentItems: state.componentItems!),
                            )
                          : Container(),
//============================================= Save button ================================================
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState?.save();
                            context
                                .read<AddEditItemBloc>()
                                .add(AddEditItemEvent.save());
                          }
                        },
                        child: Text('Submit'),
                      ),
                    ]),
                  ),
                  Flexible(child: Container()),
                ],
              ),
            );
          },
        ));
  }
}

//=======================================================================
//=========================== ItemTextField =============================
//=======================================================================

class ItemTextField extends StatefulWidget {
  ItemTextField({
    Key? key,
    required this.name,
    this.initialValue,
  }) : super(key: key);

  final String name;
  final String? initialValue;

  @override
  State<ItemTextField> createState() => _ItemTextFieldState();
}

class _ItemTextFieldState extends State<ItemTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: widget.initialValue,
        onSaved: (newValue) {
          context.read<AddEditItemBloc>().add(
              AddEditItemEvent.update(widget.name.toLowerCase(), newValue));
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Insert ${widget.name}';
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: widget.name,
        ),
      ),
    );
  }
}

//=======================================================================
//=========================== ItemDropdown ==============================
//=======================================================================

class ItemDropdown extends StatefulWidget {
  ItemDropdown({Key? key, required this.name, this.initialValue})
      : super(key: key);

  final String name;
  final int? initialValue;

  @override
  State<ItemDropdown> createState() => _ItemDropdownState();
}

class _ItemDropdownState extends State<ItemDropdown> {
  int dropdownValue = 1;

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      dropdownValue = widget.initialValue!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: DropdownButtonFormField<int>(
        decoration: InputDecoration(labelText: widget.name),
        items: <int>[1, 2, 3, 4, 5, 6].map<DropdownMenuItem<int>>((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        value: dropdownValue,
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
          context.read<AddEditItemBloc>().add(
              AddEditItemEvent.update(widget.name.toLowerCase(), newValue));
        },
      ),
    );
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

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          await _showMyDialog(context);
        },
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 60,
              maxCrossAxisExtent: 200,
              childAspectRatio: 1,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2),
          itemCount: chosenComponent.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                _showMyDialog(context);
              },
              child: ComponentPrompt(
                item: chosenComponent[index].item,
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext localContext) async {
    List<ComponentCard> componentCards = [];

    for (var component in widget.componentItems) {
      componentCards.add(ComponentCard(component: component));
    }

    return showDialog<void>(
      context: localContext,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
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
      },
    );
  }

  void _updateComponents(List<ComponentItem> componentItems) {
    context
        .read<AddEditItemBloc>()
        .add(AddEditItemEvent.setComponentItems(componentItems));
  }
}
