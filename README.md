# GistHunt

GistHunt is a Flutter client for managing your GitHub gists on macOS, iOS, and Android.

- Sign in with GitHub (OAuth)
- Browse, search, and filter your gists by language
- Create, edit, and delete gists and individual files
- Syntax highlighting and Markdown preview
- Browse public gists; star and fork them
- Pin and archive gists to keep your list organized
- Share links, generate QR codes, and export gist files
- Offline edits are queued and synced when you reconnect, with conflict resolution
- Light/dark themes and adjustable font and tab sizes
- Localized into 41 languages

On macOS, GistHunt runs as a menu bar app. It has no Dock icon, so look for its icon in the menu bar after launch.

## Requirements

- [Flutter](https://docs.flutter.dev/get-started/install) 3.41 or newer
- For iOS/macOS: Xcode (plugins resolve through Swift Package Manager; CocoaPods is not needed)
- For Android: Android Studio or the Android SDK command-line tools
- A GitHub account to create an OAuth App (below)

Run `flutter doctor` to confirm your toolchain is set up for the platforms you want to build.

## Platform support

| Platform | Status |
| --- | --- |
| macOS | Supported (menu bar app) |
| iOS | Supported |
| Android | Supported |
| Windows, Linux, Web | Not yet supported. The project scaffolding exists, but GitHub sign-in is not wired up on these platforms. |

Sign-in relies on the `gisthunt://callback` custom URL scheme. That scheme is registered only in the iOS, macOS, and Android projects.

Flutter itself runs on Windows, Linux, and the web, so these platforms are within reach. The main missing piece is the sign-in callback on each one. Pull requests that add support are welcome.

## Create a GitHub OAuth App

GistHunt signs users in through a GitHub **OAuth App**, not a "GitHub App". You need your own client ID and secret to build the app.

1. Go to **GitHub → Settings → Developer settings → OAuth Apps** (<https://github.com/settings/developers>) and click **New OAuth App**.
2. Fill in the form:
   - **Application name:** anything, for example `GistHunt (dev)`
   - **Homepage URL:** any URL, for example your fork's repository URL
   - **Authorization callback URL:** `gisthunt://callback` (this must match exactly)
   - Leave **Enable Device Flow** unchecked.
3. Click **Register application**.
4. On the app's page, copy the **Client ID**.
5. Click **Generate a new client secret** and copy the secret right away. GitHub shows it only once.

At sign-in the app requests the `gist` scope (read and write gists) and the `user` scope (profile information).

### Add the credentials to `.env`

The app reads credentials from a `.env` file in the project root. The file is bundled as a Flutter asset, so **the build fails if it is missing**.

```sh
cp .env.example .env
```

Then edit `.env`:

```
GITHUB_CLIENT_ID=your_client_id
GITHUB_CLIENT_SECRET=your_client_secret
```

`.env` is gitignored. Never commit it.

> **Security note:** The client secret is packaged inside the built app, so anyone holding a build can extract it. That is acceptable for local development. If you distribute your own build publicly, use a dedicated OAuth App for it and consider moving the code-for-token exchange to a small backend you control.

## Build and run

```sh
git clone https://github.com/<you>/GistHunt.git
cd GistHunt
cp .env.example .env      # then fill in your credentials
flutter pub get
flutter run -d macos      # or: -d ios, -d android, or a device ID from `flutter devices`
```

Localization classes in `lib/l10n/` are generated from the `.arb` files automatically (`generate: true` in `pubspec.yaml`). To regenerate them by hand, run `flutter gen-l10n`.

### macOS and iOS code signing

The project defaults to the placeholder bundle ID `com.example.gisthunt` with no signing team. Set your own in a local, gitignored config file:

```sh
cp macos/Signing.local.xcconfig.example macos/Signing.local.xcconfig
cp ios/Signing.local.xcconfig.example ios/Signing.local.xcconfig
```

Then edit each copy:

```
PRODUCT_BUNDLE_IDENTIFIER = com.yourname.gisthunt
DEVELOPMENT_TEAM = YOUR_TEAM_ID
```

Your team ID is listed under **Membership details** at <https://developer.apple.com/account>. A free Apple ID works for local development.

- **macOS** needs this even for local runs: the app stores your GitHub token in the Keychain, which requires a signed build.
- **iOS** runs in the Simulator without it, but a physical device needs it.

Set these values in the local file, not in Xcode's **Signing & Capabilities** tab. Xcode would save them into `project.pbxproj`, and they'd show up in your commits.

### Android

Debug builds work out of the box with `flutter run -d android`.

For release builds, create `android/key.properties` (gitignored) pointing at your own keystore:

```properties
storeFile=/absolute/path/to/your-release-key.jks
storePassword=...
keyAlias=...
keyPassword=...
```

To publish your own build, also add your application ID to the same file:

```properties
applicationId=com.yourname.gisthunt
```

Without one, builds use the placeholder `com.example.gisthunt`.

Then run `flutter build apk` or `flutter build appbundle`. Without `key.properties`, release builds fall back to the debug key, which is fine for local testing but can't be uploaded to Google Play. See [Flutter's Android signing guide](https://docs.flutter.dev/deployment/android#sign-the-app) to create a keystore.

## Tests and analysis

```sh
flutter analyze
flutter test
```

## Translations

English strings live in `lib/l10n/app_en.arb`, and each other locale has its own `app_<locale>.arb`. To add a string:

1. Add the key, with an `@key` description, to `app_en.arb`.
2. Run `flutter gen-l10n`. Any keys missing from other locales are listed in `untranslated_messages.json`.
3. Add translations by hand, or run the helper script. It fills in missing keys using a local model served by [VoxyAI](https://voxyai.io):

   ```sh
   python3 scripts/translate_l10n.py                                  # list available models
   python3 scripts/translate_l10n.py --model <id> --dry-run           # preview
   python3 scripts/translate_l10n.py --model <id> --locales de,fr     # translate specific locales
   ```

4. Run `flutter gen-l10n` again to regenerate the Dart classes.

> **Note:** Pass `--model` with a model you have installed in VoxyAI that is suitable for translation, or set `VOXYAI_MODEL`. Run the script without `--model` to list the models VoxyAI has available.
>
> Regional variants (`es_ES`, `es_MX`, `fr_CA`, `pt_BR`, `pt_PT`) are skipped by default, because they fall back to their base language's translation. Pass `--include-regional` to translate them too, or name them in `--locales`.

The script requires VoxyAI running with **Settings → Coding Tools → Serve local models to developer tools** turned on. It needs only Python 3, with no extra packages. Machine translations deserve a review by a native speaker.

## Contributing

Issues and pull requests are welcome. Before you open a PR, run `flutter analyze` and `flutter test`. Don't commit `.env`, `Signing.local.xcconfig`, `android/key.properties`, or any keystore.

## License

[MIT](LICENSE)
