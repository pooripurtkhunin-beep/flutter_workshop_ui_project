# flutter_workshop_ui_project — "Orange ส้ม"

Flutter UI workshop: six screens, first page is `E01PageUI`, designed for
**iPhone 15 Pro Max (430 × 932 logical px)**.

| File | Class | Screen |
|------|-------|--------|
| `lib/e01_page_ui.dart` | `E01PageUI` | Welcome ("Berry Juice") — first page |
| `lib/e02_page_ui.dart` | `E02PageUI` | Login |
| `lib/e03_page_ui.dart` | `E03PageUI` | Register |
| `lib/e04_page_ui.dart` | `E04PageUI` | Forgot password |
| `lib/e05_page_ui.dart` | `E05PageUI` | OTP verification |
| `lib/e06_page_ui.dart` | `E06PageUI` | Create new password |

Navigation: E01 → E02 → (E03 Register | E04 → E05 → E06 → back to E02).

## First-time setup (platform folders are not included)

Run these inside this folder (Flutter will not overwrite `lib/` or `pubspec.yaml`):

```bash
flutter create --project-name flutter_workshop_ui_project --platforms=ios,android,web .
flutter pub get
```

### App name "Orange ส้ม"

`MaterialApp.title` is already set. For the name under the home-screen icon:

* **iOS** – `ios/Runner/Info.plist`: set `CFBundleDisplayName` (and `CFBundleName`) to `Orange ส้ม`
* **Android** – `android/app/src/main/AndroidManifest.xml`: `android:label="Orange ส้ม"`
* **Web** – `<title>` in `web/index.html` and `name` / `short_name` in `web/manifest.json`

(`assets/images/app_icon.png` is the orange icon provided with the assignment, if you want to use it as the launcher icon.)

## Run

```bash
flutter run -d chrome          # shown inside a 430 x 932 iPhone 15 Pro Max frame
flutter run -d "iPhone 15 Pro Max"   # iOS Simulator
```

## Check

```bash
dart format .
flutter analyze
flutter test
```

## Assets

* `assets/images/` – pictures from the assignment (renamed): `berry_juice`, `header_orange`, `otp_verification`, `google`, `facebook`, `apple`, `app_icon`
* `assets/fonts/` – Poppins and Roboto (SIL Open Font License), bundled so the app works offline
