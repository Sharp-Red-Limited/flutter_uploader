// ignore_for_file: public_member_api_docs, prefer_single_quotes

import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uploader/flutter_uploader.dart';
import 'package:flutter_uploader_example/enum.dart';
import 'package:flutter_uploader_example/test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({
    Key? key,
    required this.uploader,
    required this.uploadURL,
    required this.onUploadStarted,
  }) : super(key: key);

  final FlutterUploader uploader;
  final Uri uploadURL;
  final VoidCallback onUploadStarted;

  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  ImagePicker imagePicker = ImagePicker();

  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) {
      imagePicker.getLostData().then((lostData) {
        if (lostData.isEmpty) {
          return;
        }

        if (lostData.type == RetrieveType.image) {
          _handleUpload(paths: [lostData.file!.path], type: UploadType.Binary);
        }
        if (lostData.type == RetrieveType.video) {
          _handleUpload(paths: [lostData.file!.path], type: UploadType.Binary);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Uploader'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'multipart/form-data uploads',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => getImage(binary: false),
                      child: Text('upload image'),
                    ),
                    ElevatedButton(
                      onPressed: () => getVideo(binary: false),
                      child: Text('upload video'),
                    ),
                    ElevatedButton(
                      onPressed: () => getMultiple(binary: false),
                      child: Text('upload multi'),
                    ),
                  ],
                ),
                Divider(height: 40),
                Text(
                  'binary uploads',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text('this will upload selected files as binary'),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => getImage(binary: true),
                      child: Text('upload image'),
                    ),
                    ElevatedButton(
                      onPressed: () => getVideo(binary: true),
                      child: Text('upload video'),
                    ),
                    ElevatedButton(
                      onPressed: () => getMultiple(binary: true),
                      child: Text('upload multi'),
                    ),
                  ],
                ),
                Divider(height: 40),
                Text(
                  'json uploads',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text('this will upload JSON'),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => getJson(binary: false),
                      child: Text('upload json'),
                    ),
                  ],
                ),
                Divider(height: 40),
                Text('Cancellation'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => widget.uploader.cancelAll(),
                      child: Text('Cancel All'),
                    ),
                    Container(width: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        widget.uploader.clearUploads();
                      },
                      child: Text('Clear Uploads'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future getImage({required bool binary}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('binary', binary);

    var image = await imagePicker.getImage(source: ImageSource.gallery);
    UploadType type = binary ? UploadType.Binary : UploadType.Multipart;
    if (image != null) {
      _handleUpload(paths: [image.path], type: type);
    }
  }

  Future getJson({required bool binary}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('binary', binary);
    UploadType type = binary ? UploadType.Binary : UploadType.Multipart;
    _handleUpload(
      map: testMap,
      type: type,
    );
  }

  Future getVideo({required bool binary}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('binary', binary);

    var video = await imagePicker.getVideo(source: ImageSource.gallery);
    UploadType type = binary ? UploadType.Binary : UploadType.Multipart;
    if (video != null) {
      _handleUpload(paths: [video.path], type: type);
    }
  }

  Future getMultiple({required bool binary}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('binary', binary);

    final files = await FilePicker.platform.pickFiles(
      allowCompression: false,
      allowMultiple: true,
    );
    if (files != null && files.count > 0) {
      if (binary) {
        for (final PlatformFile file in files.files) {
          _handleUpload(paths: [file.path], type: UploadType.Binary);
        }
      } else {
        _handleUpload(paths: files.paths, type: UploadType.Multipart);
      }
    }
  }

  void _handleUpload(
      {List<String?> paths = const [],
      Map<String, dynamic> map = const {},
      required UploadType type}) async {
    final prefs = await SharedPreferences.getInstance();
    final binary = prefs.getBool('binary') ?? false;
    final allowCellular = prefs.getBool('allowCellular') ?? true;
    UploadType type = binary ? UploadType.Binary : UploadType.Multipart;
    if (map.isNotEmpty && paths.isEmpty) {
      type = UploadType.JSON;
    }
    await widget.uploader.enqueue(_buildUpload(
        paths: paths.whereType<String>().toList(),
        allowCellular: allowCellular,
        map: map,
        type: type));

    widget.onUploadStarted();
  }

  Upload _buildUpload({
    List<String> paths = const [],
    bool allowCellular = true,
    Map<String, dynamic> map = const {},
    required UploadType type,
  }) {
    final tag = 'upload';
    var url;
    switch (type) {
      case UploadType.Binary:
        url = Uri.https(widget.uploadURL.authority, "uploadFile");
        return RawUpload(
          url: url.toString(),
          path: paths.first,
          method: UploadMethod.POST,
          tag: tag,
          allowCellular: allowCellular,
        );
      case UploadType.Multipart:
        url = Uri.https(widget.uploadURL.authority, "uploadFile");
        return MultipartFormDataUpload(
          url: url.toString(),
          data: {'name': 'john'},
          files: paths.map((e) => FileItem(path: e, field: 'file')).toList(),
          method: UploadMethod.POST,
          tag: tag,
          allowCellular: allowCellular,
        );
      case UploadType.JSON:
        url = Uri.https(widget.uploadURL.authority, "uploadJson");
        print("json url: $url");
        return JsonUpload(
          data: map,
          url: url.toString(),
          method: UploadMethod.POST,
          tag: tag,
          allowCellular: allowCellular,
        );
    }
  }
}
