.class public Lcom/google/android/gsf/update/Download;
.super Ljava/lang/Object;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/update/Download$StatusInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mNotificationClass:Ljava/lang/String;

.field private mNotificationPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/gsf/update/Download;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mNotificationPackage:Ljava/lang/String;

    .line 33
    const-class v0, Lcom/google/android/gsf/update/SystemUpdateService$Receiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mNotificationClass:Ljava/lang/String;

    .line 34
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    .line 35
    return-void
.end method


# virtual methods
.method public downloadUpdate(Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 10
    .parameter "url"
    .parameter "otaUpdateToken"
    .parameter "showDownload"
    .parameter "allowRoaming"
    .parameter "allowMobile"

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 88
    :try_start_0
    new-instance v7, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v7, p3}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v7

    invoke-virtual {v7, p4}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v8

    if-eqz p5, :cond_1

    const/4 v7, -0x1

    :goto_0
    invoke-virtual {v8, v7}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/update/Download;->mContext:Landroid/content/Context;

    const v9, 0x7f08002c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 98
    .local v4, req:Landroid/app/DownloadManager$Request;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setDestinationToSystemCache"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 99
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_1
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 105
    const-string v7, "Authorization"

    invoke-virtual {v4, v7, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 107
    :cond_0
    iget-object v7, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v7, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 108
    .local v0, downloadId:J
    const-string v7, "SystemUpdate.Download"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Started a new update download: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; allowMobile="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v6, 0x1

    .line 113
    .end local v0           #downloadId:J
    .end local v4           #req:Landroid/app/DownloadManager$Request;
    :goto_2
    return v6

    .line 88
    :cond_1
    const/4 v7, -0x2

    goto :goto_0

    .line 100
    .restart local v4       #req:Landroid/app/DownloadManager$Request;
    :catch_0
    move-exception v5

    .line 101
    .local v5, t:Ljava/lang/Throwable;
    const-string v7, "SystemUpdate.Download"

    const-string v8, "setDestinationToSystemCache() missing, ignore"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 111
    .end local v4           #req:Landroid/app/DownloadManager$Request;
    .end local v5           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 112
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "SystemUpdate.Download"

    const-string v8, "Could not start update download"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getStatus()Lcom/google/android/gsf/update/Download$StatusInfo;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    iget-object v5, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v6, Landroid/app/DownloadManager$Query;

    invoke-direct {v6}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v1

    .line 56
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    new-instance v1, Lcom/google/android/gsf/update/Download$StatusInfo;

    invoke-direct {v1}, Lcom/google/android/gsf/update/Download$StatusInfo;-><init>()V

    .line 58
    .local v1, result:Lcom/google/android/gsf/update/Download$StatusInfo;
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->completed:Z

    .line 59
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    .line 60
    const-string v5, "local_filename"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    .line 62
    const-string v5, "bytes_so_far"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->bytesSoFar:J

    .line 64
    const-string v5, "status"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 65
    .local v2, status:I
    and-int/lit8 v5, v2, 0x7

    if-nez v5, :cond_4

    move v5, v4

    :goto_1
    iput-boolean v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->completed:Z

    .line 68
    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->successful:Z

    .line 69
    if-eq v2, v4, :cond_2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 71
    :cond_2
    const-string v3, "reason"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v5, v3

    .line 65
    goto :goto_1

    .line 75
    .end local v1           #result:Lcom/google/android/gsf/update/Download$StatusInfo;
    .end local v2           #status:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public removeAllDownloads()V
    .locals 6

    .prologue
    .line 40
    iget-object v3, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 41
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 43
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->remove([J)I

    .line 41
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 45
    .end local v1           #id:J
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    return-void
.end method
