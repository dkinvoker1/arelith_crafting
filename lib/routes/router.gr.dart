// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../pages/add_edit_item/add_item.dart' as _i4;
import '../pages/add_edit_item/edit_item.dart' as _i5;
import '../pages/item_list.dart' as _i2;
import '../pages/log_in.dart' as _i3;
import '../pages/recipe.dart' as _i6;
import 'menu_wrapper.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MenuWrapper.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuWrapper());
    },
    ItemListRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ItemListPage());
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.LogInPage(
              key: args.key, onLoginCallback: args.onLoginCallback));
    },
    AddItemRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AddItemPage());
    },
    EditItemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditItemRouteArgs>(
          orElse: () => EditItemRouteArgs(
              editedItemDocumentId:
                  pathParams.getString('editedItemDocumentId')));
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.EditItemPage(
              key: args.key, editedItemDocumentId: args.editedItemDocumentId));
    },
    RecipeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RecipeRouteArgs>(
          orElse: () => RecipeRouteArgs(
              rootItemDocumentId: pathParams.getString('rootItemDocumentId')));
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.RecipePage(
              key: args.key, rootItemDocumentId: args.rootItemDocumentId));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(MenuWrapper.name, path: '/', children: [
          _i7.RouteConfig('#redirect',
              path: '',
              parent: MenuWrapper.name,
              redirectTo: 'items',
              fullMatch: true),
          _i7.RouteConfig(ItemListRoute.name,
              path: 'items', parent: MenuWrapper.name),
          _i7.RouteConfig(LogInRoute.name,
              path: 'logIn', parent: MenuWrapper.name),
          _i7.RouteConfig(AddItemRoute.name,
              path: 'addItem', parent: MenuWrapper.name),
          _i7.RouteConfig(EditItemRoute.name,
              path: 'editItem/:editedItemDocumentId', parent: MenuWrapper.name),
          _i7.RouteConfig(RecipeRoute.name,
              path: 'recipe/:rootItemDocumentId', parent: MenuWrapper.name)
        ])
      ];
}

/// generated route for
/// [_i1.MenuWrapper]
class MenuWrapper extends _i7.PageRouteInfo<void> {
  const MenuWrapper({List<_i7.PageRouteInfo>? children})
      : super(MenuWrapper.name, path: '/', initialChildren: children);

  static const String name = 'MenuWrapper';
}

/// generated route for
/// [_i2.ItemListPage]
class ItemListRoute extends _i7.PageRouteInfo<void> {
  const ItemListRoute() : super(ItemListRoute.name, path: 'items');

  static const String name = 'ItemListRoute';
}

/// generated route for
/// [_i3.LogInPage]
class LogInRoute extends _i7.PageRouteInfo<LogInRouteArgs> {
  LogInRoute({_i8.Key? key, required dynamic Function(bool) onLoginCallback})
      : super(LogInRoute.name,
            path: 'logIn',
            args: LogInRouteArgs(key: key, onLoginCallback: onLoginCallback));

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({this.key, required this.onLoginCallback});

  final _i8.Key? key;

  final dynamic Function(bool) onLoginCallback;

  @override
  String toString() {
    return 'LogInRouteArgs{key: $key, onLoginCallback: $onLoginCallback}';
  }
}

/// generated route for
/// [_i4.AddItemPage]
class AddItemRoute extends _i7.PageRouteInfo<void> {
  const AddItemRoute() : super(AddItemRoute.name, path: 'addItem');

  static const String name = 'AddItemRoute';
}

/// generated route for
/// [_i5.EditItemPage]
class EditItemRoute extends _i7.PageRouteInfo<EditItemRouteArgs> {
  EditItemRoute({_i8.Key? key, required String editedItemDocumentId})
      : super(EditItemRoute.name,
            path: 'editItem/:editedItemDocumentId',
            args: EditItemRouteArgs(
                key: key, editedItemDocumentId: editedItemDocumentId),
            rawPathParams: {'editedItemDocumentId': editedItemDocumentId});

  static const String name = 'EditItemRoute';
}

class EditItemRouteArgs {
  const EditItemRouteArgs({this.key, required this.editedItemDocumentId});

  final _i8.Key? key;

  final String editedItemDocumentId;

  @override
  String toString() {
    return 'EditItemRouteArgs{key: $key, editedItemDocumentId: $editedItemDocumentId}';
  }
}

/// generated route for
/// [_i6.RecipePage]
class RecipeRoute extends _i7.PageRouteInfo<RecipeRouteArgs> {
  RecipeRoute({_i8.Key? key, required String rootItemDocumentId})
      : super(RecipeRoute.name,
            path: 'recipe/:rootItemDocumentId',
            args: RecipeRouteArgs(
                key: key, rootItemDocumentId: rootItemDocumentId),
            rawPathParams: {'rootItemDocumentId': rootItemDocumentId});

  static const String name = 'RecipeRoute';
}

class RecipeRouteArgs {
  const RecipeRouteArgs({this.key, required this.rootItemDocumentId});

  final _i8.Key? key;

  final String rootItemDocumentId;

  @override
  String toString() {
    return 'RecipeRouteArgs{key: $key, rootItemDocumentId: $rootItemDocumentId}';
  }
}
