.class public Lcom/htc/opensense/album/util/DeviceStorageManager;
.super Ljava/lang/Object;
.source "DeviceStorageManager.java"


# static fields
.field public static final FOLDER_CAMERA:Ljava/lang/String; = "/dcim"

.field public static final FOLDER_DOWNLOAD:Ljava/lang/String; = "/download/"

.field public static final FOLDER_DOWNLOADS:Ljava/lang/String; = "/downloads/"

.field public static final FOLDER_SCRIBBLES:Ljava/lang/String; = "/htcscribbles"

.field public static final FOLDER_THUMBNAIL:Ljava/lang/String; = "/.thumbnails/"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final m_bSupportExternalStorage:Z = true

.field private static final m_bSupportInternalStorage:Z = true

.field private static final m_bSupportPhoneStorage:Z

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

.field private static final m_uriInternalPhotos:Landroid/net/Uri;

.field private static final m_uriInternalPhotosThumbs:Landroid/net/Uri;

.field private static final m_uriInternalVideos:Landroid/net/Uri;

.field private static final m_uriPhonePhotos:Landroid/net/Uri;

.field private static final m_uriPhonePhotosThumbs:Landroid/net/Uri;

.field private static final m_uriPhoneVideos:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/htc/opensense/album/util/DeviceStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    .line 27
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    .line 28
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    .line 30
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriPhonePhotos:Landroid/net/Uri;

    .line 31
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriPhonePhotosThumbs:Landroid/net/Uri;

    .line 32
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriPhoneVideos:Landroid/net/Uri;

    .line 34
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriInternalPhotos:Landroid/net/Uri;

    .line 35
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriInternalPhotosThumbs:Landroid/net/Uri;

    .line 36
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriInternalVideos:Landroid/net/Uri;

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    .line 43
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    .line 45
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 47
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    .line 53
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    .line 54
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    .line 55
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    .line 56
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    .line 57
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    .line 58
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    .line 64
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 66
    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneScribblesPath:Ljava/lang/String;

    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 74
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDownloadsPaths()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 505
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 507
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    .line 508
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadPaths()[Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, szPaths:[Ljava/lang/String;
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    aget-object v2, v0, v3

    aput-object v2, v1, v3

    .line 510
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    aget-object v2, v0, v4

    aput-object v2, v1, v4

    .line 511
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageDownloadPaths()[Ljava/lang/String;

    move-result-object v0

    .line 512
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v0, v3

    aput-object v3, v1, v2

    .line 513
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v0, v4

    aput-object v3, v1, v2

    .line 516
    :cond_0
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    return-object v1
.end method

.method public static getCameraShotsPaths()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    .line 524
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 525
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 528
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getDataDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalPhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalPhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 429
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 433
    :cond_0
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 450
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 452
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    .line 456
    :cond_0
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadPaths()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 438
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    .line 441
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 442
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadsPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 445
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    .line 464
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageState(Z)Ljava/lang/String;
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 254
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 264
    .local v0, state:Ljava/lang/String;
    sget-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    .line 265
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 266
    :cond_1
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 269
    return-object v0
.end method

.method public static getExternalStorageState(ZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "bRefresh"
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 232
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalMediaMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 241
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

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "external"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "checking"

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->setExternalStorageState(Ljava/lang/String;)V

    .line 245
    .end local v7           #media:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    invoke-static {v8}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 175
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalPhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriInternalPhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalPhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriInternalPhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalStorageState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 274
    const-string v0, "com.htc.album.action.MEMORY_NOT_FILL"

    .line 276
    .local v0, state:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 277
    const-string v0, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    .line 279
    :cond_0
    return-object v0
.end method

.method public static getInternalVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriInternalVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhonePhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriPhonePhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhonePhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriPhonePhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhoneStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 469
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    .line 472
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    .line 480
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadPaths()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 493
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    .line 496
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 497
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageDownloadsPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 500
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    .line 488
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageScribblesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageState(Z)Ljava/lang/String;
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 216
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 217
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    .line 219
    :cond_1
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageState(ZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "bRefresh"
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 193
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isPhoneMediaMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 196
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 202
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

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v0, "phoneStorage"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "checking"

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->setPhoneStorageState(Ljava/lang/String;)V

    .line 206
    .end local v7           #media:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    invoke-static {v8}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 183
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneVideosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_uriPhoneVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getStorageStateByType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "folderType"

    .prologue
    .line 549
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, status:Ljava/lang/String;
    return-object v0
.end method

.method public static isAllStorageReady()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isAllStorageReady(Z)Z

    move-result v0

    return v0
.end method

.method public static isAllStorageReady(Z)Z
    .locals 1
    .parameter "requireWriteAccess"

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 400
    .local v0, bRes:Z
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v0

    .line 405
    return v0
.end method

.method public static isExternalMediaMounted()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalMediaMounted(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 299
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageChecking(Z)Z
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 332
    const-string v0, "checking"

    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 353
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFileOnAllDownloads(Ljava/lang/String;)Z
    .locals 3
    .parameter "filepath"

    .prologue
    .line 533
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 543
    .local v0, bExist:Z
    :goto_0
    return v0

    .line 534
    .end local v0           #bExist:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileOnPhoneStorage(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public static isInternalStorageStateError()Z
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneMediaMounted()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneMediaMounted(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 310
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneStorageChecking(Z)Z
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 327
    const-string v0, "checking"

    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 415
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneStorageStateError(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 348
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStorageChecking(Z)Z
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 322
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageChecking(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isPhoneStorageChecking(Z)Z

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
    .line 284
    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaReadOnly(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 289
    const-string v0, "mounted_ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaShared(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 294
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
    .line 377
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    .line 378
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 380
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    const/4 v0, 0x0

    .line 388
    .end local v1           #directory:Ljava/io/File;
    :cond_0
    :goto_0
    return v0

    .line 385
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
    .line 337
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
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportInternalStorage()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPhoneStorage()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public static noActiveStorage(Z)Z
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 363
    invoke-static {p0}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageStateError(Z)Z

    move-result v0

    .line 369
    .local v0, bRes:Z
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v0, 0x1

    .line 372
    .end local v0           #bRes:Z
    :cond_0
    return v0
.end method

.method public static setExternalStorageState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 227
    sput-object p0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public static setPhoneStorageState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 188
    sput-object p0, Lcom/htc/opensense/album/util/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    .line 189
    return-void
.end method
