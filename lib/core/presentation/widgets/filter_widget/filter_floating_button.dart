import 'package:flutter/material.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/inject/app_injector.dart';

class FilterFloatingButton extends StatefulWidget {
  final Function(ApiFilter) onFilterApplied;
  final Function() onFilterCleared;

  const FilterFloatingButton({super.key, required this.onFilterApplied, required this.onFilterCleared});

  @override
  State<FilterFloatingButton> createState() => _FilterFloatingButtonState();
}

class _FilterFloatingButtonState extends State<FilterFloatingButton> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late CharactersFilterStore _filterStore;
  bool _isFilterMenuOpen = false;

  @override
  void initState() {
    super.initState();
    _filterStore = getIt<CharactersFilterStore>();
    _animationController = AnimationController(duration: const Duration(milliseconds: 300), vsync: this);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleFilterMenu() {
    setState(() {
      _isFilterMenuOpen = !_isFilterMenuOpen;
      if (_isFilterMenuOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  void _applyFilters() {
    widget.onFilterApplied(_filterStore.filter);
    _toggleFilterMenu();
  }

  void _clearFilters() {
    _filterStore.clearFilter();
    widget.onFilterCleared();
    _toggleFilterMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Filter Menu Overlay
        if (_isFilterMenuOpen)
          FilterMenuOverlay(
            filterStore: _filterStore,
            onClose: _toggleFilterMenu,
            onApply: _applyFilters,
            onClear: _clearFilters,
          ),

        // Floating Action Button
        Positioned(
          bottom: 30,
          right: 30,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Main Filter Button
              FloatingActionButton(
                heroTag: 'main_filter',
                backgroundColor: ColorName.secondary,
                foregroundColor: Colors.white,
                onPressed: _toggleFilterMenu,
                child: AnimatedRotation(
                  turns: _isFilterMenuOpen ? 0.125 : 0,
                  duration: const Duration(milliseconds: 300),
                  child: Icon(_isFilterMenuOpen ? Icons.close : Icons.filter_list),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
