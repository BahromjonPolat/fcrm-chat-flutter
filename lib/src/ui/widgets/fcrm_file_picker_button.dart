/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 13:55:09

*/

import 'package:fcrm_chat_flutter/src/constants/fcrm_icons.dart';
import 'package:fcrm_chat_flutter/src/ui/widgets/fcrm_bottom_modal_sheet.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:svg_flutter/svg.dart';

class FcrmFilePickerButton extends StatelessWidget {
  const FcrmFilePickerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showFcrmBottomModalSheet(
          context: context,
          items: [
            BottomModalSheetItem(
              title: 'File',
              icon: FcrmIcons.file,
              onTap: () => _pickFile(isFile: true),
            ),
            BottomModalSheetItem(
              title: 'Gallery',
              icon: FcrmIcons.gallery,
              onTap: () => _pickFile(isFile: false),
            ),
          ],
        );
      },
      child: Container(
        height: 48,
        width: 48,
        alignment: .center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor,
        ),
        child: SvgPicture.asset(
          FcrmIcons.paperclip,
          colorFilter: ColorFilter.mode(
            Theme.of(context).iconTheme.color ?? Colors.black,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  Future _pickFile({required bool isFile}) async {
    final files = <XFile>[];
    if (isFile) {
      final picker = FilePicker.platform;
      final result = await picker.pickFiles();
      files.addAll(result?.xFiles ?? []);
    } else {
      final picker = ImagePicker();
      final result = await picker.pickImage(source: ImageSource.gallery);
      if (result != null) {
        files.add(result);
      }
    }
  }
}
