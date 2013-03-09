.class public Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;
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

    const/4 v1, 0x0

    const-class v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotos:Landroid/net/Uri;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotosThumbs:Landroid/net/Uri;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhoneVideos:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotos:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotosThumbs:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalVideos:Landroid/net/Uri;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/htcscribbles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneScribblesPath:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDownloadsPaths()[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPaths()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    aget-object v2, v0, v3

    aput-object v2, v1, v3

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    aget-object v2, v0, v4

    aput-object v2, v1, v4

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadPaths()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v0, v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v0, v4

    aput-object v3, v1, v2

    :cond_0
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szAllDownlaodsPaths:[Ljava/lang/String;

    return-object v1
.end method

.method public static getCameraShotsPaths()[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szCameraShotsPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getDataDirectoryPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDataDirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultStoragePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szDefaultStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalPhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalPhotosUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalPhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalStorageCameraPath()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getExternalStorageDownloadPaths()[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadsPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExteranlStorageDownlaodPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageScribblesPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageState(Z)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageState(ZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalMediaMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

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

    const-string v0, "external"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "checking"

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->setExternalStorageState(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalVideosUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriExternalVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalPhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalPhotosUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalPhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInternalStorageState()Ljava/lang/String;
    .locals 5

    const-string v0, "com.htc.album.action.MEMORY_NOT_FILL"

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const-string v0, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    :cond_0
    return-object v0
.end method

.method public static getInternalVideosUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriInternalVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhonePhotosThumbsUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotosThumbs:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhonePhotosUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhonePhotos:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhoneStorageCameraPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadPaths()[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadsPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageDownlaodPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageDownloadsPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneDownloadsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStoragePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageScribblesPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneScribblesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageState(Z)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageState(ZLandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneMediaMounted(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

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

    const-string v0, "phoneStorage"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "checking"

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->setPhoneStorageState(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneVideosUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_uriPhoneVideos:Landroid/net/Uri;

    return-object v0
.end method

.method public static isAllStorageReady()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady(Z)Z

    move-result v0

    return v0
.end method

.method public static isAllStorageReady(Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DeviceStorageManager][isAllStorageReady]: internal error found..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DeviceStorageManager][isAllStorageReady]: external error found..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalMediaMounted()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalMediaMounted(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageChecking(Z)Z
    .locals 2

    const-string v0, "checking"

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageReady(Z)Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isExternalStorageStateError(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFileOnAllDownloads(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    move v0, v3

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static isFileOnPhoneStorage(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isInternalStorageStateError()Z
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneMediaMounted()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneMediaMounted(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneStorageChecking(Z)Z
    .locals 2

    const-string v0, "checking"

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneStorageReady(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isPhoneStorageStateError(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageStateError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStorageChecking(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageChecking(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageChecking(Z)Z

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

    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaReadOnly(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mounted_ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageMediaShared(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    goto :goto_0
.end method

.method public static isStorageStateError(Ljava/lang/String;)Z
    .locals 1

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

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportInternalStorage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPhoneStorage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static noActiveStorage(Z)Z
    .locals 2

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageStateError(Z)Z

    move-result v0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setExternalStorageState(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    return-void
.end method

.method public static setPhoneStorageState(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    return-void
.end method
