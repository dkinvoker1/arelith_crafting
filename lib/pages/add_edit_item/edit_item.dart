import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'add_edit_item.dart';

class EditItemPage extends StatelessWidget {
  const EditItemPage(
      {Key? key,
      @PathParam('editedItemDocumentId') required this.editedItemDocumentId})
      : super(key: key);

  final String editedItemDocumentId;

  @override
  Widget build(BuildContext context) {
    return AddEditItemPage(editedItemDocumentId: editedItemDocumentId);
  }
}
