# Mobile UI before/after screenshots

Screenshots for [pakompom/SpaceRangersHD_FPC#23](https://github.com/pakompom/SpaceRangersHD_FPC/pull/23).
Left half: upstream `main` (1d1835a). Right half: the PR branch.

Captured on the Android emulator (API 36, x86_64) from the same save, one folder per screen size:

| Folder | Screen | Density |
|---|---|---|
| `2400x1080` | 20:9 phone | 480 dpi |
| `1920x1080` | 16:9 phone | 480 dpi |
| `1600x720` | small 20:9 phone | 320 dpi |
| `2048x1536` | 4:3 tablet | 320 dpi |

Screens: `00-menu`, `01-character`, `02-load`, `03-planet`, `04-gov` (government dialogue), `05-trade`, `06-ship`, `07-hangar`, `08-galaxy`, `09-journal`, `10-space` (weapon panel open), `11-ship-space`, `12-confirm` (exit confirmation, 2400x1080 only).

On the 4:3 tablet the ship window, hangar and planet are unchanged on purpose: the original layouts fit there and are larger than the phone layouts would be.
