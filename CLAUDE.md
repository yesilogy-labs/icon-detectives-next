# Icon Detectives — next — Flutter (Android + iOS)

Icon Detectives'in yeni tasarımlı, sıfırdan yazılan sürümü. Bulmaca kartlarında ikon yerine sahibinin ürettiği görseller kullanılır.
Eski sürüm `~/Projects/icon-detectives` yalnızca referanstır: okunur, değiştirilmez. Kavram, içerik ve veri modeli için `~/Projects/icon-detectives/handoff-package/`.

## Her oturumun başında
`docs/PROGRESS.md` → en alttaki **"Sonraki adım:"** satırını oku.

## Oturum sonunda
`docs/PROGRESS.md`'ye tarihli kayıt + somut **"Sonraki adım:"** satırı (dosya adı + komut).

## Yığın
- State: Riverpod 3 (`riverpod_annotation` + `riverpod_generator`)
- Routing: go_router (`lib/core/router/app_router.dart`)
- Modeller: freezed + json_serializable
- i18n: slang (`lib/i18n/strings_<dil>.i18n.json`, temel dil `tr`); kodda sabit UI metni yok
- Animasyon: flutter_animate · Vektör: flutter_svg · Yerel kayıt: shared_preferences
- Çevrimdışı tam oynanır: görsel/ses/font/içerik `assets/` altında gömülü, CDN yok
- Bundle id: `com.yesilogy.icondetectives` (mağazadaki mevcut uygulamanın yerine geçer; versionCode > 91)

## Klasörler
```
lib/app.dart                 MaterialApp.router
lib/core/                    router, theme (ortak altyapı)
lib/features/<özellik>/      ekranlar ve özellik mantığı
lib/i18n/                    slang sözlükleri (*.g.dart üretilir)
assets/images|audio|fonts|content
```

## Komutlar
```
dart run build_runner build --delete-conflicting-outputs   # *.g.dart / *.freezed.dart / strings.g.dart (git'te yok, önce bu)
dart run build_runner watch --delete-conflicting-outputs
flutter analyze && flutter test
```
