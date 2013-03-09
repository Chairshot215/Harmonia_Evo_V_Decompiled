.class public Lcom/htc/musicenhancer/provider/DownloadProvider;
.super Landroid/content/ContentProvider;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;,
        Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ALBUMART:I = 0x65

.field private static final ALBUMART_ID:I = 0x66

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DOWNLOADSETTING:I = 0x1f5

.field private static final EXTERNAL_VOLUME:Ljava/lang/String; = "external"

.field private static final INTERNAL_VOLUME:Ljava/lang/String; = "internal"

.field private static final MAX_EXTERNAL_DATABASES:I = 0xa

.field private static final OBSOLETE_DATABASE_DB:J = 0x134fd9000L

.field private static final TAG:Ljava/lang/String; = "[DownloadProvider]"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mAutoDownload:I

.field private mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mSetting:Landroid/content/SharedPreferences;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 65
    sget-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "music"

    const-string v2, "*/albumart"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "music"

    const-string v2, "*/albumart/#"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "music"

    const-string v2, "*/downloadsetting"

    const/16 v3, 0x1f5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mSetting:Landroid/content/SharedPreferences;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mAutoDownload:I

    .line 515
    new-instance v0, Lcom/htc/musicenhancer/provider/DownloadProvider$1;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/provider/DownloadProvider$1;-><init>(Lcom/htc/musicenhancer/provider/DownloadProvider;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/htc/musicenhancer/provider/DownloadProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/musicenhancer/provider/DownloadProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/provider/DownloadProvider;->detachVolume(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/musicenhancer/provider/DownloadProvider;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/provider/DownloadProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "volume"

    .prologue
    .line 338
    const-string v4, "[DownloadProvider]"

    const-string v5, "attachVolume +"

    invoke-static {v4, v5}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 340
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Opening and closing databases not allowed."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 344
    :cond_0
    iget-object v5, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v5

    .line 345
    :try_start_0
    iget-object v4, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    monitor-exit v5

    .line 369
    :goto_0
    return-object v4

    .line 349
    :cond_1
    const/4 v0, 0x0

    .line 350
    .local v0, db:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    const/4 v1, 0x0

    .line 351
    .local v1, dbName:Ljava/lang/String;
    const-string v4, "internal"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "We don\'t support internal volume now"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    .end local v0           #db:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    .end local v1           #dbName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 353
    .restart local v0       #db:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    .restart local v1       #dbName:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "external"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v3

    .line 356
    .local v3, volumeID:I
    const-string v4, "[DownloadProvider]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " volume ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/musicenhancer/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "music-external-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".db"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;

    .end local v0           #db:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->EXTERNAL:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    invoke-direct {v0, v4, v1, v6}, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;)V

    .line 365
    .restart local v0       #db:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    iget-object v4, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    const-string v4, "[DownloadProvider]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attached volume - : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/musicenhancer/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://music/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 362
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #volumeID:I
    :cond_3
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is no volume named "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private detachVolume(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    .line 380
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 381
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Opening and closing databases not allowed."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 386
    .local v3, volume:Ljava/lang/String;
    const-string v4, "internal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Deleting the internal volume is not allowed"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    :cond_1
    const-string v4, "external"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 389
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no volume named "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    :cond_2
    iget-object v5, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v5

    .line 393
    :try_start_0
    iget-object v4, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;

    .line 394
    .local v0, database:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    if-nez v0, :cond_3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :goto_0
    return-void

    .line 398
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v2, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    .end local v2           #file:Ljava/io/File;
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-virtual {v0}, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 411
    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 413
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 414
    const-string v4, "[DownloadProvider]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detached volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/musicenhancer/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "[DownloadProvider]"

    const-string v6, "Can\'t touch database file"

    invoke-static {v4, v6, v1}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 411
    .end local v0           #database:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 407
    .restart local v0       #database:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    :catch_1
    move-exception v1

    .line 408
    .local v1, e:Landroid/database/SQLException;
    :try_start_5
    const-string v4, "[DownloadProvider]"

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    .locals 4
    .parameter "uri"

    .prologue
    .line 424
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v1

    .line 425
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 426
    iget-object v0, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;

    monitor-exit v1

    .line 429
    :goto_0
    return-object v0

    .line 428
    :cond_0
    monitor-exit v1

    .line 429
    const/4 v0, 0x0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;II)V
    .locals 4
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/4 v3, 0x1

    .line 305
    const-string v0, "[DownloadProvider]"

    const-string v1, "updateDatabase -"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    if-eq p3, v3, :cond_0

    .line 307
    const-string v0, "[DownloadProvider]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 310
    :cond_0
    if-le p2, p3, :cond_1

    .line 311
    const-string v0, "[DownloadProvider]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 316
    :cond_1
    const-string v0, "DROP TABLE IF EXISTS albumart"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v0, "CREATE TABLE IF NOT EXISTS albumart (_id INTEGER PRIMARY KEY,dl_album_id INTEGER UNIQUE NOT NULL,dl_album TEXT,dl_album_key TEXT UNIQUE NOT NULL,dl_data TEXT,dl_data_backup TEXT,dl_is_failed INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    const-string v0, "[DownloadProvider]"

    const-string v1, "updateDatabase +"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private updateDownloadSetting(I)V
    .locals 3
    .parameter "autoDownload"

    .prologue
    .line 541
    iget-object v2, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mSetting:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 542
    :try_start_0
    iget v1, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mAutoDownload:I

    if-eq v1, p1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mSetting:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "autodownload"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 545
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 546
    iput p1, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mAutoDownload:I

    .line 548
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    monitor-exit v2

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 209
    const-string v5, "[DownloadProvider]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete + : uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, count:I
    sget-object v5, Lcom/htc/musicenhancer/provider/DownloadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 213
    .local v4, table:I
    const/16 v5, 0x1f5

    if-ne v4, v5, :cond_0

    .line 214
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/htc/musicenhancer/provider/DownloadProvider;->updateDownloadSetting(I)V

    .line 215
    const-string v5, "[DownloadProvider]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete - : auto download = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mAutoDownload:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v5, 0x1

    .line 247
    :goto_0
    return v5

    .line 219
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;

    move-result-object v1

    .line 220
    .local v1, database:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    if-nez v1, :cond_1

    .line 221
    const-string v5, "[DownloadProvider]"

    const-string v6, "delete -"

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    :cond_1
    invoke-virtual {v1}, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 227
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v4, :pswitch_data_0

    .line 240
    const-string v5, "[DownloadProvider]"

    const-string v6, "delete -"

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    :pswitch_0
    const-string v5, "albumart"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 245
    :goto_1
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 246
    const-string v5, "[DownloadProvider]"

    const-string v6, "delete -"

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    .line 247
    goto :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    .local v3, id:Ljava/lang/String;
    const-string v6, "albumart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x29

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 237
    goto :goto_1

    .line 234
    :cond_2
    const-string v5, ""

    goto :goto_2

    .line 227
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 150
    :cond_0
    sget-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/albumarts"

    .line 154
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/albumart"

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 161
    const-string v7, "[DownloadProvider]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert + : uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v7, Lcom/htc/musicenhancer/provider/DownloadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 165
    .local v6, table:I
    const/16 v7, 0x1f5

    if-ne v6, v7, :cond_0

    .line 166
    const-string v7, "auto_download"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 167
    .local v0, autoDownload:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/htc/musicenhancer/provider/DownloadProvider;->updateDownloadSetting(I)V

    .line 168
    const-string v7, "[DownloadProvider]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert - : auto download = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mAutoDownload:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v3, Lcom/htc/musicenhancer/provider/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    .line 204
    .end local v0           #autoDownload:Ljava/lang/Integer;
    :goto_0
    return-object v3

    .line 172
    :cond_0
    const/4 v3, 0x0

    .line 173
    .local v3, newUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;

    move-result-object v1

    .line 174
    .local v1, database:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    if-nez v1, :cond_1

    .line 175
    const-string v7, "[DownloadProvider]"

    const-string v8, "insert -"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 178
    :cond_1
    invoke-virtual {v1}, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 180
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_2

    .line 181
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .restart local p2
    :cond_2
    packed-switch v6, :pswitch_data_0

    .line 196
    const-string v7, "[DownloadProvider]"

    const-string v8, "insert -"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 186
    :pswitch_0
    const-string v7, "albumart"

    const-string v8, ""

    invoke-virtual {v2, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 188
    .local v4, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    .line 189
    sget-object v7, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 200
    :cond_3
    if-eqz v3, :cond_4

    .line 201
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 203
    :cond_4
    const-string v7, "[DownloadProvider]"

    const-string v8, "insert -"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    const-string v2, "[DownloadProvider]"

    const-string v3, "onCreate +"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mDatabases:Ljava/util/HashMap;

    .line 79
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "setting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mSetting:Landroid/content/SharedPreferences;

    .line 80
    iget-object v2, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mSetting:Landroid/content/SharedPreferences;

    const-string v3, "autodownload"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mAutoDownload:I

    .line 82
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    const-string v2, "external"

    invoke-direct {p0, v2}, Lcom/htc/musicenhancer/provider/DownloadProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    :cond_1
    const-string v2, "[DownloadProvider]"

    const-string v3, "onCreate -"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x1

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 95
    sget-object v2, Lcom/htc/musicenhancer/provider/DownloadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 97
    .local v11, table:I
    const-string v2, "[DownloadProvider]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", table = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/16 v2, 0x1f5

    if-ne v11, v2, :cond_0

    .line 100
    new-instance v9, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "auto_download"

    aput-object v4, v2, v3

    invoke-direct {v9, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 101
    .local v9, c:Landroid/database/MatrixCursor;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget v6, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mAutoDownload:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v9, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 102
    const-string v2, "[DownloadProvider]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: mAutoDownload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mAutoDownload:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v9           #c:Landroid/database/MatrixCursor;
    :goto_0
    return-object v9

    .line 106
    :cond_0
    const/4 v5, 0x0

    .line 107
    .local v5, groupBy:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;

    move-result-object v10

    .line 108
    .local v10, database:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    if-nez v10, :cond_1

    .line 109
    const-string v2, "[DownloadProvider]"

    const-string v3, "query: null"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v9, 0x0

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v10}, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 114
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 115
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, limit:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 128
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :pswitch_0
    const-string v2, "albumart"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 131
    :goto_1
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 134
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 136
    const-string v2, "[DownloadProvider]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v9           #c:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "albumart"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 138
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_2
    const-string v2, "[DownloadProvider]"

    const-string v3, "query: null"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 252
    const-string v5, "[DownloadProvider]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update + : uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, count:I
    sget-object v5, Lcom/htc/musicenhancer/provider/DownloadProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 256
    .local v4, table:I
    const/16 v5, 0x1f5

    if-ne v4, v5, :cond_0

    .line 257
    const-string v5, "auto_download"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 258
    .local v0, autoDownload:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/musicenhancer/provider/DownloadProvider;->updateDownloadSetting(I)V

    .line 259
    const-string v5, "[DownloadProvider]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update + : autodownload = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/musicenhancer/provider/DownloadProvider;->mAutoDownload:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v5, 0x1

    .line 294
    .end local v0           #autoDownload:Ljava/lang/Integer;
    :goto_0
    return v5

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;

    move-result-object v2

    .line 264
    .local v2, database:Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
    if-nez v2, :cond_1

    .line 265
    const-string v5, "[DownloadProvider]"

    const-string v6, "update -"

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    :cond_1
    invoke-virtual {v2}, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 271
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v4, :pswitch_data_0

    .line 284
    const-string v5, "[DownloadProvider]"

    const-string v6, "update -"

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    :pswitch_0
    const-string v5, "albumart"

    invoke-virtual {v3, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 290
    :goto_1
    if-lez v1, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-nez v5, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 293
    :cond_2
    const-string v5, "[DownloadProvider]"

    const-string v6, "update -"

    invoke-static {v5, v6}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    .line 294
    goto :goto_0

    .line 277
    :pswitch_1
    const-string v6, "albumart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x29

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 281
    goto :goto_1

    .line 277
    :cond_3
    const-string v5, ""

    goto :goto_2

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
