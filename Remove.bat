@echo off
echo Uninstalling selected apps via ADB...
adb start-server

:: Confirm device is connected
adb devices

:: Uninstall apps cleanly and clear data
for %%P in (
    com.oneplus.note
    com.google.android.apps.youtube.music
    com.oneplus.brickmode
    com.heytap.pcitorial
    com.oneplus.mall
    com.google.android.apps.chromecast.app
    com.coloros.translate
    com.google.android.apps.docs
    net.oneplus.forums
    com.oneplus.backuprestore
    com.oneplus.soundrecorder
    com.google.android.videos
    com.google.android.subscription.red
    com.google.android.apps.adm
    com.netflix.mediaclient
    net.oneplus.widget
    com.facebook.katana
    com.oneplus.gallery
    com.google.android.googlequicksearchbox
    com.heytap.browser
    com.microsoft.appmanager
    com.oplus.omoji
    com.google.android.dialer
    com.google.android.apps.maps
    com.google.android.apps.messaging
    com.google.android.apps.photos
    com.google.android.youtube
    com.oneplus.filemanager
    com.google.android.apps.tachyon
    com.google.ar.lens
    net.oneplus.weather
    com.google.android.calendar
    com.google.android.apps.nbu.files
    com.google.android.apps.nub.paisa.user
    com.google.android.accessibility.switchaccess
    com.android.chrome
    com.coloros.weather.service
    com.google.android.contacts
    com.oplus.phonemanager
    com.oplus.games
    com.oplus.potrait
    com.oplus.linker
    com.coloros.childrenspace
    com.heytap.cloud
    com.coloros.operationManual
    com.oplus.screenrecorder
    com.coloros.assistantscreen
    com.coloros.accessibilityassistant
    com.coloros.smartsidebar
    com.oppo.quicksearchbox
    com.google.android.tts
    com.oplus.aiunit
    com.heytap.pictoral
    com.google.android.projection.gearhead
    com.android.wallpaper.livepicker
    com.android.stk
) do (
    echo --------------------------------------------------
    echo Removing: %%P
    adb shell pm clear %%P
    adb shell pm uninstall --user 0 %%P
)

echo.
echo ✅ All selected apps processed.
pause
