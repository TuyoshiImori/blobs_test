import 'package:blobs/blobs.dart';
import '../../common/app_shell.dart';
import '../../common/button.dart';
import 'package:flutter/material.dart';

class AnimatedHashExample extends StatelessWidget {
  const AnimatedHashExample({Key? key}) : super(key: key);

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
              child: Blob.animatedFromID(
                id: ['6-3-372642'],
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
