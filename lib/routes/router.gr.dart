// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/add_edit_item.dart' as _i3;
import '../pages/item_list.dart' as _i2;
import '../pages/recipe.dart' as _i4;
import 'menu_wrapper.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MenuWrapper.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuWrapper());
    },
    ItemListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ItemListPage());
    },
    AddEditItemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AddEditItemRouteArgs>(
          orElse: () => AddEditItemRouteArgs(
              editedItemDocumentId:
                  pathParams.optString('editedItemDocumentId')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.AddEditItemPage(
              key: args.key, editedItemDocumentId: args.editedItemDocumentId));
    },
    RecipeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RecipeRouteArgs>(
          orElse: () => RecipeRouteArgs(
              rootItemDocumentId: pathParams.getString('rootItemDocumentId')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.RecipePage(
              key: args.key, rootItemDocumentId: args.rootItemDocumentId));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MenuWrapper.name, path: '/', children: [
          _i5.RouteConfig('#redirect',
              path: '',
              parent: MenuWrapper.name,
              redirectTo: 'items',
              fullMatch: true),
          _i5.RouteConfig(ItemListRoute.name,
              path: 'items', parent: MenuWrapper.name),
          _i5.RouteConfig(AddEditItemRoute.name,
              path: 'editItem/:editedItemDocumentId', parent: MenuWrapper.name),
          _i5.RouteConfig(RecipeRoute.name,
              path: 'recipe/:rootItemDocumentId', parent: MenuWrapper.name)
        ])
      ];
}

/// generated route for
/// [_i1.MenuWrapper]
class MenuWrapper extends _i5.PageRouteInfo<void> {
  const MenuWrapper({List<_i5.PageRouteInfo>? children})
      : super(MenuWrapper.name, path: '/', initialChildren: children);

  static const String name = 'MenuWrapper';
}

/// generated route for
/// [_i2.ItemListPage]
class ItemListRoute extends _i5.PageRouteInfo<void> {
  const ItemListRoute() : super(ItemListRoute.name, path: 'items');

  static const String name = 'ItemListRoute';
}

/// generated route for
/// [_i3.AddEditItemPage]
class AddEditItemRoute extends _i5.PageRouteInfo<AddEditItemRouteArgs> {
  AddEditItemRoute({_i6.Key? key, String? editedItemDocumentId})
      : super(AddEditItemRoute.name,
            path: 'editItem/:editedItemDocumentId',
            args: AddEditItemRouteArgs(
                key: key, editedItemDocumentId: editedItemDocumentId),
            rawPathParams: {'editedItemDocumentId': editedItemDocumentId});

  static const String name = 'AddEditItemRoute';
}

class AddEditItemRouteArgs {
  const AddEditItemRouteArgs({this.key, this.editedItemDocumentId});

  final _i6.Key? key;

  final String? editedItemDocumentId;

  @override
  String toString() {
    return 'AddEditItemRouteArgs{key: $key, editedItemDocumentId: $editedItemDocumentId}';
  }
}

/// generated route for
/// [_i4.RecipePage]
class RecipeRoute extends _i5.PageRouteInfo<RecipeRouteArgs> {
  RecipeRoute({_i6.Key? key, required String rootItemDocumentId})
      : super(RecipeRoute.name,
            path: 'recipe/:rootItemDocumentId',
            args: RecipeRouteArgs(
                key: key, rootItemDocumentId: rootItemDocumentId),
            rawPathParams: {'rootItemDocumentId': rootItemDocumentId});

  static const String name = 'RecipeRoute';
}

class RecipeRouteArgs {
  const RecipeRouteArgs({this.key, required this.rootItemDocumentId});

  final _i6.Key? key;

  final String rootItemDocumentId;

  @override
  String toString() {
    return 'RecipeRouteArgs{key: $key, rootItemDocumentId: $rootItemDocumentId}';
  }
}
