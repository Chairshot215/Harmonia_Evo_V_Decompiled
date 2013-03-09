.class public Lcom/htc/MediaCacheService/gallery/ThumbnailFile;
.super Ljava/lang/Object;
.source "ThumbnailFile.java"


# static fields
.field public static S_TAG:Ljava/lang/String;


# instance fields
.field public mFind:Z

.field public mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ThumbnailFile"

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->S_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->mPath:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->mFind:Z

    .line 20
    iput-object p1, p0, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->mPath:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static GetThumbnailList()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/MediaCacheService/gallery/ThumbnailFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v3, 0x0

    .line 61
    .local v3, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, s1:Ljava/lang/String;
    sget-object v6, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->dcimfolder:Ljava/lang/String;

    .line 64
    .local v6, s2:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 66
    .local v1, files:[Ljava/io/File;
    if-nez v3, :cond_0

    .line 67
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .end local v3           #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    .local v4, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    move-object v3, v4

    .line 70
    .end local v4           #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    .restart local v3       #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eqz v1, :cond_1

    array-length v9, v1

    if-ge v2, v9, :cond_1

    .line 72
    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, s3:Ljava/lang/String;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, s4:Ljava/lang/String;
    new-instance v9, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;

    invoke-direct {v9, v7}, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v1           #files:[Ljava/io/File;
    .end local v2           #i:I
    .end local v5           #s1:Ljava/lang/String;
    .end local v6           #s2:Ljava/lang/String;
    .end local v7           #s3:Ljava/lang/String;
    .end local v8           #s4:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v9, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->S_TAG:Ljava/lang/String;

    const-string v10, "[ThumbnailFile]"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-object v3

    .line 82
    :catchall_0
    move-exception v9

    throw v9
.end method

.method public static RemoveThumbnails(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/MediaCacheService/gallery/ThumbnailFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, thumbnails:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 29
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;

    .line 33
    .local v3, thumb:Lcom/htc/MediaCacheService/gallery/ThumbnailFile;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->mFind:Z

    if-nez v4, :cond_0

    .line 35
    new-instance v1, Ljava/io/File;

    iget-object v4, v3, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1           #f1:Ljava/io/File;
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #thumb:Lcom/htc/MediaCacheService/gallery/ThumbnailFile;
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->S_TAG:Ljava/lang/String;

    const-string v5, "[RemoveThumbnails]"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 47
    :catchall_0
    move-exception v4

    throw v4
.end method
