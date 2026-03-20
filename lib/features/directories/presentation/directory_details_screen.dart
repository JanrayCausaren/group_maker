import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:group_maker/core/components/component_container.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';
import 'package:group_maker/dependencies/inject_dependencies.dart';
import 'package:group_maker/features/directories/presentation/bloc/directories_bloc.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

class DirectoryDetailsScreen extends StatelessWidget {
  final String directoryId;

  const DirectoryDetailsScreen({super.key, required this.directoryId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<DirectoriesBloc>()..add(const DirectoriesEvent.started()),
      child: _DirectoryDetailsView(directoryId: directoryId),
    );
  }
}

class _DirectoryDetailsView extends StatelessWidget {
  final String directoryId;

  const _DirectoryDetailsView({required this.directoryId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DirectoriesBloc, DirectoriesState>(
      builder: (context, state) {
        // Loading state
        if (state.status == DirectoriesStatus.loading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        // Find the directory by id
        final directory = state.directories
            .where((d) => d.id == directoryId)
            .firstOrNull;

        // Not found state
        if (directory == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(child: Text('Directory not found.')),
          );
        }

        final typeLabel =
            directory.directoryType == 'online' ? 'Online' : 'Local';
        final typeIcon = directory.directoryType == 'online'
            ? Icons.link_outlined
            : Icons.phone_android_outlined;

        return Scaffold(
          backgroundColor: context.brandColors.surface,
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                // App bar with back button
                SliverAppBar(
                  backgroundColor: context.brandColors.surface,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => context.pop(),
                  ),
                  title: Text(
                    directory.title,
                    style: context.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  actions: [
                    // Delete directory action
                    IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () async {
                        final confirmed = await showDialog<bool>(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text('Delete Directory'),
                            content: Text(
                              'Are you sure you want to delete "${directory.title}"?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(true),
                                child: const Text('Delete'),
                              ),
                            ],
                          ),
                        );
                        if (confirmed == true && context.mounted) {
                          context
                              .read<DirectoriesBloc>()
                              .add(DirectoriesEvent.deleted(directory.id));
                          context.pop();
                        }
                      },
                    ),
                  ],
                ),

                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Info card
                        ComponentContainer(
                          paddingH: 16,
                          paddingV: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Type badge
                              Row(
                                children: [
                                  Icon(typeIcon,
                                      size: 16,
                                      color: context.brandColors.primary),
                                  const SizedBox(width: 6),
                                  Text(
                                    typeLabel,
                                    style: context.labelMedium?.copyWith(
                                      color: context.brandColors.primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              // Description
                              if (directory.description != null &&
                                  directory.description!.isNotEmpty) ...[
                                Text(
                                  directory.description!,
                                  style: context.bodyMedium?.copyWith(
                                    color: Colors.white60,
                                  ),
                                ),
                                const SizedBox(height: 12),
                              ],

                              // Member count
                              Text(
                                '${directory.members.length} member${directory.members.length == 1 ? '' : 's'}',
                                style: context.labelLarge?.copyWith(
                                  color: Colors.white38,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Members section header
                        Text(
                          'Members',
                          style: context.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Empty members state
                        if (directory.members.isEmpty)
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 32),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.person_off_outlined,
                                    size: 48,
                                    color: Colors.grey.shade400,
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'No members yet',
                                    style: context.titleSmall?.copyWith(
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        // Members list
                        ...directory.members.map(
                          (member) => Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: ComponentContainer(
                              paddingH: 16,
                              paddingV: 12,
                              child: Row(
                                children: [
                                  const Icon(Icons.person_outline, size: 20),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      member.name,
                                      style: context.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  if (member.gender != null)
                                    Text(
                                      member.gender!.name,
                                      style: context.labelSmall?.copyWith(
                                        color: Colors.white38,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}