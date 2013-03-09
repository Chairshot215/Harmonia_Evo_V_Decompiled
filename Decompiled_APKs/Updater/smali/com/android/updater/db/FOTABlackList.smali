.class public Lcom/android/updater/db/FOTABlackList;
.super Ljava/lang/Object;
.source "FOTABlackList.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | FOTABlackList"

.field private static mProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "blackFileUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cancelCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/updater/db/FOTABlackList;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getFileCancelCount(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 10
    .parameter "resolver"
    .parameter "fileUrl"

    .prologue
    .line 80
    const-class v9, Lcom/android/updater/db/FOTABlackList;

    monitor-enter v9

    const/4 v6, 0x0

    .line 81
    .local v6, cancelCount:I
    const/4 v7, 0x0

    .line 83
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->BLACKLIST_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "cancelCount"

    aput-object v3, v2, v0

    const-string v3, "blackFileUrl=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 85
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 92
    :cond_0
    if-eqz v7, :cond_1

    .line 93
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    const/4 v7, 0x0

    .line 99
    :cond_1
    :goto_0
    monitor-exit v9

    return v6

    .line 89
    :catch_0
    move-exception v8

    .line 90
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "UpdaterAPK | FOTABlackList"

    const-string v1, "ERROR! FOTABlackList can not get the cancel count:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    if-eqz v7, :cond_1

    .line 93
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 94
    const/4 v7, 0x0

    goto :goto_0

    .line 92
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 93
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 94
    const/4 v7, 0x0

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized insertBlackListData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 7
    .parameter "resolver"
    .parameter "fileList"

    .prologue
    .line 47
    const-class v5, Lcom/android/updater/db/FOTABlackList;

    monitor-enter v5

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .local v3, values:Landroid/content/ContentValues;
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/updater/db/FOTABlackList;->getFileCancelCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 53
    .local v1, originalCancelCount:I
    if-eqz v1, :cond_0

    .line 55
    const-string v4, "cancelCount"

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 57
    .local v2, queryItems:[Ljava/lang/String;
    sget-object v4, Lcom/android/updater/db/UpdaterProvider;->BLACKLIST_URI:Landroid/net/Uri;

    const-string v6, "blackFileUrl=?"

    invoke-virtual {p0, v4, v3, v6, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .end local v1           #originalCancelCount:I
    .end local v2           #queryItems:[Ljava/lang/String;
    :goto_0
    monitor-exit v5

    return-void

    .line 61
    .restart local v1       #originalCancelCount:I
    :cond_0
    :try_start_2
    const-string v4, "blackFileUrl"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v4, "cancelCount"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    sget-object v4, Lcom/android/updater/db/UpdaterProvider;->BLACKLIST_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 65
    .end local v1           #originalCancelCount:I
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "UpdaterAPK | FOTABlackList"

    const-string v6, "ERROR! FOTABlackList insertFileData error : "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 47
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized isNull(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "resolver"

    .prologue
    const/4 v8, 0x1

    .line 24
    const-class v9, Lcom/android/updater/db/FOTABlackList;

    monitor-enter v9

    const/4 v6, 0x0

    .line 26
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->BLACKLIST_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/updater/db/FOTABlackList;->mProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 27
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 35
    if-eqz v6, :cond_0

    .line 36
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    const/4 v6, 0x0

    :cond_0
    move v0, v8

    .line 40
    :cond_1
    :goto_0
    monitor-exit v9

    return v0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 35
    if-eqz v6, :cond_1

    .line 36
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    const/4 v6, 0x0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v7

    .line 33
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "UpdaterAPK | FOTABlackList"

    const-string v1, "FOTABlackList can not query data of detail table."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    if-eqz v6, :cond_3

    .line 36
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    const/4 v6, 0x0

    :cond_3
    move v0, v8

    .line 40
    goto :goto_0

    .line 35
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    const/4 v6, 0x0

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 24
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized removeAllData(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 5
    .parameter "resolver"
    .parameter "context"

    .prologue
    .line 73
    const-class v2, Lcom/android/updater/db/FOTABlackList;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->BLACKLIST_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    monitor-exit v2

    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/database/SQLException;
    :try_start_1
    const-string v1, "UpdaterAPK | FOTABlackList"

    const-string v3, "ERROR! FOTABlackList removeAllData error :"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
