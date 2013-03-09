.class public Lcom/android/providers/media/MediaScannerService;
.super Landroid/app/Service;
.source "MediaScannerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaScannerService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final INTERNAL_COLUMNS:[Ljava/lang/String; = null

.field private static final PAUSE_SCAN:Ljava/lang/String; = "/data/data/com.android.providers.media/pause_scan"

.field private static final RINGTONE_RESTORE_INIT:Ljava/lang/String; = "ringtoneinit"

.field private static final TAG:Ljava/lang/String; = "MediaScannerService"


# instance fields
.field private mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

.field private final mBinder:Landroid/media/IMediaScannerService$Stub;

.field private mExternalStoragePaths:[Ljava/lang/String;

.field private volatile mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private ringtone_restore_init:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaScannerService;->INTERNAL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 883
    new-instance v0, Lcom/android/providers/media/MediaScannerService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaScannerService$1;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBinder:Landroid/media/IMediaScannerService$Stub;

    .line 1190
    new-instance v0, Lcom/android/providers/media/MediaScannerService$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaScannerService$2;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private AliveExtSdCardRows(II)V
    .locals 12
    .parameter "volId"
    .parameter "val"

    .prologue
    .line 328
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v7, values:Landroid/content/ContentValues;
    const-string v10, "alive"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "volid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, where:Ljava/lang/String;
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 334
    .local v0, audioUri:Landroid/net/Uri;
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 335
    .local v8, videoUri:Landroid/net/Uri;
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 336
    .local v3, imagesUri:Landroid/net/Uri;
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 339
    .local v2, filesUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v7, v9, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 341
    .local v4, n1:I
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v7, v9, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 343
    .local v5, n2:I
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v7, v9, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 345
    .local v6, n3:I
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v7, v9, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v0           #audioUri:Landroid/net/Uri;
    .end local v2           #filesUri:Landroid/net/Uri;
    .end local v3           #imagesUri:Landroid/net/Uri;
    .end local v4           #n1:I
    .end local v5           #n2:I
    .end local v6           #n3:I
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v8           #videoUri:Landroid/net/Uri;
    .end local v9           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v10, "MediaScannerService"

    const-string v11, "failed to open media database"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private NotifySDcardStatusForMTP(J)V
    .locals 6
    .parameter "mountSdcard"

    .prologue
    .line 365
    :try_start_0
    const-string v3, "content://media/external/volid/mtp"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 367
    .local v2, volidUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v0, conval:Landroid/content/ContentValues;
    const-string v3, "mounted_sdcard"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v0           #conval:Landroid/content/ContentValues;
    .end local v2           #volidUri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaScannerService"

    const-string v4, "failed to open media database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private UpdateVolId(I)V
    .locals 3
    .parameter "volId"

    .prologue
    .line 229
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService;->updateVolid_info1(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaScannerService"

    const-string v2, "[UpdateVolId]failed to open media database"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/media/MediaScannerService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerService;->NotifySDcardStatusForMTP(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/media/MediaScannerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService;->UpdateVolId(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/media/MediaScannerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerService;->AliveExtSdCardRows(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->deleteNonUseAlbumArts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private closeDatabase(Ljava/lang/String;)V
    .locals 4
    .parameter "volumeName"

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createMediaScanner()Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    .locals 7

    .prologue
    .line 122
    sget-object v5, Lcom/android/providers/media/MediaProvider;->scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    if-eqz v5, :cond_0

    .line 123
    sget-object v5, Lcom/android/providers/media/MediaProvider;->scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    .line 149
    :goto_0
    return-object v5

    .line 125
    :cond_0
    new-instance v5, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    invoke-direct {v5, p0}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/providers/media/MediaProvider;->scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    .line 127
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 128
    .local v2, locale:Ljava/util/Locale;
    const/4 v4, 0x0

    .line 129
    .local v4, scannerLocale:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, country:Ljava/lang/String;
    const/4 v3, 0x0

    .line 133
    .local v3, localeString:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 134
    if-eqz v0, :cond_2

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #language:Ljava/lang/String;
    .end local v3           #localeString:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/providers/media/MediaScannerService;->getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    sget-object v5, Lcom/android/providers/media/MediaProvider;->scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    invoke-virtual {v5, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;->setLocale(Ljava/lang/String;)V

    .line 149
    sget-object v5, Lcom/android/providers/media/MediaProvider;->scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    goto :goto_0

    .line 139
    .restart local v0       #country:Ljava/lang/String;
    .restart local v1       #language:Ljava/lang/String;
    .restart local v3       #localeString:Ljava/lang/String;
    :cond_2
    move-object v4, v1

    goto :goto_1
.end method

.method private deleteHtcInk()V
    .locals 6

    .prologue
    .line 181
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v3, "external"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://media/external/images/htcink"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaScannerService"

    const-string v3, "failed to open media database"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteNonUseAlbumArts()V
    .locals 4

    .prologue
    .line 419
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->deleteNonUseAlbumArts1()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 426
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaScannerService"

    const-string v2, "failed to open media database"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 430
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MediaScannerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to open media database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteNonUseAlbumArts1()V
    .locals 19

    .prologue
    .line 438
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Android/data/com.android.providers.media/albumthumbs"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 442
    .local v13, files:[Ljava/io/File;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 444
    .local v11, fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-eqz v13, :cond_0

    array-length v1, v13

    if-ge v14, v1, :cond_0

    .line 447
    aget-object v1, v13, v14

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 450
    :cond_0
    const-string v1, "content://media/external/volid/album_all"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 453
    .local v2, volidAlumAllUri:Landroid/net/Uri;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v8, album_art:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album_art"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 459
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 461
    .local v7, a:I
    :goto_1
    if-eqz v9, :cond_2

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 464
    .local v10, data:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 467
    .local v15, id:J
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v7, v7, 0x1

    .line 470
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 473
    .end local v10           #data:Ljava/lang/String;
    .end local v15           #id:J
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_1

    .line 474
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 475
    const/4 v9, 0x0

    :cond_1
    throw v1

    .line 473
    :cond_2
    if-eqz v9, :cond_3

    .line 474
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 475
    const/4 v9, 0x0

    .line 479
    :cond_3
    const-string v18, ""

    .line 481
    .local v18, where:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 482
    .local v17, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 483
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 485
    .local v12, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 487
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 492
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " album_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 496
    .end local v12           #filename:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 500
    :cond_6
    return-void
.end method

.method private deleteRowsEquaulVolid(I)V
    .locals 7
    .parameter "volid"

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 204
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, where:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "_data"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v5, "content://media/external/files/volid"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 211
    .local v1, files_volid:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 213
    .local v2, m4:I
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v1           #files_volid:Landroid/net/Uri;
    .end local v2           #m4:I
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 218
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v5, "MediaScannerService"

    const-string v6, "[deleteRowsEquaulVolid] failed to open media database"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disAliveExtSdCardRows()V
    .locals 12

    .prologue
    .line 388
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v7, values:Landroid/content/ContentValues;
    const-string v10, "alive"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const-string v9, "volid != 0"

    .line 393
    .local v9, where:Ljava/lang/String;
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 394
    .local v0, audioUri:Landroid/net/Uri;
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 395
    .local v8, videoUri:Landroid/net/Uri;
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 396
    .local v3, imagesUri:Landroid/net/Uri;
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 398
    .local v2, filesUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v7, v9, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 400
    .local v4, n1:I
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v7, v9, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 402
    .local v5, n2:I
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v7, v9, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 404
    .local v6, n3:I
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v7, v9, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0           #audioUri:Landroid/net/Uri;
    .end local v2           #filesUri:Landroid/net/Uri;
    .end local v3           #imagesUri:Landroid/net/Uri;
    .end local v4           #n1:I
    .end local v5           #n2:I
    .end local v6           #n3:I
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v8           #videoUri:Landroid/net/Uri;
    .end local v9           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v10, "MediaScannerService"

    const-string v11, "failed to open media database"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doSystemSettingRestore()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 699
    const-string v2, "ringtoneinit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/providers/media/MediaScannerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/media/MediaScannerService;->ringtone_restore_init:Landroid/content/SharedPreferences;

    .line 700
    iget-object v2, p0, Lcom/android/providers/media/MediaScannerService;->ringtone_restore_init:Landroid/content/SharedPreferences;

    const-string v3, "ringtoneinit"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 701
    iget-object v2, p0, Lcom/android/providers/media/MediaScannerService;->ringtone_restore_init:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ringtoneinit"

    const-string v4, "ringtoneinit"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 708
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, ringtone_paht:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 710
    invoke-direct {p0, v0, v6}, Lcom/android/providers/media/MediaScannerService;->getRingtoneUriByPath(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .local v1, ringtone_uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 712
    invoke-static {p0, v6, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 714
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_ringtone"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 720
    .end local v1           #ringtone_uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_notification_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 722
    invoke-direct {p0, v0, v7}, Lcom/android/providers/media/MediaScannerService;->getRingtoneUriByPath(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtone_uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 724
    invoke-static {p0, v7, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 726
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_notification_sound"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 732
    .end local v1           #ringtone_uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_alarm_alert"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 734
    invoke-direct {p0, v0, v8}, Lcom/android/providers/media/MediaScannerService;->getRingtoneUriByPath(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtone_uri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 736
    invoke-static {p0, v8, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_alarm_alert"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 743
    .end local v0           #ringtone_paht:Ljava/lang/String;
    .end local v1           #ringtone_uri:Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private getRingtoneUriByPath(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 12
    .parameter "RingtonePath"
    .parameter "RingtoneType"

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 749
    .local v0, contentresolver:Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 752
    .local v8, cv:Landroid/content/ContentValues;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaScannerService;->INTERNAL_COLUMNS:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 756
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_4

    .line 776
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 777
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 780
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaScannerService;->INTERNAL_COLUMNS:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 784
    if-nez v7, :cond_7

    .line 820
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 821
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 872
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_2
    const/4 v6, 0x0

    :goto_3
    return-object v6

    .line 759
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    :cond_5
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 765
    .local v10, ringtonID:J
    const-wide/16 v1, -0x1

    cmp-long v1, v10, v1

    if-eqz v1, :cond_6

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_3

    .line 773
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 787
    .end local v10           #ringtonID:J
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    :cond_8
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 793
    .restart local v10       #ringtonID:J
    const-wide/16 v1, -0x1

    cmp-long v1, v10, v1

    if-eqz v1, :cond_9

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 799
    .local v6, RingtoneUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 800
    packed-switch p2, :pswitch_data_0

    .line 812
    :goto_4
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 869
    .end local v6           #RingtoneUri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #ringtonID:J
    :catch_0
    move-exception v9

    .line 870
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "MediaScannerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtoneUriByPath error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 802
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v6       #RingtoneUri:Landroid/net/Uri;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v10       #ringtonID:J
    :pswitch_1
    :try_start_1
    const-string v1, "is_ringtone"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 805
    :pswitch_2
    const-string v1, "is_notification"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 808
    :pswitch_3
    const-string v1, "is_alarm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 817
    .end local v6           #RingtoneUri:Landroid/net/Uri;
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    .line 800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private openDatabase(Ljava/lang/String;)V
    .locals 4
    .parameter "volumeName"

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://media/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaScannerService"

    const-string v3, "failed to open media database"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scan([Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 507
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 509
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 510
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "volume"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 513
    .local v1, scanUri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 514
    .local v3, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 520
    :try_start_0
    const-string v5, "external"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 521
    invoke-direct {p0, p2}, Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    move-result-object v2

    .line 537
    .local v2, scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    invoke-virtual {v2, p1, p2}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-boolean v5, Lcom/android/providers/media/MediaProvider;->HtcInkSupported:Z

    if-ne v5, v8, :cond_1

    if-eqz p2, :cond_1

    const-string v5, "external"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 545
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaScannerService;->updateImagebyHtcInk(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->deleteHtcInk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v2           #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 557
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 560
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->doSystemSettingRestore()V

    .line 562
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 563
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "MediaScannerService"

    const-string v6, "exception in MediaScanner.scan()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 647
    const-string v1, "external"

    .line 659
    .local v1, volumeName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V

    .line 688
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    move-result-object v0

    .line 689
    .local v0, scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    invoke-virtual {v0, p1, v1, p2}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private updateImagebyHtcInk(Ljava/lang/String;)V
    .locals 6
    .parameter "directory"

    .prologue
    .line 161
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v3, "external"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "directory"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://media/external/images/htcink"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaScannerService"

    const-string v3, "failed to open media database"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateVolid_info1(I)V
    .locals 24
    .parameter "volId"

    .prologue
    .line 240
    const-string v2, "content://media/external/volid/media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 242
    .local v3, volidUri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "volid"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "date_modified"

    aput-object v5, v4, v2

    .line 245
    .local v4, cols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 249
    .local v10, cur:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 257
    .local v15, nRes:I
    const/4 v8, 0x0

    .line 259
    .local v8, bAlreadyExist:Z
    if-eqz v10, :cond_4

    .line 261
    const/16 v16, 0x0

    .line 262
    .local v16, oldestID:I
    const-wide/16 v17, 0x0

    .line 263
    .local v17, oldestModifyTime:J
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v11, v2

    .line 265
    .local v11, len:J
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 268
    .local v21, vol:I
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v13, v2

    .line 270
    .local v13, modifyTime:J
    const-wide/16 v5, 0x0

    cmp-long v2, v17, v5

    if-eqz v2, :cond_1

    cmp-long v2, v17, v13

    if-lez v2, :cond_2

    .line 271
    :cond_1
    move/from16 v16, v21

    .line 272
    move-wide/from16 v17, v13

    .line 275
    :cond_2
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 276
    const/4 v8, 0x1

    goto :goto_0

    .line 280
    .end local v13           #modifyTime:J
    .end local v21           #vol:I
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 281
    const/4 v10, 0x0

    .line 283
    if-eqz v16, :cond_4

    const-wide/16 v5, 0x3

    cmp-long v2, v11, v5

    if-ltz v2, :cond_4

    if-nez v8, :cond_4

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 286
    .local v23, whereClause:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 288
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaScannerService;->deleteRowsEquaulVolid(I)V

    .line 295
    .end local v11           #len:J
    .end local v16           #oldestID:I
    .end local v17           #oldestModifyTime:J
    .end local v23           #whereClause:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    .line 297
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v9, conval:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 299
    .local v19, val:J
    const-string v2, "date_modified"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 302
    .local v22, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v9, v0, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 318
    .end local v22           #where:Ljava/lang/String;
    :goto_1
    return-void

    .line 308
    .end local v9           #conval:Landroid/content/ContentValues;
    .end local v19           #val:J
    :cond_5
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .restart local v9       #conval:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 310
    .restart local v19       #val:J
    const-string v2, "volid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v2, "date_modified"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method


# virtual methods
.method getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 1181
    new-instance v1, Lcom/android/providers/media/SettingsModule;

    invoke-direct {v1, p0}, Lcom/android/providers/media/SettingsModule;-><init>(Landroid/content/Context;)V

    .line 1182
    .local v1, settingsModule:Lcom/android/providers/media/SettingsModule;
    invoke-virtual {v1}, Lcom/android/providers/media/SettingsModule;->getDefaultLocale()Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, defaultLocale:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1184
    :cond_0
    move-object v0, p1

    .line 1187
    :cond_1
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBinder:Landroid/media/IMediaScannerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->resumeScan()V

    .line 570
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/providers/media/MediaScannerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 571
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "MediaScannerService"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 572
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Lcom/android/providers/media/MediaScannerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 573
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;

    .line 575
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 576
    .local v0, f:Landroid/content/IntentFilter;
    const-string v4, "com.htc.content.Intent.ACTION_BACKGROUND_OP_STOP"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    const-string v4, "com.htc.content.Intent.ACTION_BACKGROUND_OP_GO"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    iget-object v4, p0, Lcom/android/providers/media/MediaScannerService;->mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/providers/media/MediaScannerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 583
    new-instance v3, Ljava/lang/Thread;

    const/4 v4, 0x0

    const-string v5, "MediaScannerService"

    invoke-direct {v3, v4, p0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 584
    .local v3, thr:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 585
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->resumeScan()V

    .line 618
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MediaScannerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 620
    :goto_0
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 621
    monitor-enter p0

    .line 623
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 629
    return-void

    .line 624
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 590
    :goto_0
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    if-nez v1, :cond_0

    .line 591
    monitor-enter p0

    .line 593
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 599
    :cond_0
    if-nez p1, :cond_1

    .line 600
    const-string v1, "MediaScannerService"

    const-string v2, "Intent is null in onStartCommand: "

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    const/4 v1, 0x2

    .line 611
    :goto_2
    return v1

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 606
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 607
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 608
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 611
    const/4 v1, 0x3

    goto :goto_2

    .line 594
    .end local v0           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method pauseScan()V
    .locals 4

    .prologue
    .line 1206
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.media/pause_scan"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1209
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaScannerService"

    const-string v3, "File creation failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method resumeScan()V
    .locals 4

    .prologue
    .line 1217
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.media/pause_scan"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1220
    const-string v2, "MediaScannerService"

    const-string v3, "Failed to delete file /data/data/com.android.providers.media/pause_scan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaScannerService"

    const-string v3, "SecurityException: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 633
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 635
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    .line 636
    new-instance v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    .line 640
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 643
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 644
    return-void
.end method
