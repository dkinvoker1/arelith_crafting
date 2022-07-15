// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, use_build_context_synchronously, invalid_use_of_protected_member

import 'dart:typed_data';

import 'package:arelith_crafting/bloc/add_edit_item/add_edit_item_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';

import '../routes/router.gr.dart';

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

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();

  final double _baseSize = 40;

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var bloc = AddEditItemBloc();
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
            nameController.text = state.item.name;
            descriptionController.text = state.item.description;

            return Form(
              key: _formKey,
              child: Row(
                children: [
                  Flexible(child: Container()),
                  Flexible(
                    child: Column(children: [
//============================================= Text boxes ================================================
                      ItemTextField(name: 'Name', controller: nameController),
                      ItemTextField(
                          name: 'Description',
                          controller: descriptionController),
//============================================= Image upload ================================================
                      // ItemFileField(name: state.item.imageUrl),
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
                                            formFieldState
                                                .setValue(picked.files.first.bytes);
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
                                        ? Image.memory(
                                            state.fileBytes!,
                                            width: _baseSize,
                                            height: _baseSize,
                                          )
                                        : Container(
                                            width: _baseSize,
                                            height: _baseSize,
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

//=========================== Text field ================================

class ItemTextField extends StatefulWidget {
  ItemTextField({
    Key? key,
    required this.name,
    required this.controller,
  }) : super(key: key);

  final String name;
  final TextEditingController controller;

  @override
  State<ItemTextField> createState() => _ItemTextFieldState();
}

class _ItemTextFieldState extends State<ItemTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.controller,
        onSaved: (newValue) {
          context
              .read<AddEditItemBloc>()
              .add(AddEditItemEvent.update(widget.name.toLowerCase(), newValue));
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Insert ${widget.name}';
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: widget.name,
        ),
      ),
    );
  }
}