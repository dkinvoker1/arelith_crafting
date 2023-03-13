// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:arelith_crafting/pages/item_list.dart';
import 'package:arelith_crafting/pages/log_in.dart';
import 'package:arelith_crafting/pages/recipe.dart';
import 'package:arelith_crafting/routes/menu_wrapper.dart';
import 'package:auto_route/auto_route.dart';
import '../pages/add_edit_item/add_item.dart';
import '../pages/add_edit_item/edit_item.dart';
import '../pages/equipment.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MenuWrapper, initial: true, children: [
      AutoRoute(page: ItemListPage, path: 'items', initial: true),
      AutoRoute(page: LogInPage, path: 'logIn'),
      AutoRoute(
        page: AddItemPage,
        path: 'addItem',
      ),
      AutoRoute(
        page: EditItemPage,
        path: 'editItem/:editedItemDocumentId',
      ),
      AutoRoute(
        page: RecipePage,
        path: 'recipe/:rootItemDocumentId',
      ),
      AutoRoute(
        page: EquipmentPage,
        path: 'equipment',
      ),
    ])
  ],
)
class $AppRouter {}
