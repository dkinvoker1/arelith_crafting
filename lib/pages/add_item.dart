// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:arelith_crafting/bloc/add_item/add_item_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';

import '../routes/router.gr.dart';

class AddItemPage extends StatefulWidget {
  AddItemPage({Key? key}) : super(key: key);

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddItemBloc(),
        child: BlocConsumer<AddItemBloc, AddItemState>(
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
            return Form(
              key: _formKey,
              child: Row(
                children: [
                  Flexible(child: Container()),
                  Flexible(
                    child: Column(children: [
                      ItemTextField(name: 'Name'),
                      ItemTextField(name: 'Description'),
                      ItemFileField(),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState?.save();
                            context
                                .read<AddItemBloc>()
                                .add(AddItemEvent.save());
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

class ItemFileField extends StatelessWidget {
  ItemFileField({
    Key? key,
  }) : super(key: key);

  final double _baseSize = 40;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: FormField<PlatformFile>(
        builder: (formFieldState) {
          var selectedImage = formFieldState.value?.bytes;
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () async {
                        var picked = await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowMultiple: false,
                          allowedExtensions: ['jpg', 'jpeg', 'png'],
                        );

                        if (picked != null &&
                            picked.files.first.bytes != null) {
                          context
                              .read<AddItemBloc>()
                              .add(AddItemEvent.setImage(picked.files.first));
                          formFieldState.setValue(picked.files.first);
                        }
                      },
                      child: Row(
                        children: [
                          Text('Select image'),
                          Icon(
                            Icons.upload,
                            semanticLabel: 'asdasd',
                          ),
                        ],
                      )),
                  selectedImage != null
                      ? Image.memory(
                          selectedImage,
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
                      style: TextStyle(color: Color(0xffd32f2f), fontSize: 12))
                  : SizedBox.shrink()
            ],
          );
        },
        validator: (value) {
          if (value == null || value.bytes == null) {
            return 'Please select image';
          }
          return null;
        },
      ),
    );
  }
}

class ItemTextField extends StatelessWidget {
  ItemTextField({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: (newValue) {
          context
              .read<AddItemBloc>()
              .add(AddItemEvent.update(name.toLowerCase(), newValue));
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Insert $name';
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: name,
        ),
      ),
    );
  }
}
