import 'package:blobs/blobs.dart';
import '../../common/app_shell.dart';
import '../../common/button.dart';
import 'package:flutter/material.dart';

class StaticHashExample extends StatelessWidget {
  const StaticHashExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlobController blobCtrl = BlobController();
    return AppShell(
      title: 'Fixed Blob',
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Blob.fromID(
                id: ['13-3-685797'],
                size: 400,
                controller: blobCtrl,
              ),
            ),
            Button('Randomize', onTap: () {
              blobCtrl.change();
            })
          ],
        ),
      ),
    );
  }
}
