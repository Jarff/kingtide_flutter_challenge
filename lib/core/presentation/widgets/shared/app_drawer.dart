import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:kingtide_challenge/core/routes.dart';
import 'package:kingtide_challenge/inject/app_injector.dart';
import 'package:kingtide_challenge/core/core.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesStore = getIt<FavoriteStores>();

    return Drawer(
      backgroundColor: ColorName.surface,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: ColorName.primary),
            child: const Text('Challenge App', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          Observer(
            builder: (_) => ListTile(
              leading: const Icon(Icons.favorite, color: Colors.redAccent),
              title: const Text('Favorites'),
              trailing: favoritesStore.favorites.isNotEmpty
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(color: ColorName.secondary, borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        '${favoritesStore.favorites.length}',
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )
                  : null,
              onTap: () {
                // Handle favorites tap
                context.push(Routes.favorites);
              },
            ),
          ),
        ],
      ),
    );
  }
}
