import 'package:flutter/material.dart';

import '../../../design_system.dart';

class CooButton extends StatelessWidget {
  final Color? backgroundColor;
  final bool isLoading;
  final VoidCallback onPressed;
  final Color? textColor;
  final String label;
  final bool enable;

  const CooButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.textColor,
    this.enable = true,
    this.backgroundColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = CoopartilharColors.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? colors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          minimumSize: const Size.fromHeight(44),
          maximumSize: const Size.fromHeight(56),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                label,
                style: TextStyle(
                  color: textColor ?? colors.white,
                ),
              ),
      ),
    );
  }
}
