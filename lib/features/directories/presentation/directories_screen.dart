import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:group_maker/core/components/component_container.dart';
import 'package:group_maker/core/routing/routes.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';
import 'package:group_maker/dependencies/inject_dependencies.dart';
import 'package:group_maker/features/directories/domain/entities/directory.dart';
import 'package:group_maker/features/directories/presentation/bloc/directories_bloc.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

class DirectoriesScreen extends StatelessWidget {
  const DirectoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide a fresh DirectoriesBloc and immediately trigger load
    return BlocProvider(
      create: (_) =>
          getIt<DirectoriesBloc>()..add(const DirectoriesEvent.started()),
      child: const _DirectoriesView(),
    );
  }
}

class _DirectoriesView extends StatelessWidget {
  const _DirectoriesView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: context.brandColors.primary,
        onPressed: () async {
          // Wait for create screen to pop, then refresh the list
          await context.push(AppRoutes.createDirectory);
          if (context.mounted) {
            context
                .read<DirectoriesBloc>()
                .add(const DirectoriesEvent.started());
          }
        },
        label: Row(
          children: [
            Text(
              'Create',
              style: context.titleMedium?.copyWith(
                fontWeight: const FontWeight(700),
              ),
            ),
            const SizedBox(width: 6),
            const Icon(Icons.add, color: Colors.white),
          ],
        ),
      ),
      backgroundColor: context.brandColors.surface,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: context.brandColors.surface,
              title: Text('', style: context.titleSmall),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Directories',
                  style: context.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SliverSafeArea(
              top: false,
              sliver: _DirectoriesList(),
            ),
          ],
        ),
      ),
    );
  }
}

/// Handles loading, empty, failure, and success states for the list.
class _DirectoriesList extends StatelessWidget {
  const _DirectoriesList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DirectoriesBloc, DirectoriesState>(
      builder: (context, state) {
        // Loading state
        if (state.status == DirectoriesStatus.loading) {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }

        // Failure state
        if (state.status == DirectoriesStatus.failure) {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                'Something went wrong.\n${state.errorMessage ?? ''}',
                textAlign: TextAlign.center,
              ),
            ),
          );
        }

        // Empty state
        if (state.directories.isEmpty) {
          return SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.folder_off_outlined,
                    size: 56,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No directories yet',
                    style: context.titleMedium?.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Tap Create to add your first directory.',
                    style: context.labelLarge?.copyWith(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        // Success state — list of directories
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final directory = state.directories[index];
              return Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 12,
                ),
                child: _DirectoryItem(directory: directory),
              );
            },
            childCount: state.directories.length,
          ),
        );
      },
    );
  }
}

/// Single directory card in the list.
class _DirectoryItem extends StatelessWidget {
  final Directory directory;

  const _DirectoryItem({required this.directory});

  /// Returns an icon based on directory type.
  IconData get _typeIcon {
    return directory.directoryType == 'online'
        ? Icons.link_outlined
        : Icons.book_outlined;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        AppRoutes.directoriesDetailsHelper(directory.id),
      ),
      child: ComponentContainer(
        paddingH: 16,
        paddingV: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(_typeIcon, color: context.brandColors.primary),
            const SizedBox(height: 10),
            Text(
              directory.title,
              style: context.headlineSmall?.copyWith(
                fontWeight: const FontWeight(700),
              ),
            ),
            if (directory.description != null &&
                directory.description!.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                directory.description!,
                style: context.labelLarge?.copyWith(
                  color: Colors.white54,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            const SizedBox(height: 10),
            Text(
              '${directory.members.length} member${directory.members.length == 1 ? '' : 's'}',
              style: context.labelLarge?.copyWith(color: Colors.white38),
            ),
          ],
        ),
      ),
    );
  }
}