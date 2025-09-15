import 'package:flutter/material.dart';
import 'package:foodappjava/app/app_colors.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    required this.hintText,
    this.onTap,
    this.controller,
    this.focusNode,
  });

  final String hintText;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AbsorbPointer(
        absorbing: widget.onTap != null,
        child: TextField(
          controller: widget.controller ?? _controller,
          focusNode: widget.focusNode??null,
          decoration: InputDecoration(
            suffixIcon: _controller.text.isNotEmpty
                ? IconButton(
                    icon: Icon(Icons.cancel_rounded,color: AppColors.themeGrey,size: 25,),
                    onPressed: () {
                      widget.controller?.clear();
                    },
                  )
                : null,
            filled: true,
            fillColor: Color(0xffF6F6F6),
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 12,
            ),
          ),
        ),
      ),
    );
  }
}
