.class public Lcom/android/updater/db/FOTADetail;
.super Ljava/lang/Object;
.source "FOTADetail.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | FOTADetail"

.field private static mProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "appName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ApStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "appSize"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "versionName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "optionalCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/updater/db/FOTADetail;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAllApkDetail(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 11
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-class v10, Lcom/android/updater/db/FOTADetail;

    monitor-enter v10

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    .local v6, apkDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 80
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/updater/db/FOTADetail;->mProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const-string v9, ""

    .line 84
    .local v9, tempString:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 96
    .end local v9           #tempString:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 97
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "UpdaterAPK | FOTADetail"

    const-string v1, "FOTADetail can not get all of the apk detail information"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    if-eqz v7, :cond_0

    .line 100
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    const/4 v7, 0x0

    .line 104
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    monitor-exit v10

    return-object v6

    .line 99
    :cond_1
    if-eqz v7, :cond_0

    .line 100
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v7, 0x0

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 100
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v7, 0x0

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    .end local v6           #apkDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized getAllApkUrl(Landroid/content/ContentResolver;Z)Ljava/util/ArrayList;
    .locals 11
    .parameter "resolver"
    .parameter "checkOptional"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    const-class v10, Lcom/android/updater/db/FOTADetail;

    monitor-enter v10

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    .local v6, apkUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 192
    .local v7, cursor:Landroid/database/Cursor;
    if-nez p1, :cond_1

    .line 193
    :try_start_1
    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "source"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 200
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 201
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    const-string v9, ""

    .line 203
    .local v9, tempString:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 204
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 207
    .end local v9           #tempString:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 208
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "UpdaterAPK | FOTADetail"

    const-string v1, "FOTADetail can not get all of the apk detail information"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    if-eqz v7, :cond_0

    .line 211
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    const/4 v7, 0x0

    .line 215
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    monitor-exit v10

    return-object v6

    .line 195
    :cond_1
    :try_start_4
    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "source"

    aput-object v3, v2, v0

    const-string v3, "optionalCount > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    goto :goto_0

    .line 210
    :cond_2
    if-eqz v7, :cond_0

    .line 211
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 212
    const/4 v7, 0x0

    goto :goto_2

    .line 210
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 211
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 212
    const/4 v7, 0x0

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    .end local v6           #apkUrl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized getApkSize(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 10
    .parameter "resolver"
    .parameter "apkSource"

    .prologue
    .line 163
    const-class v9, Lcom/android/updater/db/FOTADetail;

    monitor-enter v9

    const/4 v6, 0x0

    .line 164
    .local v6, apkSize:I
    const/4 v7, 0x0

    .line 166
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "appSize"

    aput-object v3, v2, v0

    const-string v3, "source=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 168
    if-eqz v7, :cond_0

    .line 169
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
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

    .line 175
    :cond_0
    if-eqz v7, :cond_1

    .line 176
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    const/4 v7, 0x0

    .line 181
    :cond_1
    :goto_0
    monitor-exit v9

    return v6

    .line 172
    :catch_0
    move-exception v8

    .line 173
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "UpdaterAPK | FOTADetail"

    const-string v1, "ERROR! FOTADetail can not get apk size:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    if-eqz v7, :cond_1

    .line 176
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 177
    const/4 v7, 0x0

    goto :goto_0

    .line 175
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 176
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 177
    const/4 v7, 0x0

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized isNull(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "resolver"

    .prologue
    .line 34
    const-class v9, Lcom/android/updater/db/FOTADetail;

    monitor-enter v9

    const/4 v8, 0x0

    .line 35
    .local v8, isNull:Z
    const/4 v6, 0x0

    .line 37
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/updater/db/FOTADetail;->mProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 38
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const/4 v8, 0x1

    .line 44
    :cond_0
    if-eqz v6, :cond_1

    .line 45
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    const/4 v6, 0x0

    .line 49
    :cond_1
    :goto_0
    monitor-exit v9

    return v8

    .line 41
    :catch_0
    move-exception v7

    .line 42
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "UpdaterAPK | FOTADetail"

    const-string v1, "FOTADetail can not query data of detail table."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    if-eqz v6, :cond_1

    .line 45
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 46
    const/4 v6, 0x0

    goto :goto_0

    .line 44
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 45
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 46
    const/4 v6, 0x0

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized isOptional(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "resolver"

    .prologue
    .line 53
    const-class v9, Lcom/android/updater/db/FOTADetail;

    monitor-enter v9

    const/4 v8, 0x0

    .line 54
    .local v8, isOptional:Z
    const/4 v6, 0x0

    .line 56
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/updater/db/FOTADetail;->mProjection:[Ljava/lang/String;

    const-string v3, "optionalCount > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v8, 0x1

    .line 64
    :cond_0
    if-eqz v6, :cond_1

    .line 65
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    const/4 v6, 0x0

    .line 70
    :cond_1
    :goto_0
    monitor-exit v9

    return v8

    .line 61
    :catch_0
    move-exception v7

    .line 62
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "UpdaterAPK | FOTADetail"

    const-string v1, "ERROR! FOTADetail can not check optional:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    if-eqz v6, :cond_1

    .line 65
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 66
    const/4 v6, 0x0

    goto :goto_0

    .line 64
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 66
    const/4 v6, 0x0

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized removeAllApkDetail(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 11
    .parameter "resolver"
    .parameter "context"

    .prologue
    .line 139
    const-class v8, Lcom/android/updater/db/FOTADetail;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ApkIcon"

    invoke-direct {v1, v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v1, cacheDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 149
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 150
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 151
    .local v6, tempFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #cacheDir:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #tempFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 141
    .local v2, e:Landroid/database/SQLException;
    :try_start_2
    const-string v7, "UpdaterAPK | FOTADetail"

    const-string v9, "ERROR! FOTADetail removeAllApkDetail error :"

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 139
    .end local v2           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 156
    :catch_1
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "UpdaterAPK | FOTADetail"

    const-string v9, "ERROR! FOTADetail can not remove icon files :"

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    monitor-exit v8

    return-void
.end method

.method public static declared-synchronized setAllApkDetail(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, apkDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v6, Lcom/android/updater/db/FOTADetail;

    monitor-enter v6

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .local v4, values:Landroid/content/ContentValues;
    :try_start_1
    sget-object v5, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, apkDetail:Ljava/lang/String;
    const/4 v3, 0x0

    .line 120
    .local v3, tempString:[Ljava/lang/String;
    const-string v5, "@~"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 121
    const-string v5, "appName"

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v5, "ApStatus"

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v5, "appSize"

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v5, "versionName"

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v5, "description"

    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v5, "icon"

    const/4 v7, 0x5

    aget-object v7, v3, v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v5, "source"

    const/4 v7, 0x6

    aget-object v7, v3, v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "optionalCount"

    const/4 v7, 0x7

    aget-object v7, v3, v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v5, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 131
    .end local v0           #apkDetail:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tempString:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "UpdaterAPK | FOTADetail"

    const-string v7, "ERROR! FOTADetail setAllApkDetail error : "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    monitor-exit v6

    return-void

    .line 112
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
