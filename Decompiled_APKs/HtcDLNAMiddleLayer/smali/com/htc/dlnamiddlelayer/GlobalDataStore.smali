.class public Lcom/htc/dlnamiddlelayer/GlobalDataStore;
.super Ljava/lang/Object;
.source "GlobalDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;,
        Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;,
        Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;
    }
.end annotation


# static fields
.field public static final ALBUMART_CACHE_PATH:Ljava/lang/String; = "/data/com.htc.dlnamiddlelayer/cache/albumthumbs/"

.field public static final ALBUM_FILTER_TYPES:I = 0x6

.field public static final AUDIO_FORMAT_3GP:Ljava/lang/String; = ".3gp"

.field public static final AUDIO_FORMAT_AAC:Ljava/lang/String; = ".aac"

.field public static final AUDIO_FORMAT_AMR:Ljava/lang/String; = ".amr"

.field public static final AUDIO_FORMAT_M4A:Ljava/lang/String; = ".m4a"

.field public static final AUDIO_FORMAT_MP3:Ljava/lang/String; = ".mp3"

.field public static final AUDIO_FORMAT_MP4:Ljava/lang/String; = ".mp4"

.field public static final AUDIO_FORMAT_WAV:Ljava/lang/String; = ".wav"

.field public static final AUDIO_FORMAT_WMA:Ljava/lang/String; = ".wma"

.field public static final AUDIO_MIMETYPE_3GP:Ljava/lang/String; = "3gpp"

.field public static final AUDIO_MIMETYPE_AAC:Ljava/lang/String; = "aac"

.field public static final AUDIO_MIMETYPE_AMR:Ljava/lang/String; = "amr"

.field public static final AUDIO_MIMETYPE_DLNA1:Ljava/lang/String; = "mpeg"

.field public static final AUDIO_MIMETYPE_DLNA2:Ljava/lang/String; = "vnd.dlna.adts"

.field public static final AUDIO_MIMETYPE_DLNA3:Ljava/lang/String; = "x-dab"

.field public static final AUDIO_MIMETYPE_M4A:Ljava/lang/String; = "m4a"

.field public static final AUDIO_MIMETYPE_MP3:Ljava/lang/String; = "mp3"

.field public static final AUDIO_MIMETYPE_MP4:Ljava/lang/String; = "mp4"

.field public static final AUDIO_MIMETYPE_WAV:Ljava/lang/String; = "wav"

.field public static final AUDIO_MIMETYPE_WMA:Ljava/lang/String; = "wma"

.field public static final CACHE_TYPE_GRID:I = 0x2

.field public static final COMMAND_HANDLED_FAILURE:I = -0x1

.field public static final COMMAND_HANDLED_SUCCESS:I = 0x1

.field public static final COMMAND_NOT_HANDLE:I = 0x0

.field public static final CONTROLLER_PREF_PREFIX:Ljava/lang/String; = "Controller"

.field public static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field public static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field public static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final CloseSelf:I = 0x1

.field public static DEFAULT_SEQUENCE_SIZE1:Ljava/lang/String; = null

.field public static DEFAULT_SEQUENCE_SIZE2:Ljava/lang/String; = null

.field public static DEFAULT_SEQUENCE_SIZE3:Ljava/lang/String; = null

.field public static final DEFAULT_SERVICECLOSE_TIMEOUT_MILLIS:I = 0x927c0

.field public static final DLNA_CALLER_ALBUM:I = 0x0

.field public static final DLNA_CALLER_ALBUM_BROWSER:I = 0x0

.field public static final DLNA_CALLER_ALBUM_DMC:I = 0x2

.field public static final DLNA_CALLER_ALBUM_DMP:I = 0x1

.field public static final DLNA_CALLER_ALL:I = 0xff

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field public static final DLNA_CALLER_MUSIC_BROWSER:I = 0x10

.field public static final DLNA_CALLER_MUSIC_DMC:I = 0x12

.field public static final DLNA_CALLER_MUSIC_DMP:I = 0x11

.field public static final DLNA_DMC_AUDIO_PAUSE:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_audio_pause"

.field public static final DLNA_DMC_AUDIO_PLAY:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_audio_play"

.field public static final DLNA_DMC_DESTROY:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_destroy"

.field public static final DLNA_DMC_PHOTO_START:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_photo_start"

.field public static final DLNA_DMC_PHOTO_STOP:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_photo_stop"

.field public static final DLNA_DMC_VIDEO_PAUSE:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_video_pause"

.field public static final DLNA_DMC_VIDEO_PLAY:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_video_play"

.field public static final DMC_NOTIFY_PAUSE:I = 0x3

.field public static final DMC_NOTIFY_PLAY:I = 0x2

.field public static final FILTER_AUDIO:I = 0x1

.field public static final FILTER_IMAGE:I = 0x2

.field public static final FILTER_VIDEO:I = 0x4

.field public static final IMAGE_CACHE_PATH:Ljava/lang/String; = "/data/com.htc.dlnamiddlelayer/cache/images/"

.field public static final IMAGE_FORMAT_BMP:Ljava/lang/String; = ".bmp"

.field public static final IMAGE_FORMAT_GIF:Ljava/lang/String; = ".gif"

.field public static final IMAGE_FORMAT_JPEG:Ljava/lang/String; = ".jpeg"

.field public static final IMAGE_FORMAT_JPG:Ljava/lang/String; = ".jpg"

.field public static final IMAGE_FORMAT_PNG:Ljava/lang/String; = ".png"

.field public static final IMAGE_MIMETYPE_BMP:Ljava/lang/String; = "bmp"

.field public static final IMAGE_MIMETYPE_GIF:Ljava/lang/String; = "gif"

.field public static final IMAGE_MIMETYPE_JPG:Ljava/lang/String; = "jpg"

.field public static final IMAGE_MIMETYPE_PNG:Ljava/lang/String; = "png"

.field public static final IMAGE_MUSIC_CACHE_SIZE:I = 0x7

.field public static final IMAGE_MUSIC_CACHE_TABLE:Ljava/lang/String; = "image_music"

.field public static final IMAGE_PHOTO_CACHE_SIZE:I = 0x7

.field public static final IMAGE_PHOTO_CACHE_TABLE:Ljava/lang/String; = "image_photo"

.field public static final LOCAL_THUMBDB_CACHE_SIZE:I = 0x14

.field public static final MAX_CONTENT_IN_DATABASE:I = 0x4e20

.field public static final MAX_CONTENT_PER_PAGE:I = 0xc7

.field public static final MESSAGE_CODE_LOCAL:I = 0x0

.field public static final MESSAGE_CODE_UPnP:I = 0x1

.field public static final MULTICAST_ADDR:Ljava/lang/String; = "239.255.255.250"

.field public static final MULTICAST_PORT:I = 0x76c

.field public static final MUSICPLAYER_PLAYSTATE:Ljava/lang/String; = "com.htc.music.playstatechanged"

.field public static final MUSIC_FILTER_TYPES:I = 0x1

.field public static final NOTIFICATION_CANCEL:I = 0x1

.field public static final NOTIFICATION_CREATE:I = 0x0

.field public static final NOTIFICATION_MAX_THUMBNAIL_SIZE:I = 0x48

.field public static final PHOTO_SLIDESHOW_START:I = 0x0

.field public static final PHOTO_SLIDESHOW_STOP:I = 0x1

.field public static final PUSH_ALBUMART_MAX_HEIGHT:I = 0xa0

.field public static final PUSH_ALBUMART_MAX_WIDTH:I = 0xa0

.field public static SCREEN_LONG_SIDE_LENGTH:I = 0x0

.field public static SCREEN_SHORT_SIDE_LENGTH:I = 0x0

.field public static final SERVICECLOSE_FILENAME:Ljava/lang/String; = "Service_closeTime"

.field public static final STORAGE_FOLDER:Ljava/lang/String; = null

.field public static STR_HTC_MEDIA_LINK:Ljava/lang/String; = null

.field public static STR_WINDOWS_MEDIA_PLAYER:Ljava/lang/String; = null

.field public static final SUPPORTED_AUDIO_FORMATS:[Ljava/lang/String; = null

.field public static final SUPPORTED_AUDIO_MIMETYPES:[Ljava/lang/String; = null

.field public static final SUPPORTED_IMAGE_FORMATS:[Ljava/lang/String; = null

.field public static final SUPPORTED_IMAGE_MIMETYPES:[Ljava/lang/String; = null

.field public static final SUPPORTED_VIDEO_FORMATS:[Ljava/lang/String; = null

.field public static final SUPPORTED_VIDEO_MIMETYPES:[Ljava/lang/String; = null

.field public static final SUPPORT_FILTER_TYPES:[I = null

.field public static final ServiceError_InvalidParameter:I = -0x1f8

.field public static final ServiceError_IsNotContainer:I = -0x1f7

.field public static final ServiceError_RendererNotFound:I = -0x1f6

.field public static final ServiceError_ServerNotFound:I = -0x1f5

.field public static final TAG:Ljava/lang/String; = "DLNAMiddlelayer"

.field public static final THUMB_CACHE_PATH:Ljava/lang/String; = "/data/com.htc.dlnamiddlelayer/cache/thumbnails/"

.field public static final THUMB_CONTENT_CACHE_SIZE:I = 0x32

.field public static final THUMB_CONTENT_CACHE_TABLE:Ljava/lang/String; = "thumb_content"

.field public static final THUMB_SERVER_CACHE_SIZE:I = 0x14

.field public static final THUMB_SERVER_CACHE_TABLE:Ljava/lang/String; = "thumb_server"

.field public static final UNSUPPORTED_VIDEO_MIMETYPES:[Ljava/lang/String; = null

.field public static final UPnPError_AuthorizationFail:I = 0x321

.field public static final URL_HEADER_WITHOUT_BYTE_SEEK:Ljava/lang/String; = "htc-dlna://"

.field public static final UknownValue:I = -0x1

.field public static final VIDEO_FORMAT_3GP:Ljava/lang/String; = ".3gp"

.field public static final VIDEO_FORMAT_AVI:Ljava/lang/String; = ".avi"

.field public static final VIDEO_FORMAT_MP4:Ljava/lang/String; = ".mp4"

.field public static final VIDEO_FORMAT_WMA:Ljava/lang/String; = ".wma"

.field public static final VIDEO_FORMAT_XVID:Ljava/lang/String; = ".xvid"

.field public static final VIDEO_MIMETYPE_3GP:Ljava/lang/String; = "3gpp"

.field public static final VIDEO_MIMETYPE_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final VIDEO_MIMETYPE_AVI:Ljava/lang/String; = "avi"

.field public static final VIDEO_MIMETYPE_DEVICE:Ljava/lang/String; = "x-msvideo"

.field public static final VIDEO_MIMETYPE_DLNA1:Ljava/lang/String; = "mpeg"

.field public static final VIDEO_MIMETYPE_MP4:Ljava/lang/String; = "mp4"

.field public static final VIDEO_MIMETYPE_MPEG2:Ljava/lang/String; = "mpeg2"

.field public static final VIDEO_MIMETYPE_WMV:Ljava/lang/String; = "wmv"

.field public static final VIDEO_MIMETYPE_XVID:Ljava/lang/String; = "xvid"

.field public static final WIFI_POWERMODE_BESTSUIT:I = 0x0

.field public static final WIFI_POWERMODE_NORMAL:I = 0x1

.field public static g_Gallery_Browse_ThumbSize:Ljava/lang/String; = null

.field public static g_Gallery_DMC_ThumbSize:Ljava/lang/String; = null

.field public static g_Music_Browse_ThumbSize:Ljava/lang/String; = null

.field public static g_Music_DMC_AlbumArtSize:Ljava/lang/String; = null

.field public static g_Music_DMP_AlbumArtSize:Ljava/lang/String; = null

.field public static final theDLNAProtocolInfo:Ljava/lang/String; = "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_MED,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_TN,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM_ICO,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG_ICO,http-get:*:image/png:DLNA.ORG_PN=PNG_TN,http-get:*:image/png:DLNA.ORG_PN=PNG_SM_ICO,http-get:*:image/png:DLNA.ORG_PN=PNG_LRG_ICO,http-get:*:image/png:DLNA.ORG_PN=PNG_LRG,http-get:*:image/gif:DLNA.ORG_PN=GIF_LRG,http-get:*:audio/3gpp:DLNA.ORG_PN=AAC_ISO_320;DLNA.ORG_OP=01,http-get:*:audio/mp4:DLNA.ORG_PN=AAC_ISO_320;DLNA.ORG_OP=01,http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMABASE;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMAFULL;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMAPRO;DLNA.ORG_OP=01,http-get:*:audio/3gpp:DLNA.ORG_PN=AMR_3GPP;DLNA.ORG_OP=01,http-get:*:audio/mp4:DLNA.ORG_PN=AMR_3GPP;DLNA.ORG_OP=01,http-get:*:audio/vnd.dlna.adts:DLNA.ORG_PN=AAC_ADTS;DLNA.ORG_OP=01,http-get:*:audio/3gpp:DLNA.ORG_PN=AAC_ISO;DLNA.ORG_OP=01,http-get:*:audio/mp4:DLNA.ORG_PN=AAC_ISO;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC_520;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_SP_VGA_HEAAC_res;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC_520;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L2_CIF30_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L3L_SD_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L3_SD_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_MP_SD_HEAAC_L2;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L3L_SD_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF30_HEAAC_L2;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L12_CIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_L1B_QCIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_SP_L2_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L5_SO_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L4_SO_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_H263_MP4 P0_L10_AAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L4_SO_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_L5_SO_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_ASP_HEAAC;DLNA.ORG_OP=01,http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_MP4_SP_L2_AMR;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=AVC_3GPP_BL_QCIF15_HEAAC;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=AVC_3GPP_BL_QCIF15_AAC;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=AVC_3GPP_BL_QCIF15_AMR;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=MPEG4_P2_3GPP_SP_L0B_AAC;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=MPEG4_P2_3GPP_SP_L0B_AMR;DLNA.ORG_OP=01,http-get:*:video/3gpp:DLNA.ORG_PN=MPEG4_H263_3GPP_P3_L10_AMR;DLNA.ORG_OP=01,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVSPLL_BASE;DLNA.ORG_OP=01"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 29
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORT_FILTER_TYPES:[I

    .line 38
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    .line 118
    const/16 v0, 0x258

    sput v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 119
    const/16 v0, 0x400

    sput v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    .line 156
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".3gp"

    aput-object v1, v0, v4

    const-string v1, ".mp4"

    aput-object v1, v0, v5

    const-string v1, ".m4a"

    aput-object v1, v0, v3

    const-string v1, ".aac"

    aput-object v1, v0, v6

    const-string v1, ".mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".amr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".wav"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".wma"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_AUDIO_FORMATS:[Ljava/lang/String;

    .line 174
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".jpg"

    aput-object v1, v0, v4

    const-string v1, ".jpeg"

    aput-object v1, v0, v5

    const-string v1, ".gif"

    aput-object v1, v0, v3

    const-string v1, ".png"

    aput-object v1, v0, v6

    const-string v1, ".bmp"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_FORMATS:[Ljava/lang/String;

    .line 189
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".3gp"

    aput-object v1, v0, v4

    const-string v1, ".mp4"

    aput-object v1, v0, v5

    const-string v1, ".wma"

    aput-object v1, v0, v3

    const-string v1, ".avi"

    aput-object v1, v0, v6

    const-string v1, ".xvid"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_VIDEO_FORMATS:[Ljava/lang/String;

    .line 214
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3gpp"

    aput-object v1, v0, v4

    const-string v1, "mp4"

    aput-object v1, v0, v5

    const-string v1, "m4a"

    aput-object v1, v0, v3

    const-string v1, "aac"

    aput-object v1, v0, v6

    const-string v1, "mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "amr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wav"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "wma"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mpeg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vnd.dlna.adts"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "x-dab"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_AUDIO_MIMETYPES:[Ljava/lang/String;

    .line 234
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "jpg"

    aput-object v1, v0, v4

    const-string v1, "gif"

    aput-object v1, v0, v5

    const-string v1, "png"

    aput-object v1, v0, v3

    const-string v1, "bmp"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_MIMETYPES:[Ljava/lang/String;

    .line 252
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3gpp"

    aput-object v1, v0, v4

    const-string v1, "mp4"

    aput-object v1, v0, v5

    const-string v1, "avi"

    aput-object v1, v0, v3

    const-string v1, "xvid"

    aput-object v1, v0, v6

    const-string v1, "wmv"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "x-msvideo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_VIDEO_MIMETYPES:[Ljava/lang/String;

    .line 266
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "3gpp2"

    aput-object v1, v0, v4

    const-string v1, "mpeg2"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->UNSUPPORTED_VIDEO_MIMETYPES:[Ljava/lang/String;

    .line 342
    const-string v0, "JPEG_TN,PNG_TN"

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->DEFAULT_SEQUENCE_SIZE1:Ljava/lang/String;

    .line 343
    const-string v0, "JPEG_SM,JPEG_TN,PNG_TN"

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->DEFAULT_SEQUENCE_SIZE2:Ljava/lang/String;

    .line 344
    const-string v0, "JPEG_MED,JPEG_SM,JPEG_TN,PNG_TN"

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->DEFAULT_SEQUENCE_SIZE3:Ljava/lang/String;

    .line 345
    sget-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->DEFAULT_SEQUENCE_SIZE1:Ljava/lang/String;

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Gallery_Browse_ThumbSize:Ljava/lang/String;

    .line 346
    sget-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->DEFAULT_SEQUENCE_SIZE1:Ljava/lang/String;

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Music_Browse_ThumbSize:Ljava/lang/String;

    .line 347
    sget-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->DEFAULT_SEQUENCE_SIZE1:Ljava/lang/String;

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Gallery_DMC_ThumbSize:Ljava/lang/String;

    .line 348
    sget-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->DEFAULT_SEQUENCE_SIZE1:Ljava/lang/String;

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Music_DMC_AlbumArtSize:Ljava/lang/String;

    .line 349
    sget-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->DEFAULT_SEQUENCE_SIZE2:Ljava/lang/String;

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Music_DMP_AlbumArtSize:Ljava/lang/String;

    .line 352
    const-string v0, "WINDOWS MEDIA PLAYER"

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STR_WINDOWS_MEDIA_PLAYER:Ljava/lang/String;

    .line 353
    const-string v0, "HTC MEDIA LINK"

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STR_HTC_MEDIA_LINK:Ljava/lang/String;

    return-void

    .line 29
    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method
