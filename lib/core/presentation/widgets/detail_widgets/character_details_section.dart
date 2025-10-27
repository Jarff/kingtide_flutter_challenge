import 'package:flutter/material.dart';
import 'package:kingtide_challenge/core/core.dart';

class CharacterDetailsSection extends StatelessWidget {
  final MediaItem? mediaItem;

  const CharacterDetailsSection({super.key, required this.mediaItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: ColorName.colorOnSecondary, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          _buildHeader(),
          const SizedBox(height: 4),
          _DetailRow(label: 'Title', value: mediaItem?.title ?? '-'),
          _DetailRow(label: 'Year', value: mediaItem?.year ?? '-'),
          _DetailRow(label: 'Rated', value: mediaItem?.rated ?? '-'),
          _DetailRow(label: 'Released', value: mediaItem?.released ?? '-'),
          _DetailRow(label: 'Runtime', value: mediaItem?.runtime ?? '-'),
          _DetailRow(label: 'Genre', value: mediaItem?.genre ?? '-'),
          _DetailRow(label: 'Director', value: mediaItem?.director ?? '-'),
          _DetailRow(label: 'Writer', value: mediaItem?.writer ?? '-'),
          _DetailRow(label: 'Actors', value: mediaItem?.actors ?? '-'),
          _DetailRow(label: 'Plot', value: mediaItem?.plot ?? '-'),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(Icons.info_outline, color: ColorName.secondary, size: 20),
        const SizedBox(width: 8),
        Text(
          'Show Details',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorName.colorOnSurface),
        ),
      ],
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _DetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        SizedBox(
          width: 120,
          child: Text(
            '$label:',
            style: const TextStyle(fontWeight: FontWeight.bold, color: ColorName.secondary, fontSize: 16),
          ),
        ),
        Expanded(
          child: Text(value, style: const TextStyle(fontSize: 16, color: ColorName.colorOnSurface)),
        ),
      ],
    );
  }
}
