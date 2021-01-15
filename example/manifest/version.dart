import 'dart:ffi';

import 'package:win32/win32.dart';

void main() {
  final osVersionInfo = zeroAllocate<OSVERSIONINFO>();

  final result = GetVersionEx(osVersionInfo);
  if (result != 0) {
    print(
        'Windows ${osVersionInfo.ref.dwMajorVersion}.${osVersionInfo.ref.dwMinorVersion}');
  }
}
