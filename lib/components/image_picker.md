## 安装

    flutter pub add image_picker
    or
    dependencies:
        image_picker: ^0.8.6

## 权限

### 安卓

- AndroidManifest.xml
    
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.CAMERA" />
  
  - info.list

    <key>NSPhotoLibraryUsageDescription</key>
    <string>To upload photos, please allow permission to access your photo library.</string>
    <key>NSCameraUsageDescription</key>
    <string>告诉用户你使用相机的目的</string>
    <key>NSMicrophoneUsageDescription</key>
    <string>告诉用户你使用麦克风的目的</string>