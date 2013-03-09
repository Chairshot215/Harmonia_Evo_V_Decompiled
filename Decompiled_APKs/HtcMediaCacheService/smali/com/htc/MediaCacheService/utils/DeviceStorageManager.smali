.class public Lcom/htc/MediaCacheService/utils/DeviceStorageManager;
.super Ljava/lang/Object;
.source "DeviceStorageManager.java"


# static fields
.field public static final FOLDER_CAMERA:Ljava/lang/String; = "/dcim"

.field public static final FOLDER_DOWNLOAD:Ljava/lang/String; = "/download/"

.field public static final FOLDER_DOWNLOADS:Ljava/lang/String; = "/downloads/"

.field public static final FOLDER_SCRIBBLES:Ljava/lang/String; = "/htcscribbles"

.field public static final FOLDER_THUMBNAIL:Ljava/lang/String; = "/.thumbnails/"

.field private static LOG_TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final m_bSupportExternalStorage:Z = false

.field private static final m_bSupportInternalStorage:Z = true

.field private static final m_bSupportPhoneStorage:Z

.field private static final m_nSupportedStorages:I

.field private static m_szAllDownlaodsPaths:[Ljava/lang/String;

.field private static m_szCameraShotsPaths:[Ljava/lang/String;

.field private static m_szDataDirectoryPath:Ljava/lang/String;

.field private static final m_szDefaultStoragePath:Ljava/lang/String;

.field private static m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

.field private static m_szExternalCameraPath:Ljava/lang/String;

.field private static m_szExternalDownloadPath:Ljava/lang/String;

.field private static m_szExternalDownloadsPath:Ljava/lang/String;

.field private static m_szExternalScribblesPath:Ljava/lang/String;

.field private static final m_szExternalStoragePath:Ljava/lang/String;

.field private static m_szExternalStorageState:Ljava/lang/String;

.field private static m_szExternalThumbnailPath:Ljava/lang/String;

.field private static m_szPhoneCameraPath:Ljava/lang/String;

.field private static m_szPhoneDownloadPath:Ljava/lang/String;

.field private static m_szPhoneDownloadsPath:Ljava/lang/String;

.field private static m_szPhoneScribblesPath:Ljava/lang/String;

.field private static m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

.field private static final m_szPhoneStoragePath:Ljava/lang/String;

.field private static m_szPhoneStorageState:Ljava/lang/String;

.field private static m_szPhoneThumbnailPath:Ljava/lang/String;

.field private static final m_uriExternalPhotos:Landroid/net/Uri;

.field private static final m_uriExternalPhotosThumbs:Landroid/net/Uri;

.field private static final m_uriExternalVideos:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 15
    const-class v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    .line 17
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v0

    sput v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_nSupportedStorages:I

    .line 18
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    .line 19
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    .line 20
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    .line 32
    sget v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_nSupportedStorages:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    .line 33
    sget v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_nSupportedStorages:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_bSupportExternalStorage:Z

    .line 34
    invoke-static {}, Landroid/os/Environment;->getDefaultStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    .line 35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    .line 37
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    .line 39
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    .line 40
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 41
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 46
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    .line 47
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    .line 48
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    .line 49
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    .line 50
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    .line 51
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    .line 52
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    .line 58
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    .line 59
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 60
    sput-object v3, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneScribblesPath:Ljava/lang/String;

    .line 67
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 32
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 33
    goto/16 :goto_1

    .line 37
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDownloadsPaths()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 500
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 502
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    .line 503
    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageDownloadPaths()[Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, szPaths:[Ljava/lang/String;
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    aget-object v2, v0, v3

    aput-object v2, v1, v3

    .line 505
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    aget-object v2, v0, v4

    aput-object v2, v1, v4

    .line 506
    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageDownloadPaths()[Ljava/lang/String;

    move-result-object v0

    .line 507
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v0, v3

    aput-object v3, v1, v2

    .line 508
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v0, v4

    aput-object v3, v1, v2

    .line 511
    :cond_0
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    return-object v1
.end method

.method public static getCameraShotsPaths()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 516
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    .line 519
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 520
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 523
    :cond_0
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getDataDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalPhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalPhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 424
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 428
    :cond_0
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 447
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    .line 451
    :cond_0
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadPaths()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 433
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    .line 436
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 437
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageDownloadsPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 440
    :cond_0
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    .line 459
    :cond_0
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageState(Z)Ljava/lang/String;
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 249
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 259
    .local v0, state:Ljava/lang/String;
    sget-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    .line 260
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 261
    :cond_1
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 264
    return-object v0
.end method

.method public static getExternalStorageState(ZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "bRefresh"
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 227
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isExternalMediaMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 230
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, media:Ljava/lang/String;
    const-string v0, "mediaTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanner state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/MediaCacheService/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "external"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "checking"

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->setExternalStorageState(Ljava/lang/String;)V

    .line 240
    .end local v7           #media:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    invoke-static {v8}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 170
    :cond_0
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalStorageState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 269
    const-string v0, "com.htc.album.action.MEMORY_NOT_FILL"

    .line 271
    .local v0, state:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 272
    const-string v0, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    .line 274
    :cond_0
    return-object v0
.end method

.method public static getPhoneStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    .line 467
    :cond_0
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 472
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    .line 475
    :cond_0
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadPaths()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 488
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 490
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    .line 491
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 492
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageDownloadsPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 495
    :cond_0
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    .line 483
    :cond_0
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageState(Z)Ljava/lang/String;
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 211
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 212
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    .line 214
    :cond_1
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageState(ZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "bRefresh"
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isPhoneMediaMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 191
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 192
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, media:Ljava/lang/String;
    const-string v0, "mediaTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanner state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/MediaCacheService/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "phoneStorage"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "checking"

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->setPhoneStorageState(Ljava/lang/String;)V

    .line 201
    .end local v7           #media:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    invoke-static {v8}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 178
    :cond_0
    sget-object v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static isAllStorageReady()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isAllStorageReady(Z)Z

    move-result v0

    return v0
.end method

.method public static isAllStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 395
    .local v0, bRes:Z
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v0

    .line 397
    sget-boolean v1, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v1, :cond_0

    .line 398
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 400
    :cond_0
    return v0
.end method

.method public static isExternalMediaMounted()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalMediaMounted(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 294
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageChecking(Z)Z
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 327
    const-string v0, "checking"

    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 405
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 348
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFileOnAllDownloads(Ljava/lang/String;)Z
    .locals 5
    .parameter "filepath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 528
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStorageDownloadsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    move v0, v3

    .line 532
    .local v0, bExist:Z
    :goto_0
    sget-boolean v4, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 534
    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageDownloadsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    move v0, v3

    .line 538
    :cond_2
    :goto_1
    return v0

    .end local v0           #bExist:Z
    :cond_3
    move v0, v2

    .line 529
    goto :goto_0

    .restart local v0       #bExist:Z
    :cond_4
    move v0, v2

    .line 534
    goto :goto_1
.end method

.method public static isFileOnPhoneStorage(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 415
    sget-boolean v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInternalStorageStateError()Z
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneMediaMounted()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneMediaMounted(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 305
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneStorageChecking(Z)Z
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 322
    const-string v0, "checking"

    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 343
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStorageChecking(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 317
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isExternalStorageChecking(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isPhoneStorageChecking(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStorageMediaMounted(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 279
    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaReadOnly(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 284
    const-string v0, "mounted_ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaShared(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 289
    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .parameter "state"
    .parameter "requireWriteAccess"
    .parameter "path"

    .prologue
    .line 372
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    .line 373
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 375
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    const/4 v0, 0x0

    .line 383
    .end local v1           #directory:Ljava/io/File;
    :cond_0
    :goto_0
    return v0

    .line 380
    .restart local v1       #directory:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    goto :goto_0
.end method

.method public static isStorageStateError(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 332
    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bad_removal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nofs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "removed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmountable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportExternalStorage()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_bSupportExternalStorage:Z

    return v0
.end method

.method public static isSupportInternalStorage()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPhoneStorage()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    return v0
.end method

.method public static noActiveStorage(Z)Z
    .locals 3
    .parameter "bRefresh"

    .prologue
    const/4 v1, 0x1

    .line 358
    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isExternalStorageStateError(Z)Z

    move-result v0

    .line 360
    .local v0, bRes:Z
    sget-boolean v2, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    if-eqz v2, :cond_0

    .line 361
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isPhoneStorageStateError(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 364
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    :goto_1
    return v1

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 367
    goto :goto_1
.end method

.method public static setExternalStorageState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 222
    sput-object p0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public static setPhoneStorageState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 183
    sput-object p0, Lcom/htc/MediaCacheService/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    .line 184
    return-void
.end method
