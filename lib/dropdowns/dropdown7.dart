import 'package:flutter/material.dart';

class Dropdown7 extends StatefulWidget {
  const Dropdown7({super.key});

  @override
  State<Dropdown7> createState() => _Dropdown7State();
}

class _Dropdown7State extends State<Dropdown7> {
  List<String> businessSizeOptions = [
    '1-15',
    '16-50',
    '51-100',
    '101-250',
    '251-500',
    '501-1000',
    '1000+'
  ];

  String? selectedBusinessSize;
  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
      leading: true,
      options: businessSizeOptions,
      value: selectedBusinessSize,
      onChanged: (String? newValue) {
        // Handle the value change
        setState(() {
          selectedBusinessSize = newValue;
        });
      },
      hint: 'Select Business Size',
    );
  }
}

class CustomDropdown extends StatefulWidget {
  final List<String> options;
  final String? value;
  final ValueChanged<String?> onChanged;
  final String hint;
  final String? prefixText;
  final bool? leading;
  final double? height;
  final double? width;
  final bool isEnabled;
  final String? label;
  final Color? filledColor;
  final String? prefixIcon;
  final String? prefix;
  final bool enableSearch;

  const CustomDropdown({
    required this.options,
    required this.value,
    required this.onChanged,
    required this.hint,
    this.prefixText,
    this.leading = false,
    this.height,
    this.label,
    this.width,
    this.prefixIcon,
    this.prefix,
    this.filledColor,
    this.isEnabled = true,
    this.enableSearch = false,
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool _isExpanded = false;
  String? _searchTerm;

  List<String> get filteredOptions {
    if (_searchTerm == null || _searchTerm!.isEmpty) {
      return widget.options;
    } else {
      return widget.options
          .where((option) =>
              option.toLowerCase().contains(_searchTerm!.toLowerCase()))
          .toList();
    }
  }

  double calculateMaxHeight() {
    double itemHeight = 80.0;
    int itemCount = filteredOptions.length;
    double maxHeight = itemCount * itemHeight;
    return maxHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(right: 135),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.label!,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontFamily: 'Baguede',
                    color: Color(0xFF006766),
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Color(0xFF006766),
              width: 1.5,
            ),
            color: widget.filledColor ?? Colors.white,
          ),
          child: ListTile(
            leading: widget.prefixIcon != null
                ? Image.asset(widget.prefixIcon!, color: Colors.white)
                : null,
            onTap: widget.isEnabled
                ? () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  }
                : null,
            title: _isExpanded
                ? (widget.enableSearch
                    ? TextField(
                        onChanged: (value) {
                          setState(() {
                            _searchTerm = value;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(color: Color(0xFFFFFFFF)),
                      )
                    : null)
                : Text(
                    widget.value == null
                        ? widget.hint
                        : widget.prefixText != null
                            ? "${widget.value} ${widget.prefixText!}"
                            : widget.value!,
                    style: const TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: 'Nonito',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
            trailing: widget.isEnabled
                ? Icon(_isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down)
                : null,
          ),
        ),
        if (_isExpanded)
          Container(
            constraints: BoxConstraints(
              maxHeight: calculateMaxHeight(),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF006766),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ListView.builder(
              itemCount: filteredOptions.length,
              itemBuilder: (context, index) {
                String option = filteredOptions[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF006766),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xFF006766),
                        width: 1.5,
                      ),
                    ),
                    child: ListTile(
                      shape:
                          const RoundedRectangleBorder(side: BorderSide.none),
                      contentPadding: const EdgeInsets.only(left: 30),
                      title: Text(
                        widget.prefixText != null
                            ? "$option ${widget.prefixText} "
                            : option,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Nonito',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      onTap: widget.isEnabled
                          ? () {
                              setState(() {
                                widget.onChanged(option);
                                _isExpanded = false;
                              });
                            }
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
