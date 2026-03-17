import 'package:flutter/material.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

enum DirectoryType { personal, shared, archived }

class DirectoryFormData {
  String name;
  String description;
  DirectoryType? type;
  bool isPrivate;

  DirectoryFormData({
    this.name = '',
    this.description = '',
    this.type,
    this.isPrivate = false,
  });
}

// ─────────────────────────────────────────────
// MAIN SCREEN
// ─────────────────────────────────────────────

class CreateDirectoryScreen extends StatefulWidget {
  const CreateDirectoryScreen({super.key});

  @override
  State<CreateDirectoryScreen> createState() => _CreateDirectoryScreenState();
}

class _CreateDirectoryScreenState extends State<CreateDirectoryScreen> {
  int _currentStep = 0;
  static const int _totalSteps = 4;

  final _formData = DirectoryFormData();

  // Controllers
  final _nameController = TextEditingController();
  final _descController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    super.dispose();
  }

  // ── Validation guard per step ──────────────────
  bool get _isCurrentStepValid {
    switch (_currentStep) {
      case 0:
        return _formData.name.trim().isNotEmpty;
      case 1:
        return _formData.type != null;
      case 2:
        return true; // review step — always valid
      default:
        return false;
    }
  }

  void _onNext() {
    if (!_isCurrentStepValid) return;
    if (_currentStep < _totalSteps - 1) {
      setState(() => _currentStep++);
    } else {
      _onSubmit();
    }
  }

  void _onBack() {
    if (_currentStep > 0) setState(() => _currentStep--);
  }

  void _onSubmit() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Directory "${_formData.name}" created!'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  // ── Step labels ────────────────────────────────
  static const _stepLabels = ['Details', 'Type', 'Members', 'Review'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        backgroundColor: context.brandColors.surface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
      ),
      body: Column(
        children: [
          // ── Step Indicator ──
          _StepIndicator(
            currentStep: _currentStep,
            totalSteps: _totalSteps,
            labels: _stepLabels,
          ),

          // ── Step Content ──
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 280),
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.04, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              ),
              child: KeyedSubtree(
                key: ValueKey(_currentStep),
                child: _buildStepContent(),
              ),
            ),
          ),

          // ── Bottom Nav Bar ──
          _StepNavBar(
            currentStep: _currentStep,
            totalSteps: _totalSteps,
            isNextEnabled: _isCurrentStepValid,
            onNext: _onNext,
            onBack: _onBack,
          ),
        ],
      ),
    );
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return _StepDetails(
          formData: _formData,
          nameController: _nameController,
          descController: _descController,
          onChanged: () => setState(() {}),
        );
      case 1:
        return _StepType(formData: _formData, onChanged: () => setState(() {}));
      case 2:
        return _StepReview(formData: _formData);
      case 3:
        return _StepReview(formData: _formData);
      default:
        return const SizedBox.shrink();
    }
  }
}

// ─────────────────────────────────────────────
// STEP INDICATOR WIDGET
// ─────────────────────────────────────────────

class _StepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final List<String> labels;

  const _StepIndicator({
    required this.currentStep,
    required this.totalSteps,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    final color = context.brandColors.primary;

    return Container(
      color: context.brandColors.surface,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 20),
      child: Column(
        children: [
          // Progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: LinearProgressIndicator(
              value: (currentStep + 1) / totalSteps,
              minHeight: 4,
              backgroundColor: const Color(0xFFE8EAF0),
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
          ),
          const SizedBox(height: 12),

          // Step dots + labels
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(totalSteps, (i) {
              final isDone = i < currentStep;
              final isActive = i == currentStep;

              return Row(
                children: [
                  Column(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        width: isActive ? 28 : 22,
                        height: isActive ? 28 : 22,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isDone
                              ? color
                              : isActive
                              ? color
                              : const Color(0xFFE8EAF0),
                        ),
                        child: Center(
                          child: isDone
                              ? const Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                )
                              : Text(
                                  '${i + 1}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: isActive
                                        ? Colors.white
                                        : const Color(0xFFADB5C7),
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(height: 6),
                  Text(
                    labels[i],
                    style: TextStyle(
                      fontSize: context.labelSmall?.fontSize,
                      fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
                      color: isActive ? color : const Color(0xFFADB5C7),
                    ),
                  ),
                    ],
                  ),
                  
                  if (i < totalSteps - 1) const SizedBox(width: 12),
                ],
              );
            }),
          ),
          
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
// STEP NAV BAR WIDGET
// ─────────────────────────────────────────────

class _StepNavBar extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final bool isNextEnabled;
  final VoidCallback onNext;
  final VoidCallback onBack;

  const _StepNavBar({
    required this.currentStep,
    required this.totalSteps,
    required this.isNextEnabled,
    required this.onNext,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    final isLastStep = currentStep == totalSteps - 1;
    final isFirstStep = currentStep == 0;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(
        24,
        16,
        24,
        MediaQuery.of(context).padding.bottom + 16,
      ),
      child: Row(
        children: [
          // Back button
          AnimatedOpacity(
            opacity: isFirstStep ? 0.0 : 1.0,
            duration: const Duration(milliseconds: 200),
            child: OutlinedButton(
              onPressed: isFirstStep ? null : onBack,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                side: const BorderSide(color: Color(0xFFDDE1EE), width: 1.5),
              ),
              child: const Text('Back'),
            ),
          ),

          const SizedBox(width: 12),

          // Next / Submit button
          Expanded(
            child: FilledButton(
              onPressed: isNextEnabled ? onNext : null,
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                disabledBackgroundColor: const Color(0xFFE8EAF0),
                disabledForegroundColor: const Color(0xFFADB5C7),
              ),
              child: Text(
                isLastStep ? 'Create Directory' : 'Continue',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
// STEP 1 — DETAILS
// ─────────────────────────────────────────────

class _StepDetails extends StatelessWidget {
  final DirectoryFormData formData;
  final TextEditingController nameController;
  final TextEditingController descController;
  final VoidCallback onChanged;

  const _StepDetails({
    required this.formData,
    required this.nameController,
    required this.descController,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StepHeader(
            icon: Icons.folder_outlined,
            title: 'Directory Details',
            subtitle: 'Give your directory a name and optional description.',
          ),
          const SizedBox(height: 28),

          _FieldLabel('Directory Name *'),
          const SizedBox(height: 8),
          TextField(
            controller: nameController,
            onChanged: (v) {
              formData.name = v;
              onChanged();
            },
            decoration: _inputDecoration('e.g. Marketing Assets'),
            textCapitalization: TextCapitalization.words,
          ),
          const SizedBox(height: 20),

          _FieldLabel('Description'),
          const SizedBox(height: 8),
          TextField(
            controller: descController,
            onChanged: (v) {
              formData.description = v;
              onChanged();
            },
            decoration: _inputDecoration(
              'Optional — what is this directory for?',
            ),
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) => InputDecoration(
    hintText: hint,
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFDDE1EE)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFDDE1EE)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF4F6EF7), width: 2),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  );
}

// ─────────────────────────────────────────────
// STEP 2 — TYPE
// ─────────────────────────────────────────────

class _StepType extends StatelessWidget {
  final DirectoryFormData formData;
  final VoidCallback onChanged;

  const _StepType({required this.formData, required this.onChanged});

  static const _types = [
    (
      DirectoryType.personal,
      Icons.person_outline,
      'Personal',
      'Only you have access',
    ),
    (
      DirectoryType.shared,
      Icons.group_outlined,
      'Shared',
      'Accessible by your team',
    ),
    (
      DirectoryType.archived,
      Icons.inventory_2_outlined,
      'Archived',
      'Read-only, long-term storage',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StepHeader(
            icon: Icons.category_outlined,
            title: 'Directory Type',
            subtitle: 'Choose the access type that fits your use case.',
          ),
          const SizedBox(height: 28),
          ..._types.map((t) {
            final (type, icon, label, desc) = t;
            final isSelected = formData.type == type;
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _TypeCard(
                icon: icon,
                label: label,
                description: desc,
                isSelected: isSelected,
                onTap: () {
                  formData.type = type;
                  onChanged();
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _TypeCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String description;
  final bool isSelected;
  final VoidCallback onTap;

  const _TypeCard({
    required this.icon,
    required this.label,
    required this.description,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? color.withOpacity(0.06) : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected ? color : const Color(0xFFDDE1EE),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: isSelected
                    ? color.withOpacity(0.12)
                    : const Color(0xFFF0F1F7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: isSelected ? color : const Color(0xFF8A91A8),
                size: 22,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: isSelected ? color : const Color(0xFF1A1D26),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF8A91A8),
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected)
              Icon(Icons.check_circle_rounded, color: color, size: 22)
            else
              const Icon(
                Icons.radio_button_unchecked,
                color: Color(0xFFDDE1EE),
                size: 22,
              ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────
// STEP 3 — REVIEW
// ─────────────────────────────────────────────

class _StepReview extends StatelessWidget {
  final DirectoryFormData formData;
  const _StepReview({required this.formData});

  String get _typeName {
    switch (formData.type) {
      case DirectoryType.personal:
        return 'Personal';
      case DirectoryType.shared:
        return 'Shared';
      case DirectoryType.archived:
        return 'Archived';
      default:
        return '—';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StepHeader(
            icon: Icons.fact_check_outlined,
            title: 'Review & Confirm',
            subtitle: 'Double-check everything before creating the directory.',
          ),
          const SizedBox(height: 28),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFDDE1EE)),
            ),
            child: Column(
              children: [
                _ReviewRow('Directory Name', formData.name),
                _divider(),
                _ReviewRow(
                  'Description',
                  formData.description.isEmpty
                      ? 'No description'
                      : formData.description,
                ),
                _divider(),
                _ReviewRow('Type', _typeName),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() => const Divider(
    height: 1,
    thickness: 1,
    color: Color(0xFFF0F1F7),
    indent: 16,
    endIndent: 16,
  );
}

class _ReviewRow extends StatelessWidget {
  final String label;
  final String value;
  const _ReviewRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: const TextStyle(fontSize: 13, color: Color(0xFF8A91A8)),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1A1D26),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
// SHARED HELPERS
// ─────────────────────────────────────────────

class _StepHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _StepHeader({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1D26),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF8A91A8),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FieldLabel extends StatelessWidget {
  final String text;
  const _FieldLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: Color(0xFF4A5068),
      ),
    );
  }
}
