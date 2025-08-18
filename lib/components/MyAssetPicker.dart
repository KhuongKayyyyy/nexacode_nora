// import 'package:flutter/material.dart';
// import 'package:nora/data/app_data/app_exports.dart';
// import 'package:nora/data/app_data/app_exports.dart';

// class KoreanCameraPickerTextDelegate extends CameraPickerTextDelegate {
//   const KoreanCameraPickerTextDelegate();

//   @override
//   String get languageCode => 'ko';

//   @override
//   String get confirm => "확인";

//   @override
//   String get shootingTips => "사진을 찍어주세요";

//   @override
//   String get shootingWithRecordingTips => "비디오를 찍어주세요";

//   @override
//   String get shootingOnlyRecordingTips => "길게 누르면 비디오를 녹화합니다";

//   @override
//   String get shootingTapRecordingTips => 'Tap to record video.';

//   @override
//   String get loadFailed => 'Load failed';

//   @override
//   String get loading => 'Loading...';

//   @override
//   String get saving => '저장중...';

//   @override
//   String get sActionManuallyFocusHint => 'manually focus';

//   @override
//   String get sActionPreviewHint => 'preview';

//   @override
//   String get sActionRecordHint => 'record';

//   @override
//   String get sActionShootHint => 'take picture';

//   @override
//   String get sActionShootingButtonTooltip => 'shooting button';

//   @override
//   String get sActionStopRecordingHint => 'stop recording';

//   @override
//   String sCameraLensDirectionLabel(CameraLensDirection value) => value.name;

//   @override
//   String? sCameraPreviewLabel(CameraLensDirection? value) {
//     if (value == null) {
//       return null;
//     }
//     return '${sCameraLensDirectionLabel(value)} camera preview';
//   }

//   @override
//   String sFlashModeLabel(FlashMode mode) => 'Flash mode: ${mode.name}';

//   @override
//   String sSwitchCameraLensDirectionLabel(CameraLensDirection value) =>
//       'Switch to the ${sCameraLensDirectionLabel(value)} camera';
// }

// class MyAssetPicker {
//   MyAssetPicker({Key? key});

//   static Future<List<AssetEntity>?> pickAssets(
//     BuildContext context, {
//     List<AssetEntity>? selectedAssets,
//     int maxAssets = 10,
//   }) async {
//     final List<AssetEntity>? result = await AssetPicker.pickAssets(
//       context,
//       pickerConfig: AssetPickerConfig(
//         selectedAssets: selectedAssets,
//         maxAssets: maxAssets,
//         textDelegate: const KoreanAssetPickerTextDelegate(),
//       ),
//     );
//     return result;
//   }

//   static Future<AssetEntity?> pickCamera(BuildContext context) async {
//     final AssetEntity? result = await CameraPicker.pickFromCamera(
//       context,
//       pickerConfig: const CameraPickerConfig(
//         enableRecording: false,
//         textDelegate: KoreanCameraPickerTextDelegate(),
//       ),
//     );
//     return result;
//   }
// }
