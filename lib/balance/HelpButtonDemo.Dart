import 'package:flutter/material.dart';

class HelpButtonDemo extends StatelessWidget {
  final bool isExpanded; // Accept `isExpanded` as a parameter
  final VoidCallback onToggle; // Callback to handle button toggle

  HelpButtonDemo({required this.isExpanded, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: onToggle,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: isExpanded ? 200 : 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFDDDCF5), // Background color
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment:
                  isExpanded ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
              children: [
                if (isExpanded)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      Icons.help_outline,
                      color: Color(0xFF4C48B7), // Icon color
                    ),
                  ),
                if (isExpanded)
                  Expanded(
                    child: Text(
                      "Need some help?",
                      style: TextStyle(
                        color: Color(0xFF4C48B7), // Text color
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(
                    isExpanded ? Icons.arrow_forward : Icons.help_outline,
                    color: Color(0xFF4C48B7), // Icon color
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
