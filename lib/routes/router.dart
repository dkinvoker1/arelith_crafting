// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:arelith_crafting/pages/add_edit_item.dart';
import 'package:arelith_crafting/pages/item_list.dart';
import 'package:arelith_crafting/pages/recipe.dart';
import 'package:arelith_crafting/routes/menu_wrapper.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MenuWrapper, initial: true, children: [
      AutoRoute(page: ItemListPage, path: 'items', initial: true),
      AutoRoute(
        page: AddEditItemPage,
        path: 'editItem/:editedItemDocumentId',
      ),
      AutoRoute(
        page: RecipePage,
        path: 'recipe/:rootItemDocumentId',
      ),
    ])
  ],
)
class $AppRouter {}
