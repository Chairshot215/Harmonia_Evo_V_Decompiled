.class public Lcom/htc/musicenhancer/util/EnhancerUtils;
.super Ljava/lang/Object;
.source "EnhancerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumMaxSize()I
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x200

    return v0
.end method

.method public static isAutoUpdateEnabled(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 22
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "auto_download"

    aput-object v1, v2, v10

    .line 23
    .local v2, settingColumns:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 25
    .local v8, setting:I
    :try_start_0
    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 29
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 30
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 41
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-lez v8, :cond_2

    move v1, v9

    :goto_1
    return v1

    .line 34
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 38
    .local v7, ex:Ljava/lang/Exception;
    const-string v1, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoUpdateEnabled ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v7           #ex:Ljava/lang/Exception;
    :cond_2
    move v1, v10

    .line 41
    goto :goto_1
.end method

.method public static isConnectionFail(Landroid/content/Context;)Z
    .locals 6
    .parameter "cotext"

    .prologue
    .line 45
    const/4 v2, 0x1

    .line 46
    .local v2, isConnectionFail:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 49
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    :cond_0
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network is not connected : activeNetworkInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x1

    .line 61
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 55
    .restart local v0       #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    const-string v3, "[EnhancerService]"

    const-string v4, "Can\'t get connectivitManager"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
