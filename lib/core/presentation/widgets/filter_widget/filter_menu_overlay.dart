import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kingtide_challenge/core/core.dart';

class FilterMenuOverlay extends StatefulWidget {
  final CharactersFilterStore filterStore;
  final VoidCallback onClose;
  final VoidCallback onApply;
  final VoidCallback onClear;

  const FilterMenuOverlay({
    super.key,
    required this.filterStore,
    required this.onClose,
    required this.onApply,
    required this.onClear,
  });

  @override
  State<FilterMenuOverlay> createState() => _FilterMenuOverlayState();
}

class _FilterMenuOverlayState extends State<FilterMenuOverlay> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: widget.filterStore.filter.query ?? '');
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: GestureDetector(
        onTap: widget.onClose,
        child: Container(
          color: Colors.black.withValues(alpha: 0.3),
          child: Center(
            child: GestureDetector(
              onTap: () {}, // Prevent closing when tapping the menu
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: ColorName.colorOnSecondary,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withValues(alpha: 0.2), blurRadius: 20, offset: const Offset(0, 10)),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildHeader(),
                    const SizedBox(height: 24),
                    _buildSearchField(),
                    const SizedBox(height: 20),
                    _buildFilterOptions(),
                    const SizedBox(height: 24),
                    _buildActionButtons(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(Icons.filter_list, color: ColorName.secondary, size: 24),
        const SizedBox(width: 12),
        Text(
          'Filter Options',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ColorName.colorOnSurface),
        ),
        const Spacer(),
        IconButton(
          onPressed: widget.onClose,
          icon: Icon(Icons.close, color: ColorName.secondary),
        ),
      ],
    );
  }

  Widget _buildSearchField() {
    return Container(
      decoration: BoxDecoration(
        color: ColorName.surface.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorName.secondary.withValues(alpha: 0.2)),
      ),
      child: TextField(
        style: const TextStyle(color: ColorName.colorOnSurface),
        decoration: InputDecoration(
          hintText: 'Search characters...',
          hintStyle: TextStyle(color: ColorName.colorOnSurface.withValues(alpha: 0.6)),
          prefixIcon: Icon(Icons.search, color: ColorName.secondary),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(16),
        ),
        controller: _searchController,
        onChanged: (value) {
          widget.filterStore.setFilter(widget.filterStore.filter.copyWith(query: value.isEmpty ? null : value));
        },
      ),
    );
  }

  Widget _buildFilterOptions() {
    return Column(
      children: [
        Observer(
          builder: (context) => FilterOptionCard(
            title: 'Filter by Species',
            subtitle: widget.filterStore.filter.species?.toDisplayValue() ?? 'Human, Alien, Robot...',
            icon: Icons.pets,
            onTap: () => _showSpeciesFilter(context),
          ),
        ),
        const SizedBox(height: 16),
        Observer(
          builder: (context) => FilterOptionCard(
            title: 'Filter by Gender',
            subtitle: widget.filterStore.filter.gender?.toDisplayValue() ?? 'Male, Female, Unknown...',
            icon: Icons.person,
            onTap: () => _showGenderFilter(context),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: widget.onClear,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: ColorName.surface.withValues(alpha: 0.3),
              foregroundColor: ColorName.colorOnSurface,
            ),
            child: const Text('Clear'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton(
            onPressed: widget.onApply,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: ColorName.secondary,
              foregroundColor: Colors.white,
            ),
            child: const Text('Apply'),
          ),
        ),
      ],
    );
  }

  void _showSpeciesFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorName.colorOnSecondary,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => SpeciesFilterBottomSheet(filterStore: widget.filterStore),
    );
  }

  void _showGenderFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorName.colorOnSecondary,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => GenderFilterBottomSheet(filterStore: widget.filterStore),
    );
  }
}
