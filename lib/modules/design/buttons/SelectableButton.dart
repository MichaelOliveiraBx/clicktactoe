import 'package:clicktactoe/modules/design/buttons/SelectableButtonPainter.dart';
import 'package:flutter/material.dart';

class SelectableButton extends StatefulWidget {
  final bool Function(bool) onSelectedChange;
  final Widget child;
  final double borderRadius;
  final bool isSelected;

  const SelectableButton({
    super.key,
    required this.onSelectedChange,
    this.isSelected = false,
    required this.child,
    this.borderRadius = 16.0,
  });

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SelectableButtonPainter(
        elevation: 2.0,
        backgroundColor: Colors.white,
        elevationColor: const Color(0xFFE3C49B),
        borderRadius: widget.borderRadius,
        isSelected: _isSelected,
      ),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: null,
          child: InkWell(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            // Keep rounded corners for ripple effect
            onTap: () {
              setState(() {
                _isSelected = widget.onSelectedChange(!_isSelected);
              });
            },
            child: Center(child: widget.child), // Contenu du bouton
          ),
        ),
      ),
    );
  }
}
