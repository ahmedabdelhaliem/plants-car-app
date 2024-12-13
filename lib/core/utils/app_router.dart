import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plants/feature/collection/collection_view.dart';
import 'package:plants/feature/details/details_view.dart';
import 'package:plants/feature/home/home_view.dart';
import 'package:plants/feature/profile/profile_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kCollectionView = '/CollectionView';
  static const kProfileView = '/ProfileView';
  static const kDetailsView = '/DetailsView';

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: '/CollectionView',
      builder: (BuildContext context, GoRouterState state) {
        return const CollectionView();
      },
    ),
    GoRoute(
      path: '/ProfileView',
      builder: (BuildContext context, GoRouterState state) {
        return const ProfileView();
      },
    ),
    GoRoute(
      path: '/DetailsView',
      builder: (BuildContext context, GoRouterState state) {
        return const DetailsView();
      },
    ),
  ]);
}
