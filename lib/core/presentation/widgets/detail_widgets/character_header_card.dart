import 'package:flutter/material.dart';
import 'package:kingtide_challenge/core/core.dart';

class CharacterHeaderCard extends StatelessWidget {
  final Character character;

  const CharacterHeaderCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorName.colorOnSecondary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 10, offset: const Offset(0, 5))],
      ),
      child: Column(
        children: [
          // Top row - Image and Name/Status
          Row(
            children: [
              CachedImageWidget(
                imageUrl: character.image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                borderRadius: BorderRadius.circular(12),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(
                      character.name,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: ColorName.colorOnSurface),
                    ),
                    StatusBadge(status: character.status),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // Bottom row - Species, Gender, Created Date
          Row(
            children: [
              Expanded(
                child: _InfoItem(label: 'Species', value: character.species.toDisplayValue(), icon: Icons.pets),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _InfoItem(label: 'Gender', value: character.gender.toDisplayValue(), icon: Icons.person_outline),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _InfoItem(label: 'Created', value: character.createdAt.formattedDate, icon: Icons.calendar_today),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _InfoItem({required this.label, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorName.surface.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: ColorName.secondary.withValues(alpha: 0.1), width: 1),
      ),
      child: Column(
        children: [
          Icon(icon, color: ColorName.secondary, size: 20),
          const SizedBox(height: 6),
          Text(
            label,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: ColorName.secondary),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: ColorName.colorOnSurface),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
