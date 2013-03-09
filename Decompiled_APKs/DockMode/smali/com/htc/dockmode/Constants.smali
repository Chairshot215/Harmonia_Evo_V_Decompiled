.class public Lcom/htc/dockmode/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_INTENT_APP_LIST:Ljava/lang/String; = "com.htc.dockmode.selectapp"

.field public static final APP_LIST_CLASS:Ljava/lang/String; = "com.htc.dockmode.shortcut.SelectAppActivity"

.field public static final APP_LIST_PACKAGE:Ljava/lang/String; = "com.htc.dockmode"

.field public static AUTO_INVISIBLE_TIME:I = 0x0

.field public static AUTO_RESUME_TIME:I = 0x0

.field public static final CALENDER_CLASS:Ljava/lang/String; = "com.htc.calendar.LaunchActivity"

.field public static final CALENDER_PACKAGE:Ljava/lang/String; = "com.htc.calendar"

.field public static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.android.camera"

.field public static final CAR_PANEL_PACKAGE_NAME:Ljava/lang/String; = "com.htc.HtcNaviPanel"

.field public static final CONNECT_MEDIA_CLASS:Ljava/lang/String; = "com.htc.connectedMedia.ConnectedMedia"

.field public static final CONNECT_MEDIA_PACKAGE:Ljava/lang/String; = "com.htc.connectedMedia"

.field public static final DEFAULT_BUTTON_NUM:I = 0x3

.field public static final DEFAULT_WALLPAPER_CLASS:Ljava/lang/String; = "com.htc.android.WeatherLiveWallpaper.service.WeatherLoopingService"

.field public static final DEFAULT_WALLPAPER_PACKAGE:Ljava/lang/String; = "com.htc.android.WeatherLiveWallpaper"

.field public static final DOCK_MODE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.dockmode"

.field public static final FLASH_LIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.htc.flashlight"

.field public static final GalleryTmpFileName:Ljava/lang/String; = "galleryTmp.png"

.field public static final LIVE_WALLPAPER_CALLBACK_ACTION:Ljava/lang/String; = "com.htc.intent.ACTION_SET_LIVEWALLPAPER_DOCKMODE"

.field public static final LIVE_WALLPAPER_CLASS:Ljava/lang/String; = "com.htc.AddProgramWidget.WallpaperLivePicker"

.field public static MOVE_MUSIC_LEFT:Z = false

.field public static final PHOTOPHRAME_CLASS:Ljava/lang/String; = "com.htc.album.addons.slideshow.SlideShow"

.field public static final PHOTOPHRAME_LABEL:Ljava/lang/String; = "photo_frame"

.field public static final PHOTOPHRAME_PACKAGE:Ljava/lang/String; = "com.htc.album"

.field public static final ROOT:Ljava/lang/String; = "/mnt/sdcard/.data/dockmode"

.field public static final WALLPAPER:Ljava/lang/String; = "/mnt/sdcard/.data/dockmode/wallpaper.png"

.field public static final WALLPAPER_CALLBACK_ACTION:Ljava/lang/String; = "com.htc.intent.ACTION_SET_WALLPAPER_DOCKMODE"

.field public static final WALLPAPER_CHOOSER_ACTION:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER_DIALOG_DOCKMODE"

.field public static final WALLPAPER_CLASS:Ljava/lang/String; = "com.htc.AddProgramWidget.WallpaperPicker"

.field public static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.htc.AddProgramWidget"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x1b58

    sput v0, Lcom/htc/dockmode/Constants;->AUTO_RESUME_TIME:I

    .line 60
    const/16 v0, 0xbb8

    sput v0, Lcom/htc/dockmode/Constants;->AUTO_INVISIBLE_TIME:I

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/dockmode/Constants;->MOVE_MUSIC_LEFT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawable_icon_menu()I
    .locals 1

    .prologue
    .line 5
    const v0, 0x2080336

    return v0
.end method

.method public static drawable_icon_shortcut()I
    .locals 1

    .prologue
    .line 11
    const v0, 0x7f020003

    return v0
.end method

.method public static drawable_icon_wallpaper()I
    .locals 1

    .prologue
    .line 8
    const v0, 0x2080aa6

    return v0
.end method
