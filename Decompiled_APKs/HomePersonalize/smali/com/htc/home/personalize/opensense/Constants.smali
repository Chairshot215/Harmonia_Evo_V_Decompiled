.class public Lcom/htc/home/personalize/opensense/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ALL_DOWNLOADS:Ljava/lang/String; = "com.htc.HTCAlbum.ALL_DOWNLOADS"

.field public static final ALL_DOWNLOAD_PATH:Ljava/lang/String; = null

.field public static final ALL_PHOTOS:Ljava/lang/String; = "com.htc.HTCAlbum.ALL_PHOTOS"

.field public static final ALL_VIDEOS:Ljava/lang/String; = "com.htc.HTCAlbum.ALL_VIDEOS"

.field public static final BEST_FIT_LANDSCAPE_VIEW_PORTRAIT_IMAGE:Z = false

.field public static final CAMERA_SHOTS:Ljava/lang/String; = "com.htc.HTCAlbum.CAMERA_SHOTS"

.field public static DBG:Z = false

.field public static final DUMMY:Ljava/lang/String; = "com.htc.HTCAlbum.DUMMY"

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_DIVXDRM:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_WMDRM:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_ZOOM_CONTROLS:Z = false

.field public static final EXTERNAL_VIEWER:Ljava/lang/String; = "external_viewer"

.field public static final FULLSCREEN_MAIN_THREAD:Z = false

.field public static KEEPED_LOG:Z = false

.field public static final KEY_FOLDER_TYPE:Ljava/lang/String; = "folder_type"

.field public static final KEY_IMAGE_ARGS:Ljava/lang/String; = "image_args"

.field public static final KEY_IMAGE_PHONE_URI:Ljava/lang/String; = "image_uri_phone"

.field public static final KEY_IMAGE_PROJECTION:Ljava/lang/String; = "image_projection"

.field public static final KEY_IMAGE_SORT_ORDER:Ljava/lang/String; = "image_sort_order"

.field public static final KEY_IMAGE_URI:Ljava/lang/String; = "image_uri"

.field public static final KEY_IMAGE_WHERE:Ljava/lang/String; = "image_where"

.field public static final KEY_ITEM_INDEX:Ljava/lang/String; = "itemIndex"

.field public static final KEY_ITEM_THUMB:Ljava/lang/String; = "itemThumb"

.field public static final KEY_SERVICE_TYPE:Ljava/lang/String; = "servicetype"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "itemName"

.field public static final KEY_VIDEO_ARGS:Ljava/lang/String; = "video_args"

.field public static final KEY_VIDEO_PROJECTION:Ljava/lang/String; = "video_projection"

.field public static final KEY_VIDEO_SORT_ORDER:Ljava/lang/String; = "video_sort_order"

.field public static final KEY_VIDEO_URI:Ljava/lang/String; = "video_uri"

.field public static final KEY_VIDEO_WHERE:Ljava/lang/String; = "video_where"

.field public static final LOCAL_FOLDER:Ljava/lang/String; = "com.htc.HTCAlbum.LOCAL_FOLDER"

.field public static final MY_FAVORITES:Ljava/lang/String; = "com.htc.HTCAlbum.MY_FAVORITES"

.field public static final ORIENTAION_LOG:Z = false

.field public static final PHONE_STORAGE:Ljava/lang/String; = "com.htc.HTCAlbum.PHONE_STORAGE"

.field public static final SAVE_FIT_TO_SCREEN_THUMB:Z = false

.field public static final SHOW_MAP_ON_MENU:Z = true

.field public static final SUPPORT_VIDEO_TYPES:[Ljava/lang/String; = null

.field public static final USE_DLG_IN_DRM_V1:Z = false

.field public static final USE_DRM_2:Z = false

.field public static final USE_HQ_DECODE:Z = true

.field public static final USE_PARTIAL_DECODE:Z = false

.field public static final WMDRM_MIMETYPE:Ljava/lang/String; = "video/x-wmv-drm"

.field public static final ZOOMING_FREE_ROTATE:Z = false

.field public static final ZOOM_LOG:Z = false

.field public static final mUseCacheInFullScreen:Z = true

.field public static final mUseNativeCache:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcMultiTouchFlag:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_ZOOM_CONTROLS:Z

    .line 34
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x19

    if-ne v0, v3, :cond_1

    const-string v0, "/sdcard/MyCollections/"

    :goto_1
    sput-object v0, Lcom/htc/home/personalize/opensense/Constants;->ALL_DOWNLOAD_PATH:Ljava/lang/String;

    .line 40
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x71

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_DIVXDRM:Z

    .line 45
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "video/mp4"

    aput-object v0, v3, v2

    const-string v0, "video/3gpp"

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string v4, "video/x-ms-wmv"

    aput-object v4, v3, v0

    const/4 v4, 0x3

    sget-boolean v0, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_DIVXDRM:Z

    if-eqz v0, :cond_3

    const-string v0, "video/avi"

    :goto_3
    aput-object v0, v3, v4

    sput-object v3, Lcom/htc/home/personalize/opensense/Constants;->SUPPORT_VIDEO_TYPES:[Ljava/lang/String;

    .line 68
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v0, :cond_4

    :goto_4
    sput-boolean v1, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_WMDRM:Z

    .line 91
    sput-boolean v2, Lcom/htc/home/personalize/opensense/Constants;->KEEPED_LOG:Z

    .line 92
    sput-boolean v2, Lcom/htc/home/personalize/opensense/Constants;->DBG:Z

    return-void

    :cond_0
    move v0, v2

    .line 12
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "/sdcard/download/"

    goto :goto_1

    :cond_2
    move v0, v2

    .line 40
    goto :goto_2

    .line 45
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    move v1, v2

    .line 68
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
