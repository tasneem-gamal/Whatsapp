import 'package:flutter/material.dart';
import 'package:whatsapp/core/widgets/custom_text_form_field.dart';

class SeachField extends StatelessWidget {
  const SeachField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child:  Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 24),
          child: CustomTextFormField(
            hintText: 'Ask Meta AI or Search ',
            prefixIcon: Icon(Icons.search),
            validator: (value){},
          ),
        ),
      );
  }
}