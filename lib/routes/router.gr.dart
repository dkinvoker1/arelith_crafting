// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../pages/add_edit_item/add_item.dart' as _i4;
import '../pages/add_edit_item/edit_item.dart' as _i5;
import '../pages/equipment.dart' as _i7;
import '../pages/item_list.dart' as _i2;
import '../pages/log_in.dart' as _i3;
import '../pages/recipe.dart' as _i6;
import 'menu_wrapper.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MenuWrapper.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MenuWrapper(),
      );
    },
    ItemListRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ItemListPage(),
      );
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.LogInPage(
          key: args.key,
          onLoginCallback: args.onLoginCallback,
        ),
      );
    },
    AddItemRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AddItemPage(),
      );
    },
    EditItemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditItemRouteArgs>(
          orElse: () => EditItemRouteArgs(
              editedItemDocumentId:
                  pathParams.getString('editedItemDocumentId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.EditItemPage(
          key: args.key,
          editedItemDocumentId: args.editedItemDocumentId,
        ),
      );
    },
    RecipeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RecipeRouteArgs>(
          orElse: () => RecipeRouteArgs(
              rootItemDocumentId: pathParams.getString('rootItemDocumentId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.RecipePage(
          key: args.key,
          rootItemDocumentId: args.rootItemDocumentId,
        ),
      );
    },
    EquipmentRoute.name: (routeData) {
      final args = routeData.argsAs<EquipmentRouteArgs>(
          orElse: () => const EquipmentRouteArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.EquipmentPage(key: args.key),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          MenuWrapper.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              '#redirect',
              path: '',
              parent: MenuWrapper.name,
              redirectTo: 'items',
              fullMatch: true,
            ),
            _i8.RouteConfig(
              ItemListRoute.name,
              path: 'items',
              parent: MenuWrapper.name,
            ),
            _i8.RouteConfig(
              LogInRoute.name,
              path: 'logIn',
              parent: MenuWrapper.name,
            ),
            _i8.RouteConfig(
              AddItemRoute.name,
              path: 'addItem',
              parent: MenuWrapper.name,
            ),
            _i8.RouteConfig(
              EditItemRoute.name,
              path: 'editItem/:editedItemDocumentId',
              parent: MenuWrapper.name,
            ),
            _i8.RouteConfig(
              RecipeRoute.name,
              path: 'recipe/:rootItemDocumentId',
              parent: MenuWrapper.name,
            ),
            _i8.RouteConfig(
              EquipmentRoute.name,
              path: 'equipment',
              parent: MenuWrapper.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MenuWrapper]
class MenuWrapper extends _i8.PageRouteInfo<void> {
  const MenuWrapper({List<_i8.PageRouteInfo>? children})
      : super(
          MenuWrapper.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MenuWrapper';
}

/// generated route for
/// [_i2.ItemListPage]
class ItemListRoute extends _i8.PageRouteInfo<void> {
  const ItemListRoute()
      : super(
          ItemListRoute.name,
          path: 'items',
        );

  static const String name = 'ItemListRoute';
}

/// generated route for
/// [_i3.LogInPage]
class LogInRoute extends _i8.PageRouteInfo<LogInRouteArgs> {
  LogInRoute({
    _i9.Key? key,
    required dynamic Function(bool) onLoginCallback,
  }) : super(
          LogInRoute.name,
          path: 'logIn',
          args: LogInRouteArgs(
            key: key,
            onLoginCallback: onLoginCallback,
          ),
        );

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({
    this.key,
    required this.onLoginCallback,
  });

  final _i9.Key? key;

  final dynamic Function(bool) onLoginCallback;

  @override
  String toString() {
    return 'LogInRouteArgs{key: $key, onLoginCallback: $onLoginCallback}';
  }
}

/// generated route for
/// [_i4.AddItemPage]
class AddItemRoute extends _i8.PageRouteInfo<void> {
  const AddItemRoute()
      : super(
          AddItemRoute.name,
          path: 'addItem',
        );

  static const String name = 'AddItemRoute';
}

/// generated route for
/// [_i5.EditItemPage]
class EditItemRoute extends _i8.PageRouteInfo<EditItemRouteArgs> {
  EditItemRoute({
    _i9.Key? key,
    required String editedItemDocumentId,
  }) : super(
          EditItemRoute.name,
          path: 'editItem/:editedItemDocumentId',
          args: EditItemRouteArgs(
            key: key,
            editedItemDocumentId: editedItemDocumentId,
          ),
          rawPathParams: {'editedItemDocumentId': editedItemDocumentId},
        );

  static const String name = 'EditItemRoute';
}

class EditItemRouteArgs {
  const EditItemRouteArgs({
    this.key,
    required this.editedItemDocumentId,
  });

  final _i9.Key? key;

  final String editedItemDocumentId;

  @override
  String toString() {
    return 'EditItemRouteArgs{key: $key, editedItemDocumentId: $editedItemDocumentId}';
  }
}

/// generated route for
/// [_i6.RecipePage]
class RecipeRoute extends _i8.PageRouteInfo<RecipeRouteArgs> {
  RecipeRoute({
    _i9.Key? key,
    required String rootItemDocumentId,
  }) : super(
          RecipeRoute.name,
          path: 'recipe/:rootItemDocumentId',
          args: RecipeRouteArgs(
            key: key,
            rootItemDocumentId: rootItemDocumentId,
          ),
          rawPathParams: {'rootItemDocumentId': rootItemDocumentId},
        );

  static const String name = 'RecipeRoute';
}

class RecipeRouteArgs {
  const RecipeRouteArgs({
    this.key,
    required this.rootItemDocumentId,
  });

  final _i9.Key? key;

  final String rootItemDocumentId;

  @override
  String toString() {
    return 'RecipeRouteArgs{key: $key, rootItemDocumentId: $rootItemDocumentId}';
  }
}

/// generated route for
/// [_i7.EquipmentPage]
class EquipmentRoute extends _i8.PageRouteInfo<EquipmentRouteArgs> {
  EquipmentRoute({_i9.Key? key})
      : super(
          EquipmentRoute.name,
          path: 'equipment',
          args: EquipmentRouteArgs(key: key),
        );

  static const String name = 'EquipmentRoute';
}

class EquipmentRouteArgs {
  const EquipmentRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'EquipmentRouteArgs{key: $key}';
  }
}
