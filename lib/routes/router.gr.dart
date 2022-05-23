// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/item_list.dart' as _i2;
import '../pages/recipe.dart' as _i3;
import 'menu_wrapper.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MenuWrapper.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuWrapper());
    },
    ItemListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ItemListPage());
    },
    RecipeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RecipePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MenuWrapper.name, path: '/', children: [
          _i4.RouteConfig('#redirect',
              path: '',
              parent: MenuWrapper.name,
              redirectTo: 'items',
              fullMatch: true),
          _i4.RouteConfig(ItemListRoute.name,
              path: 'items', parent: MenuWrapper.name),
          _i4.RouteConfig(RecipeRoute.name,
              path: 'recipe', parent: MenuWrapper.name)
        ])
      ];
}

/// generated route for
/// [_i1.MenuWrapper]
class MenuWrapper extends _i4.PageRouteInfo<void> {
  const MenuWrapper({List<_i4.PageRouteInfo>? children})
      : super(MenuWrapper.name, path: '/', initialChildren: children);

  static const String name = 'MenuWrapper';
}

/// generated route for
/// [_i2.ItemListPage]
class ItemListRoute extends _i4.PageRouteInfo<void> {
  const ItemListRoute() : super(ItemListRoute.name, path: 'items');

  static const String name = 'ItemListRoute';
}

/// generated route for
/// [_i3.RecipePage]
class RecipeRoute extends _i4.PageRouteInfo<void> {
  const RecipeRoute() : super(RecipeRoute.name, path: 'recipe');

  static const String name = 'RecipeRoute';
}
