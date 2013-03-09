.class public Lcom/android/providers/downloads/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadService$UpdateThread;,
        Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;,
        Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;,
        Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;
    }
.end annotation


# static fields
.field static final MARK4DELETE:Ljava/lang/String; = "mark4del"

.field private static final WAIT_TIMEOUT:J = 0x2710L


# instance fields
.field private mDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOnCreate:Z

.field private mMediaScannerConnecting:Z

.field private mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

.field private mMediaScannerService:Landroid/media/IMediaScannerService;

.field private mNotifier:Lcom/android/providers/downloads/DownloadNotification;

.field private mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

.field private mPendingUpdate:Z

.field private mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 92
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    .line 338
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/providers/downloads/DownloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/DownloadService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/DownloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/providers/downloads/DownloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadService;->updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadService;->insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/DownloadService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadService;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    return-object v0
.end method

.method private deleteDownload(J)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 674
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo;

    .line 675
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    invoke-direct {p0, v0, v3, v3}, Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    .line 678
    :cond_0
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    .line 679
    const/16 v1, 0x1ea

    iput v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 685
    :cond_1
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->isExternalStorage(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    .line 688
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 690
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-interface {v1, v2, v3}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 691
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-void
.end method

.method private deleteFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, deletes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, mimetypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 780
    .local v7, size:I
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 781
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_5

    .line 782
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 783
    .local v3, filename:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 784
    const-string v9, "content"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 786
    :try_start_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 787
    const-string v9, "downloadservice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete content uri file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 788
    :catch_0
    move-exception v1

    .line 789
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "downloadservice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete content uri file failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 792
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 793
    const-string v9, "downloadservice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    if-nez p2, :cond_2

    const/4 v5, 0x0

    .line 797
    .local v5, mimetype:Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_0

    .line 798
    const-string v9, "image/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 799
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_data = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 800
    .local v8, where:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, externalStoragePath:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 803
    :try_start_1
    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 805
    :catch_1
    move-exception v1

    .line 806
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "downloadservice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete image record from media table failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 796
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #externalStoragePath:Ljava/lang/String;
    .end local v5           #mimetype:Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    goto :goto_2

    .line 825
    .restart local v5       #mimetype:Ljava/lang/String;
    :cond_3
    const-string v9, "audio/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 826
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_data = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 827
    .restart local v8       #where:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 828
    .restart local v2       #externalStoragePath:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 830
    :try_start_2
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 833
    .local v0, count:I
    const/4 v9, 0x1

    if-ge v0, v9, :cond_0

    .line 834
    sget-object v9, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 837
    .end local v0           #count:I
    :catch_2
    move-exception v1

    .line 838
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "downloadservice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete Audio record from media table failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 863
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #externalStoragePath:Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_4
    const-string v9, "video/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 864
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_data = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 865
    .restart local v8       #where:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 867
    .restart local v2       #externalStoragePath:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 869
    :try_start_3
    sget-object v9, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 872
    .restart local v0       #count:I
    const/4 v9, 0x1

    if-ge v0, v9, :cond_0

    .line 873
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 876
    .end local v0           #count:I
    :catch_3
    move-exception v1

    .line 877
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "downloadservice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete video record from media table failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 908
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #externalStoragePath:Ljava/lang/String;
    .end local v3           #filename:Ljava/lang/String;
    .end local v5           #mimetype:Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private deleteFileIfExists(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 762
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 765
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' couldn\'t be deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    .locals 11
    .parameter "reader"
    .parameter "now"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xc5

    const/4 v8, 0x1

    .line 556
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-virtual {p1, p0, v4}, Lcom/android/providers/downloads/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    .line 557
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v5, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_0

    .line 560
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processing inserted download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v0, p2, p3, v8, v4}, Lcom/android/providers/downloads/DownloadInfo;->startIfReady(JZLcom/android/providers/downloads/StorageManager;)V

    .line 567
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->hasDownloadInQueue(J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 568
    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->canStartSpecificAPN()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 569
    iput v9, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 570
    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 571
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 572
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 575
    iget-object v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    if-nez v4, :cond_1

    .line 576
    new-instance v4, Landroid/net/HtcNetworkConnectivityHelper;

    invoke-direct {v4, p0}, Landroid/net/HtcNetworkConnectivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    .line 577
    :cond_1
    new-instance v4, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;

    invoke-direct {v4, p0, v0, p0}, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;-><init>(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mHandler:Landroid/os/Handler;

    .line 579
    iget-object v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    iget v5, v0, Lcom/android/providers/downloads/DownloadInfo;->mAPNType:I

    invoke-static {v5}, Lcom/android/providers/downloads/Helpers;->convertFeaturebyApn(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadInfo;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/net/HtcNetworkConnectivityHelper;->startUsingNetowrkFeature(Ljava/lang/String;Landroid/os/Handler;I)I

    move-result v1

    .line 580
    .local v1, rsl:I
    if-nez v1, :cond_2

    if-eq v1, v8, :cond_3

    .line 582
    :cond_2
    const-string v4, "DownloadManager"

    const-string v5, "insertDownload(): Start NetowrkFeature fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v1           #rsl:I
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_3
    return-object v0
.end method

.method private scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    .locals 12
    .parameter "info"
    .parameter "updateDatabase"
    .parameter "deleteFile"

    .prologue
    .line 700
    monitor-enter p0

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-nez v0, :cond_0

    .line 704
    :goto_0
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    if-eqz v0, :cond_0

    .line 705
    const-string v0, "DownloadManager"

    const-string v1, "waiting for mMediaScannerService service: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    const-wide/16 v0, 0x2710

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 708
    :catch_0
    move-exception v8

    .line 709
    .local v8, e1:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wait interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    .end local v8           #e1:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 714
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-nez v0, :cond_1

    .line 716
    const/4 v0, 0x0

    monitor-exit p0

    .line 755
    :goto_1
    return v0

    .line 718
    :cond_1
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_2

    .line 719
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanning file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 722
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    .line 723
    .local v3, key:Landroid/net/Uri;
    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 724
    .local v5, id:J
    iget-object v9, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    iget-object v10, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    new-instance v0, Lcom/android/providers/downloads/DownloadService$1;

    move-object v1, p0

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/downloads/DownloadService$1;-><init>(Lcom/android/providers/downloads/DownloadService;ZLandroid/net/Uri;ZJ)V

    invoke-interface {v9, v10, v11, v0}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 752
    const/4 v0, 0x1

    :try_start_5
    monitor-exit p0

    goto :goto_1

    .line 753
    .end local v3           #key:Landroid/net/Uri;
    .end local v5           #id:J
    :catch_1
    move-exception v7

    .line 754
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to scan file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    .locals 15
    .parameter "reader"
    .parameter "info"
    .parameter "now"

    .prologue
    .line 596
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    .line 597
    .local v6, oldVisibility:I
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 599
    .local v5, oldStatus:I
    invoke-virtual/range {p1 .. p2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 600
    sget-boolean v11, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v11, :cond_0

    .line 601
    const-string v11, "DownloadManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processing updated download "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    const/4 v11, 0x1

    if-ne v6, v11, :cond_5

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v11}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    .line 609
    .local v4, lostVisibility:Z
    :goto_0
    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v11}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v3, 0x1

    .line 612
    .local v3, justCompleted:Z
    :goto_1
    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    .line 613
    :cond_1
    iget-object v11, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-interface {v11, v12, v13}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 619
    :cond_2
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/android/providers/downloads/DownloadInfo;->startIfReady(JZLcom/android/providers/downloads/StorageManager;)V

    .line 620
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v11, v12, v13}, Lcom/android/providers/downloads/DownloadHandler;->hasDownloadInQueue(J)Z

    move-result v11

    if-nez v11, :cond_4

    .line 621
    invoke-virtual/range {p2 .. p2}, Lcom/android/providers/downloads/DownloadInfo;->canStartSpecificAPN()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v12, 0xc0

    if-eq v11, v12, :cond_4

    .line 622
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    if-nez v11, :cond_7

    .line 623
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iput-boolean v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mHasAPNResult:Z

    .line 624
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iput-boolean v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mIgnoreSpecificAPN:Z

    .line 625
    new-instance v11, Landroid/net/HtcNetworkConnectivityHelper;

    invoke-direct {v11, p0}, Landroid/net/HtcNetworkConnectivityHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    .line 626
    new-instance v11, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;

    move-object/from16 v0, p2

    invoke-direct {v11, p0, v0, p0}, Lcom/android/providers/downloads/DownloadService$DownloadManagerHandler;-><init>(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;Landroid/content/Context;)V

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mHandler:Landroid/os/Handler;

    .line 628
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/providers/downloads/DownloadInfo;->mAPNType:I

    invoke-static {v12}, Lcom/android/providers/downloads/Helpers;->convertFeaturebyApn(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/providers/downloads/DownloadInfo;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/net/HtcNetworkConnectivityHelper;->startUsingNetowrkFeature(Ljava/lang/String;Landroid/os/Handler;I)I

    move-result v8

    .line 629
    .local v8, rsl:I
    if-nez v8, :cond_3

    const/4 v11, 0x1

    if-eq v8, v11, :cond_4

    .line 631
    :cond_3
    const-string v11, "DownloadManager"

    const-string v12, "updateDownload(): Start NetowrkFeature fail"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v8           #rsl:I
    :cond_4
    :goto_2
    return-void

    .line 605
    .end local v3           #justCompleted:Z
    .end local v4           #lostVisibility:Z
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 609
    .restart local v4       #lostVisibility:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 633
    .restart local v3       #justCompleted:Z
    :cond_7
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    if-eqz v11, :cond_4

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mHasAPNResult:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    invoke-virtual {v11}, Landroid/net/HtcNetworkConnectivityHelper;->getState()Landroid/net/HtcNetworkConnectivityHelper$State;

    move-result-object v11

    sget-object v12, Landroid/net/HtcNetworkConnectivityHelper$State;->NOT_CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    if-ne v11, v12, :cond_4

    .line 635
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    invoke-virtual {v11}, Landroid/net/HtcNetworkConnectivityHelper;->getReason()Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, reason:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/providers/downloads/DownloadInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12}, Landroid/net/HtcNetworkConnectivityHelper;->stopUsingNetworkFeature(Landroid/os/Handler;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8

    .line 640
    :cond_8
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    .line 643
    if-eqz v7, :cond_9

    const-string v11, "apnMissing"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 644
    const/4 v11, 0x1

    move-object/from16 v0, p2

    iput-boolean v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mIgnoreSpecificAPN:Z

    .line 647
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 648
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "status"

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 650
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 653
    const-string v11, "DownloadManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No specific APN: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/providers/downloads/DownloadInfo;->mAPNType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in Settings"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 655
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_9
    const/16 v11, 0x1e7

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 656
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 657
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v11, "status"

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 659
    .restart local v9       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 660
    invoke-virtual/range {p2 .. p2}, Lcom/android/providers/downloads/DownloadInfo;->sendIntentIfRequested()V

    .line 662
    const-string v11, "DownloadManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to start Using Netowrk Feature APN: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/providers/downloads/DownloadInfo;->mAPNType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updateFromProvider()V
    .locals 2

    .prologue
    .line 329
    monitor-enter p0

    .line 330
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z

    .line 331
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 333
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    invoke-interface {v0, v1}, Lcom/android/providers/downloads/SystemFacade;->startThread(Ljava/lang/Thread;)V

    .line 335
    :cond_0
    monitor-exit p0

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 916
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/downloads/DownloadInfo;

    .line 917
    .local v2, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {v2, p2}, Lcom/android/providers/downloads/DownloadInfo;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 920
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/android/providers/downloads/DownloadInfo;
    :catch_0
    move-exception v0

    .line 921
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "downloadservice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump catch java exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "i"

    .prologue
    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 260
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 261
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "DownloadManager"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iput-boolean v3, p0, Lcom/android/providers/downloads/DownloadService;->mIsOnCreate:Z

    .line 269
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 273
    :cond_1
    new-instance v0, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    .line 274
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    .line 279
    new-instance v0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    .line 281
    new-instance v0, Lcom/android/providers/downloads/DownloadNotification;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/DownloadNotification;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    .line 282
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v0}, Lcom/android/providers/downloads/SystemFacade;->cancelAllNotifications()V

    .line 283
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/StorageManager;->getInstance(Landroid/content/Context;)Lcom/android/providers/downloads/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 284
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    .line 285
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 319
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "DownloadManager"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 323
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 290
    .local v2, returnValue:I
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_0

    .line 291
    const-string v3, "DownloadManager"

    const-string v4, "Service onStart"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    if-nez p1, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    .line 310
    :goto_0
    return v2

    .line 300
    :cond_1
    const-string v3, "mark4del"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 301
    .local v0, deletes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 302
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    goto :goto_0

    .line 305
    :cond_2
    const-string v3, "mimetype"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 306
    .local v1, mimetypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/DownloadService;->deleteFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
