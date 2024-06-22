import 'package:flutter/material.dart';

class ToggleIconButton14 extends StatefulWidget {
  final List<Icon> icons;
  final Function(int) selected;
  final bool multipleSelectionsAllowed;
  final bool stateContained;
  final bool canUnToggle;
  const ToggleIconButton14(
      {required this.icons,
      required this.selected,
      this.stateContained = true,
      this.canUnToggle = false,
      this.multipleSelectionsAllowed = false,
      Key? key});

  @override
  _ToggleIconButton14State createState() => _ToggleIconButton14State();
}

class _ToggleIconButton14State extends State<ToggleIconButton14> {
  late List<bool> isSelected = [];
  @override
  void initState() {
    widget.icons.forEach((e) => isSelected.add(false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ToggleButtons(
            color: Colors.black.withOpacity(0.60),
            selectedColor: const Color(0xFF6200EE),
            selectedBorderColor: const Color(0xFF6200EE),
            fillColor: const Color(0xFF6200EE).withOpacity(0.08),
            splashColor: const Color(0xFF6200EE).withOpacity(0.12),
            hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
            borderRadius: BorderRadius.circular(4.0),
            isSelected: isSelected,
            highlightColor: Colors.transparent,
            onPressed: (index) {
              widget.selected(index);
              if (widget.stateContained) {
                if (!widget.multipleSelectionsAllowed) {
                  final selectedIndex = isSelected[index];
                  isSelected = isSelected.map((e) => e = false).toList();
                  if (widget.canUnToggle) {
                    isSelected[index] = selectedIndex;
                  }
                }
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              }
            },
            children: widget.icons,
          ),
        ],
      ),
    );
  }
}
