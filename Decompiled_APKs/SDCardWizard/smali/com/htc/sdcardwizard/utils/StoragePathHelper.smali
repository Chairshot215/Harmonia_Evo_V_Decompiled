.class public Lcom/htc/sdcardwizard/utils/StoragePathHelper;
.super Ljava/lang/Object;
.source "StoragePathHelper.java"


# static fields
.field private static final ATTACHMENTS_MAIL_URI:Landroid/net/Uri; = null

.field private static final PATH_TO_EXTERNAL:Ljava/lang/String; = null

.field private static final TEMP_GALLERY_1:Ljava/lang/String; = "/dcim/.thumbnails"

.field private static final TEMP_GALLERY_2:Ljava/lang/String; = "/.InkMerge"

.field private static final TEMP_GALLERY_3:Ljava/lang/String; = "/.3DFlatten"

.field private static final TEMP_MUSIC_1:Ljava/lang/String; = "/music"

.field private static final TEMP_MUSIC_2:Ljava/lang/String; = "/Android/data/com.htc.music/files/.dmp"

.field private static final TEMP_NEWS_1:Ljava/lang/String; = "/.data/HtcGreader"

.field private static final TEMP_NEWS_2:Ljava/lang/String; = "/.data/HtcGreader/feedicon"

.field private static final WALLPAPER_DIRECTORY:Ljava/lang/String; = "/downloads/wallpaper"

.field private static currentPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    .line 17
    const-string v0, "content://com.htc.android.mail.attachmentprovider/deletableAttachments"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->ATTACHMENTS_MAIL_URI:Landroid/net/Uri;

    .line 18
    sget-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    sput-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->currentPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttachmentsMailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->ATTACHMENTS_MAIL_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getExternalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->currentPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getTemporaryFilesPaths()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/com.htc.music/files/.dmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.data/HtcGreader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.data/HtcGreader/feedicon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dcim/.thumbnails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.InkMerge"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.3DFlatten"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getWallpaperDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "/downloads/wallpaper"

    return-object v0
.end method

.method public static setStoragePath(Z)V
    .locals 1
    .parameter "isExternalStorage"

    .prologue
    .line 21
    sget-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->PATH_TO_EXTERNAL:Ljava/lang/String;

    sput-object v0, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->currentPath:Ljava/lang/String;

    .line 22
    return-void
.end method
