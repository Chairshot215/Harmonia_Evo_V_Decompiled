.class public Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;
.super Ljava/lang/Object;
.source "FileCacheManager.java"


# static fields
.field public static CACHE_ACTIVEUSER:Ljava/lang/String; = null

.field public static CACHE_LOCAL:Ljava/lang/String; = null

.field public static EXTENSION_CACHEALBUMLIST:Ljava/lang/String; = null

.field public static EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String; = null

.field public static EXTENSION_CACHEFOLDERLIST:Ljava/lang/String; = null

.field public static EXTENSION_CACHEFRIENDLIST:Ljava/lang/String; = null

.field public static EXTENSION_CACHEPHOTOLIST:Ljava/lang/String; = null

.field public static EXTENSION_CACHEPOMLIST:Ljava/lang/String; = null

.field public static EXTENSION_CACHERECENTLIST:Ljava/lang/String; = null

.field public static EXTENSION_CACHERECENTVLIST:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "FileCacheManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "local"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    .line 22
    const-string v0, ".auser"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_ACTIVEUSER:Ljava/lang/String;

    .line 23
    const-string v0, ".flist"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERLIST:Ljava/lang/String;

    .line 24
    const-string v0, ".fflist"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String;

    .line 25
    const-string v0, ".clist"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    .line 26
    const-string v0, ".alist"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEALBUMLIST:Ljava/lang/String;

    .line 27
    const-string v0, ".plist"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPHOTOLIST:Ljava/lang/String;

    .line 28
    const-string v0, ".ruplist"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    .line 29
    const-string v0, ".ruvlist"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    .line 30
    const-string v0, ".pomlist"

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, objList:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 123
    .local v1, fileIS:Ljava/io/FileInputStream;
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 148
    .end local v2           #objList:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 126
    .restart local v2       #objList:Ljava/lang/Object;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, szFileName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 131
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v3, os:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 133
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FileCacheManager][getFromFileCache]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    .end local v2           #objList:Ljava/lang/Object;
    .end local v3           #os:Ljava/io/ObjectInputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 142
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FileCacheManager][getFromFileCache] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 34
    const/4 v0, 0x1

    .line 35
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 36
    .local v3, fileIS:Ljava/io/FileInputStream;
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    .line 60
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 39
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, szFileName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 50
    :goto_1
    if-eqz v3, :cond_2

    .line 53
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :cond_2
    :goto_2
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FileCacheManager][isFileCacheExist]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 60
    .restart local v1       #bResult:I
    goto :goto_0

    .line 44
    .end local v1           #bResult:I
    :catch_0
    move-exception v2

    .line 46
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 47
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FileCacheManager][isFileCacheExist] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 54
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 56
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "objList"
    .parameter "szExtension"

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, fileOS:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 67
    .local v2, objOS:Ljava/io/ObjectOutputStream;
    const-string v5, "FileCacheManager"

    const-string v6, "[HTCAlbum][FileCacheManager][putToFileCacheList]: Begin"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v4, 0x0

    .line 72
    .local v4, szFileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 77
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v2           #objOS:Ljava/io/ObjectOutputStream;
    .local v3, objOS:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 81
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FileCacheManager][putToFileCacheList]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 88
    .end local v3           #objOS:Ljava/io/ObjectOutputStream;
    .restart local v2       #objOS:Ljava/io/ObjectOutputStream;
    :goto_1
    if-eqz v2, :cond_2

    .line 91
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 100
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 106
    :cond_3
    :goto_3
    const-string v5, "FileCacheManager"

    const-string v6, "[HTCAlbum][FileCacheManager][putToFileCacheFriendList]: End"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    const-string v5, "FileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FileCacheManager][putToFileCacheList] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 101
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 103
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 83
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #objOS:Ljava/io/ObjectOutputStream;
    .restart local v3       #objOS:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #objOS:Ljava/io/ObjectOutputStream;
    .restart local v2       #objOS:Ljava/io/ObjectOutputStream;
    goto :goto_4
.end method
