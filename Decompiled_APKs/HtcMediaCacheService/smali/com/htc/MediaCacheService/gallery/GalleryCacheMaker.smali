.class public Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;
.super Ljava/lang/Object;
.source "GalleryCacheMaker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GalleryCacheMaker"

.field public static dcimfolder:Ljava/lang/String;

.field public static imagecachefolder:Ljava/lang/String;

.field public static mImageCahcheFolder:Ljava/lang/String;

.field public static mProviderFolder:Ljava/lang/String;

.field public static mThumbnailFolder:Ljava/lang/String;

.field public static providerfolder:Ljava/lang/String;


# instance fields
.field public final MAX_PRECAHCHE:J

.field public mChecktime:J

.field private mContext:Landroid/content/Context;

.field public mCount:J

.field public mFolder:J

.field mImgDecoder:Lcom/htc/MediaCacheService/gallery/ImageDecoder;

.field mImgEncoder:Lcom/htc/MediaCacheService/gallery/ImageEncoder;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field public mMovetime:J

.field public mQtime:J

.field protected mScreenLarge:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "/Android/data/com.htc.mediacacheprovider"

    sput-object v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->providerfolder:Ljava/lang/String;

    .line 38
    const-string v0, "/Android/data/com.htc.mediacacheprovider/.imagecache"

    sput-object v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->imagecachefolder:Ljava/lang/String;

    .line 39
    const-string v0, "/dcim/.thumbnails/folder"

    sput-object v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->dcimfolder:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->providerfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mProviderFolder:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->imagecachefolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImageCahcheFolder:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->dcimfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mThumbnailFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    const-wide/16 v2, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mScreenLarge:I

    .line 52
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->MAX_PRECAHCHE:J

    .line 106
    iput-wide v2, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    .line 107
    iput-wide v2, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 108
    iput-wide v2, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    .line 109
    iput-wide v2, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    .line 110
    iput-wide v2, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    .line 923
    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImgDecoder:Lcom/htc/MediaCacheService/gallery/ImageDecoder;

    .line 924
    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;

    invoke-direct {v0}, Lcom/htc/MediaCacheService/gallery/ImageEncoder;-><init>()V

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImgEncoder:Lcom/htc/MediaCacheService/gallery/ImageEncoder;

    .line 58
    iput-object p1, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static GetBucketNames(Landroid/content/IContentProvider;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "provider"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    const/4 v6, 0x0

    .line 1003
    .local v6, bucketNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 1007
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1014
    if-eqz v8, :cond_2

    .line 1016
    if-nez v6, :cond_0

    .line 1017
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .end local v6           #bucketNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, bucketNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v7

    .line 1020
    .end local v7           #bucketNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #bucketNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1022
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1024
    .local v10, s:Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    const-string v0, "GalleryCacheMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetBucketNames]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1030
    .end local v10           #s:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1033
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1037
    if-eqz v8, :cond_1

    .line 1039
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1040
    const/4 v8, 0x0

    .line 1044
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v6

    .line 1037
    :cond_2
    if-eqz v8, :cond_1

    .line 1039
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1040
    const/4 v8, 0x0

    goto :goto_1

    .line 1037
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1039
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1040
    const/4 v8, 0x0

    :cond_3
    throw v0
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 65
    iget-object v2, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMediaProvider:Landroid/content/IContentProvider;

    .line 82
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImageCahcheFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, imagecahchefolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 86
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mThumbnailFolder:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, galleryfolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 97
    :cond_3
    return-void
.end method

.method public static isThumbnailAlreadyExist(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;)Z
    .locals 5
    .parameter "imgcache"

    .prologue
    const/4 v3, 0x1

    .line 958
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetGalleryThumbnailPath()Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, s2:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 961
    .local v1, f2:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_0

    .line 969
    .end local v1           #f2:Ljava/io/File;
    .end local v2           #s2:Ljava/lang/String;
    :goto_0
    return v3

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "GalleryCacheMaker"

    const-string v4, "[GalleryCacheMaker][isThumbnailAlreadyExist][Exception]"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static makeImageThumbnail(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;Lcom/htc/MediaCacheService/gallery/ImageDecoder;Lcom/htc/MediaCacheService/gallery/ImageEncoder;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 2
    .parameter "imgcache"
    .parameter "imgDecoder"
    .parameter "imgEncoder"
    .parameter "filepath"
    .parameter "mimeType"
    .parameter "modifyTime"
    .parameter "fileSize"

    .prologue
    .line 939
    invoke-virtual {p1, p4, p3}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->loadFromFilePath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 941
    .local v0, b:Z
    if-nez v0, :cond_0

    .line 942
    const/4 v1, 0x0

    .line 951
    :goto_0
    return v1

    .line 945
    :cond_0
    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 946
    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->getTargetWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mWidth:I

    .line 947
    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->getTargetHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mHeight:I

    .line 949
    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->free()V

    .line 951
    invoke-virtual {p2, p0}, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->saveFromBitmapToFilePath(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;)Z

    move-result v1

    goto :goto_0
.end method

.method public static moveThumbnailFromCacheToGalleryFolder(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;)Z
    .locals 9
    .parameter "imgcache"

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 978
    .local v0, bRet:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetCacheOutputPath()Ljava/lang/String;

    move-result-object v4

    .line 979
    .local v4, s1:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    .local v2, f1:Ljava/io/File;
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetGalleryThumbnailPath()Ljava/lang/String;

    move-result-object v5

    .line 982
    .local v5, s2:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 984
    .local v3, f2:Ljava/io/File;
    invoke-static {v2, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 986
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 988
    const-string v6, "GalleryCacheMaker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GalleryCacheMaker][moveThumbnailFromCacheToGalleryFolder]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    .end local v2           #f1:Ljava/io/File;
    .end local v3           #f2:Ljava/io/File;
    .end local v4           #s1:Ljava/lang/String;
    .end local v5           #s2:Ljava/lang/String;
    :goto_0
    return v0

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "GalleryCacheMaker"

    const-string v7, "[GalleryCacheMaker][moveThumbnailFromCacheToGalleryFolder][Exception]"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    const-string v0, " ASC"

    .line 48
    .local v0, ascending:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datetaken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static sortOrder2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 428
    const-string v0, " ASC "

    .line 429
    .local v0, ascending:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bucket_display_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static sortOrderCamera()Ljava/lang/String;
    .locals 3

    .prologue
    .line 433
    const-string v0, " DESC "

    .line 434
    .local v0, ascending:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bucket_display_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private unInitialize()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMediaProvider:Landroid/content/IContentProvider;

    .line 102
    return-void
.end method


# virtual methods
.method public doGenGalleryThumbnail(ZZ)V
    .locals 5
    .parameter "bImage"
    .parameter "bVideo"

    .prologue
    const-wide/16 v3, 0x0

    .line 114
    invoke-direct {p0}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->initialize()V

    .line 116
    invoke-static {}, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->GetThumbnailList()Ljava/util/HashMap;

    move-result-object v0

    .line 118
    .local v0, thumbnails:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    if-eqz p2, :cond_0

    .line 120
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    .line 121
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 122
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    .line 123
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    .line 124
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    .line 125
    iget-object v1, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static {}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->sortOrderCamera()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->makeVideoFirstThumbnail2(Landroid/content/IContentProvider;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 128
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    .line 129
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 130
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    .line 131
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    .line 132
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    .line 133
    iget-object v1, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static {}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->sortOrder2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->makeVideoFirstThumbnail2(Landroid/content/IContentProvider;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    .line 138
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    .line 139
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 140
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    .line 141
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    .line 142
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    .line 143
    iget-object v1, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static {}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->sortOrderCamera()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->makeCameraImageFirstThumbnail(Landroid/content/IContentProvider;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 145
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    .line 146
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 147
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    .line 148
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    .line 149
    iput-wide v3, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    .line 150
    iget-object v1, p0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static {}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->sortOrder2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->makeImageFirstThumbnail2(Landroid/content/IContentProvider;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 153
    :cond_1
    invoke-static {v0}, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->RemoveThumbnails(Ljava/util/HashMap;)V

    .line 155
    invoke-direct {p0}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->unInitialize()V

    .line 156
    return-void
.end method

.method public makeCameraImageFirstThumbnail(Landroid/content/IContentProvider;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 37
    .parameter "provider"
    .parameter
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/MediaCacheService/gallery/ThumbnailFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 555
    .local p2, thumbnails:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    const-string v2, "GalleryCacheMaker"

    const-string v3, "[HtcMediaCacheService][makeCameraImageFirstThumbnail]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/16 v23, 0x0

    .line 559
    .local v23, cur:Landroid/database/Cursor;
    const-wide/16 v26, 0x0

    .line 560
    .local v26, id:J
    const-string v8, ""

    .line 561
    .local v8, path:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 562
    .local v9, modifyTime:J
    const-string v17, ""

    .line 563
    .local v17, mimetype:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 564
    .local v11, fileSize:J
    const-string v29, ""

    .line 569
    .local v29, name:Ljava/lang/String;
    const/16 v28, 0x0

    .line 570
    .local v28, nCount:I
    :try_start_0
    const-string v5, "_data like ?  OR _data like ? "

    .line 571
    .local v5, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/mnt/sdcard/dcim/%"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string v3, "/mnt/sdcard/ext_sd/dcim/%"

    aput-object v3, v6, v2

    .line 573
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "date_modified"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "bucket_display_name"

    aput-object v3, v4, v2

    .line 582
    .local v4, IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 583
    .local v31, t:J
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 584
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v31

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 586
    if-nez v23, :cond_1

    .line 664
    if-eqz v23, :cond_0

    .line 665
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 666
    const/16 v23, 0x0

    .line 669
    :cond_0
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeCameraImageFirstThumbnail]-="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v4           #IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v31           #t:J
    :goto_0
    return-void

    .line 590
    .restart local v4       #IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #whereArgs:[Ljava/lang/String;
    .restart local v31       #t:J
    :cond_1
    :try_start_1
    const-string v25, ""

    .line 592
    .local v25, folder:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 594
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 596
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 598
    const/4 v2, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 600
    const/4 v2, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 602
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 604
    const/4 v2, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 606
    if-eqz v29, :cond_2

    .line 610
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 611
    move-object/from16 v25, v29

    .line 612
    const/16 v28, 0x0

    .line 613
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    .line 616
    :cond_3
    move/from16 v0, v28

    int-to-long v2, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v13, 0x1

    cmp-long v2, v2, v13

    if-gez v2, :cond_2

    .line 620
    new-instance v7, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;

    const-string v13, ""

    invoke-direct/range {v7 .. v13}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 622
    .local v7, thumbail:Lcom/htc/MediaCacheService/gallery/ImageThumbnail;
    invoke-virtual {v7}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetGalleryThumbnailPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    .line 624
    .local v30, sIdx:Ljava/lang/String;
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 626
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 628
    .local v33, t1:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImgDecoder:Lcom/htc/MediaCacheService/gallery/ImageDecoder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImgEncoder:Lcom/htc/MediaCacheService/gallery/ImageEncoder;

    move-object v13, v7

    move-object/from16 v16, v8

    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    invoke-static/range {v13 .. v21}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->makeImageThumbnail(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;Lcom/htc/MediaCacheService/gallery/ImageDecoder;Lcom/htc/MediaCacheService/gallery/ImageEncoder;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v22

    .line 630
    .local v22, b:Z
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v33

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 632
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_5

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    .line 638
    .local v35, t2:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v35

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    .line 640
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    .line 649
    .end local v22           #b:Z
    .end local v33           #t1:J
    .end local v35           #t2:J
    :cond_5
    :goto_2
    add-int/lit8 v28, v28, 0x1

    .line 651
    goto/16 :goto_1

    .line 645
    :cond_6
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->mFind:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 653
    .end local v4           #IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v7           #thumbail:Lcom/htc/MediaCacheService/gallery/ImageThumbnail;
    .end local v25           #folder:Ljava/lang/String;
    .end local v30           #sIdx:Ljava/lang/String;
    .end local v31           #t:J
    :catch_0
    move-exception v24

    .line 656
    .local v24, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeCameraImageFirstThumbnail][RemoteException]"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    if-eqz v23, :cond_7

    .line 665
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 666
    const/16 v23, 0x0

    .line 669
    :cond_7
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeCameraImageFirstThumbnail]-="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 664
    .end local v24           #e:Landroid/os/RemoteException;
    .restart local v4       #IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #whereArgs:[Ljava/lang/String;
    .restart local v25       #folder:Ljava/lang/String;
    .restart local v31       #t:J
    :cond_8
    if-eqz v23, :cond_9

    .line 665
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 666
    const/16 v23, 0x0

    .line 669
    :cond_9
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeCameraImageFirstThumbnail]-="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 658
    .end local v4           #IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v25           #folder:Ljava/lang/String;
    .end local v31           #t:J
    :catch_1
    move-exception v24

    .line 660
    .local v24, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeCameraImageFirstThumbnail][Exception]"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 664
    if-eqz v23, :cond_a

    .line 665
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 666
    const/16 v23, 0x0

    .line 669
    :cond_a
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeCameraImageFirstThumbnail]-="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 664
    .end local v24           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v23, :cond_b

    .line 665
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 666
    const/16 v23, 0x0

    .line 669
    :cond_b
    const-string v3, "GalleryCacheMaker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HtcMediaCacheService][makeCameraImageFirstThumbnail]-="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method public makeImageFirstThumbnail(Landroid/content/IContentProvider;)V
    .locals 17
    .parameter "provider"

    .prologue
    .line 808
    if-nez p1, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 813
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "distinct"

    const-string v15, "true"

    invoke-virtual {v13, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 814
    .local v9, uri2:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "limit"

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 816
    .local v10, uri3:Landroid/net/Uri;
    const/4 v13, 0x1

    new-array v6, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "bucket_display_name"

    aput-object v14, v6, v13

    .line 817
    .local v6, projection:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 818
    .local v11, where:Ljava/lang/String;
    const/4 v12, 0x0

    .line 820
    .local v12, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v9, v6, v11, v12}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->GetBucketNames(Landroid/content/IContentProvider;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 823
    .local v2, bucketNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 827
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    int-to-long v4, v13

    .line 829
    .local v4, n:J
    const-string v13, "GalleryCacheMaker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HtcMediaCacheService][makeImageFirstThumbnail]+folder="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    .line 831
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 833
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    int-to-long v13, v3

    cmp-long v13, v13, v4

    if-gez v13, :cond_2

    .line 835
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 837
    .local v7, s:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v7}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->makeImageFirstThumbnail(Landroid/content/IContentProvider;Landroid/net/Uri;Ljava/lang/String;)V

    .line 833
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 840
    .end local v7           #s:Ljava/lang/String;
    :cond_2
    const-string v13, "GalleryCacheMaker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HtcMediaCacheService][makeImageFirstThumbnail]-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public makeImageFirstThumbnail(Landroid/content/IContentProvider;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 31
    .parameter "provider"
    .parameter "uri"
    .parameter "bucketname"

    .prologue
    .line 845
    if-nez p1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    const/16 v22, 0x0

    .line 853
    .local v22, cur:Landroid/database/Cursor;
    const/16 v26, 0x0

    .line 855
    .local v26, nCount:I
    :try_start_0
    const-string v4, "bucket_display_name= ? "

    .line 856
    .local v4, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v5, v1

    .line 859
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "_size"

    aput-object v2, v3, v1

    .line 867
    .local v3, IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 868
    .local v27, t:J
    invoke-static {}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->sortOrder()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 869
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v27

    add-long/2addr v1, v12

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    .line 871
    if-eqz v22, :cond_4

    .line 873
    :cond_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 875
    const/4 v1, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 877
    .local v24, id:J
    const/4 v1, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 879
    .local v7, path:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 881
    .local v8, modifyTime:J
    const/4 v1, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 883
    .local v16, mimetype:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 885
    .local v10, fileSize:J
    new-instance v6, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;

    const-string v12, ""

    invoke-direct/range {v6 .. v12}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 887
    .local v6, thumbail:Lcom/htc/MediaCacheService/gallery/ImageThumbnail;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 888
    .local v29, t1:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImgDecoder:Lcom/htc/MediaCacheService/gallery/ImageDecoder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImgEncoder:Lcom/htc/MediaCacheService/gallery/ImageEncoder;

    move-object v12, v6

    move-object v15, v7

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    invoke-static/range {v12 .. v20}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->makeImageThumbnail(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;Lcom/htc/MediaCacheService/gallery/ImageDecoder;Lcom/htc/MediaCacheService/gallery/ImageEncoder;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v21

    .line 889
    .local v21, b:Z
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v29

    add-long/2addr v1, v12

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 891
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v1, v0, :cond_3

    .line 892
    invoke-static {v6}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->moveThumbnailFromCacheToGalleryFolder(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 895
    :cond_3
    add-int/lit8 v26, v26, 0x1

    .line 897
    move/from16 v0, v26

    int-to-long v1, v0

    const-wide/16 v12, 0x1

    cmp-long v1, v1, v12

    if-lez v1, :cond_2

    .line 914
    .end local v6           #thumbail:Lcom/htc/MediaCacheService/gallery/ImageThumbnail;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #modifyTime:J
    .end local v10           #fileSize:J
    .end local v16           #mimetype:Ljava/lang/String;
    .end local v21           #b:Z
    .end local v24           #id:J
    .end local v29           #t1:J
    :cond_4
    if-eqz v22, :cond_0

    .line 915
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 916
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 903
    .end local v3           #IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v27           #t:J
    :catch_0
    move-exception v23

    .line 906
    .local v23, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "GalleryCacheMaker"

    const-string v2, "[GalleryCacheMaker][makeImageFirstThumbnail][RemoteException]"

    move-object/from16 v0, v23

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    if-eqz v22, :cond_0

    .line 915
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 916
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 908
    .end local v23           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v23

    .line 910
    .local v23, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "GalleryCacheMaker"

    const-string v2, "[GalleryCacheMaker][makeImageFirstThumbnail][Exception]"

    move-object/from16 v0, v23

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 914
    if-eqz v22, :cond_0

    .line 915
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 916
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 914
    .end local v23           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v22, :cond_5

    .line 915
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 916
    const/16 v22, 0x0

    :cond_5
    throw v1
.end method

.method public makeImageFirstThumbnail2(Landroid/content/IContentProvider;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 37
    .parameter "provider"
    .parameter
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/MediaCacheService/gallery/ThumbnailFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 676
    .local p2, thumbnails:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    const-string v2, "GalleryCacheMaker"

    const-string v3, "[HtcMediaCacheService][makeImageFirstThumbnail2]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-nez p1, :cond_0

    .line 804
    :goto_0
    return-void

    .line 683
    :cond_0
    const/16 v23, 0x0

    .line 685
    .local v23, cur:Landroid/database/Cursor;
    const-wide/16 v26, 0x0

    .line 686
    .local v26, id:J
    const-string v8, ""

    .line 687
    .local v8, path:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 688
    .local v9, modifyTime:J
    const-string v17, ""

    .line 689
    .local v17, mimetype:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 690
    .local v11, fileSize:J
    const-string v29, ""

    .line 695
    .local v29, name:Ljava/lang/String;
    const/16 v28, 0x0

    .line 700
    .local v28, nCount:I
    const/4 v5, 0x0

    .line 701
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 706
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v2, 0x6

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "date_modified"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "bucket_display_name"

    aput-object v3, v4, v2

    .line 715
    .local v4, IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 716
    .local v31, t:J
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 717
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v31

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    if-nez v23, :cond_2

    .line 796
    if-eqz v23, :cond_1

    .line 797
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 798
    const/16 v23, 0x0

    .line 801
    :cond_1
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeImageFirstThumbnail2]-="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 723
    :cond_2
    :try_start_1
    const-string v25, ""

    .line 725
    .local v25, folder:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 727
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 729
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 731
    const/4 v2, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 733
    const/4 v2, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 735
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 737
    const/4 v2, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 739
    if-eqz v29, :cond_3

    .line 743
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 744
    move-object/from16 v25, v29

    .line 745
    const/16 v28, 0x0

    .line 746
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    .line 749
    :cond_4
    move/from16 v0, v28

    int-to-long v2, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v13, 0x1

    cmp-long v2, v2, v13

    if-gez v2, :cond_3

    .line 753
    new-instance v7, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;

    const-string v13, ""

    invoke-direct/range {v7 .. v13}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 755
    .local v7, thumbail:Lcom/htc/MediaCacheService/gallery/ImageThumbnail;
    invoke-virtual {v7}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetGalleryThumbnailPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    .line 757
    .local v30, sIdx:Ljava/lang/String;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 759
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 761
    .local v33, t1:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImgDecoder:Lcom/htc/MediaCacheService/gallery/ImageDecoder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImgEncoder:Lcom/htc/MediaCacheService/gallery/ImageEncoder;

    move-object v13, v7

    move-object/from16 v16, v8

    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    invoke-static/range {v13 .. v21}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->makeImageThumbnail(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;Lcom/htc/MediaCacheService/gallery/ImageDecoder;Lcom/htc/MediaCacheService/gallery/ImageEncoder;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v22

    .line 763
    .local v22, b:Z
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v33

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 765
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_6

    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    .line 771
    .local v35, t2:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v35

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    .line 773
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    .line 782
    .end local v22           #b:Z
    .end local v33           #t1:J
    .end local v35           #t2:J
    :cond_6
    :goto_2
    add-int/lit8 v28, v28, 0x1

    .line 783
    goto/16 :goto_1

    .line 778
    :cond_7
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->mFind:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 785
    .end local v4           #IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    .end local v7           #thumbail:Lcom/htc/MediaCacheService/gallery/ImageThumbnail;
    .end local v25           #folder:Ljava/lang/String;
    .end local v30           #sIdx:Ljava/lang/String;
    .end local v31           #t:J
    :catch_0
    move-exception v24

    .line 788
    .local v24, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeImageFirstThumbnail][RemoteException]"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 796
    if-eqz v23, :cond_8

    .line 797
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 798
    const/16 v23, 0x0

    .line 801
    :cond_8
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeImageFirstThumbnail2]-="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 796
    .end local v24           #e:Landroid/os/RemoteException;
    .restart local v4       #IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    .restart local v25       #folder:Ljava/lang/String;
    .restart local v31       #t:J
    :cond_9
    if-eqz v23, :cond_a

    .line 797
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 798
    const/16 v23, 0x0

    .line 801
    :cond_a
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeImageFirstThumbnail2]-="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 790
    .end local v4           #IMAGE_CACHE_PROJECTION:[Ljava/lang/String;
    .end local v25           #folder:Ljava/lang/String;
    .end local v31           #t:J
    :catch_1
    move-exception v24

    .line 792
    .local v24, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeImageFirstThumbnail][Exception]"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 796
    if-eqz v23, :cond_b

    .line 797
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 798
    const/16 v23, 0x0

    .line 801
    :cond_b
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcMediaCacheService][makeImageFirstThumbnail2]-="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 796
    .end local v24           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v23, :cond_c

    .line 797
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 798
    const/16 v23, 0x0

    .line 801
    :cond_c
    const-string v3, "GalleryCacheMaker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HtcMediaCacheService][makeImageFirstThumbnail2]-="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method public makeVideoFirstThumbnail2(Landroid/content/IContentProvider;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 32
    .parameter "provider"
    .parameter
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/MediaCacheService/gallery/ThumbnailFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 439
    .local p2, thumbnails:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/ThumbnailFile;>;"
    const-string v2, "GalleryCacheMaker"

    const-string v3, "[HtcMediaCacheService][makeVideoFirstThumbnail2]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    if-nez p1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 445
    :cond_0
    const/4 v15, 0x0

    .line 447
    .local v15, cur:Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 448
    .local v18, id:J
    const-string v8, ""

    .line 449
    .local v8, path:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 450
    .local v9, modifyTime:J
    const-string v13, ""

    .line 451
    .local v13, mimetype:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 452
    .local v11, fileSize:J
    const-string v21, ""

    .line 457
    .local v21, name:Ljava/lang/String;
    const/16 v20, 0x0

    .line 459
    .local v20, nCount:I
    :try_start_0
    const-string v5, "_data like ?  OR _data like ? "

    .line 460
    .local v5, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/mnt/sdcard/dcim/%"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string v3, "/mnt/sdcard/ext_sd/dcim/%"

    aput-object v3, v6, v2

    .line 463
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "date_modified"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "bucket_display_name"

    aput-object v3, v4, v2

    .line 472
    .local v4, VIDEO_CACHE_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 473
    .local v23, t:J
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 474
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v29, v29, v23

    add-long v2, v2, v29

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 476
    if-nez v15, :cond_2

    .line 542
    if-eqz v15, :cond_1

    .line 543
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 544
    const/4 v15, 0x0

    .line 547
    :cond_1
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HtcMediaCacheService][makeVideoFirstThumbnail2]-="

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 480
    :cond_2
    :try_start_1
    const-string v17, ""

    .line 482
    .local v17, folder:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 484
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 485
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 486
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 487
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 488
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 489
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 491
    if-eqz v21, :cond_3

    .line 495
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 496
    move-object/from16 v17, v21

    .line 497
    const/16 v20, 0x0

    .line 498
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    const-wide/16 v29, 0x1

    add-long v2, v2, v29

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    .line 501
    :cond_4
    move/from16 v0, v20

    int-to-long v2, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v29, 0x1

    cmp-long v2, v2, v29

    if-gez v2, :cond_3

    .line 505
    new-instance v7, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;

    invoke-direct/range {v7 .. v13}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 507
    .local v7, thumbail:Lcom/htc/MediaCacheService/gallery/ImageThumbnail;
    invoke-virtual {v7}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetGalleryThumbnailPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    .line 509
    .local v22, sIndex:Ljava/lang/String;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 511
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 512
    .local v25, t1:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImgEncoder:Lcom/htc/MediaCacheService/gallery/ImageEncoder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->makeVideothumbnail(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;Lcom/htc/MediaCacheService/gallery/ImageEncoder;)Z

    move-result v14

    .line 513
    .local v14, b:Z
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v29, v29, v25

    add-long v2, v2, v29

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    .line 515
    const/4 v2, 0x1

    if-ne v2, v14, :cond_6

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 519
    .local v27, t2:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v29, v29, v27

    add-long v2, v2, v29

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    .line 520
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    const-wide/16 v29, 0x1

    add-long v2, v2, v29

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    .line 528
    .end local v14           #b:Z
    .end local v25           #t1:J
    .end local v27           #t2:J
    :cond_6
    :goto_2
    add-int/lit8 v20, v20, 0x1

    .line 529
    goto/16 :goto_1

    .line 525
    :cond_7
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/MediaCacheService/gallery/ThumbnailFile;->mFind:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 531
    .end local v4           #VIDEO_CACHE_PROJECTION:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v7           #thumbail:Lcom/htc/MediaCacheService/gallery/ImageThumbnail;
    .end local v17           #folder:Ljava/lang/String;
    .end local v22           #sIndex:Ljava/lang/String;
    .end local v23           #t:J
    :catch_0
    move-exception v16

    .line 534
    .local v16, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HtcMediaCacheService][makeVideoFirstThumbnail2][RemoteException]"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    if-eqz v15, :cond_8

    .line 543
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 544
    const/4 v15, 0x0

    .line 547
    :cond_8
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HtcMediaCacheService][makeVideoFirstThumbnail2]-="

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 542
    .end local v16           #e:Landroid/os/RemoteException;
    .restart local v4       #VIDEO_CACHE_PROJECTION:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #whereArgs:[Ljava/lang/String;
    .restart local v17       #folder:Ljava/lang/String;
    .restart local v23       #t:J
    :cond_9
    if-eqz v15, :cond_a

    .line 543
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 544
    const/4 v15, 0x0

    .line 547
    :cond_a
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HtcMediaCacheService][makeVideoFirstThumbnail2]-="

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 536
    .end local v4           #VIDEO_CACHE_PROJECTION:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v17           #folder:Ljava/lang/String;
    .end local v23           #t:J
    :catch_1
    move-exception v16

    .line 538
    .local v16, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HtcMediaCacheService][makeVideoFirstThumbnail2][Exception]"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 542
    if-eqz v15, :cond_b

    .line 543
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 544
    const/4 v15, 0x0

    .line 547
    :cond_b
    const-string v2, "GalleryCacheMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HtcMediaCacheService][makeVideoFirstThumbnail2]-="

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 542
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_c

    .line 543
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 544
    const/4 v15, 0x0

    .line 547
    :cond_c
    const-string v3, "GalleryCacheMaker"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[HtcMediaCacheService][makeVideoFirstThumbnail2]-="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mQtime:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mChecktime:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mMovetime:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mFolder:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mCount:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method public makeVideothumbnail(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;Lcom/htc/MediaCacheService/gallery/ImageEncoder;)Z
    .locals 1
    .parameter "thumb"
    .parameter "imgEncoder"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->videoThumbnailDecode(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    .line 293
    :cond_0
    iget-object v0, p1, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mWidth:I

    .line 294
    iget-object v0, p1, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mHeight:I

    .line 297
    invoke-virtual {p2, p1}, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->saveFromBitmapToFilePath(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;)Z

    move-result v0

    goto :goto_0
.end method

.method public videoThumbnailDecode(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;)Z
    .locals 22
    .parameter "thumb"

    .prologue
    .line 303
    const-string v18, "GalleryCacheMaker"

    const-string v19, "[videoThumbnailDecoder]+"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v3, 0x0

    .line 306
    .local v3, bRet:Z
    const/4 v7, 0x1

    .line 317
    .local v7, enableCropCenter:Z
    const/4 v12, 0x0

    .line 318
    .local v12, pfd:Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 320
    .local v5, bmp:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 322
    .local v15, retriever:Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/htc/MediaCacheService/gallery/IMediaData;->GetSourceType(Ljava/lang/String;)I

    move-result v16

    .line 325
    .local v16, sourceType:I
    packed-switch v16, :pswitch_data_0

    .line 340
    :try_start_0
    const-string v18, "GalleryCacheMaker"

    const-string v19, "loadVideoFrame: Unknown Data Source"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 351
    :try_start_1
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    .line 355
    :goto_0
    if-eqz v12, :cond_0

    .line 357
    :try_start_2
    throw v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 361
    :goto_1
    const/4 v12, 0x0

    :cond_0
    move v4, v3

    .line 423
    .end local v3           #bRet:Z
    .local v4, bRet:I
    :goto_2
    return v4

    .line 327
    .end local v4           #bRet:I
    .restart local v3       #bRet:Z
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 343
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    .line 351
    :try_start_4
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    .line 355
    :goto_3
    if-eqz v12, :cond_1

    .line 357
    :try_start_5
    throw v12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 361
    :goto_4
    const/4 v12, 0x0

    .line 365
    :cond_1
    :goto_5
    if-nez v5, :cond_3

    .line 369
    const-string v18, "GalleryCacheMaker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bmp is null, item file path  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFilePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 421
    :goto_6
    const-string v18, "GalleryCacheMaker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[videoThumbnailDecoder]-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 423
    .restart local v4       #bRet:I
    goto :goto_2

    .line 358
    .end local v4           #bRet:I
    :catch_0
    move-exception v6

    .line 359
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 358
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 359
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 345
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v18

    .line 351
    :try_start_6
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_9

    .line 355
    :goto_7
    if-eqz v12, :cond_1

    .line 357
    :try_start_7
    throw v12
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 361
    :goto_8
    const/4 v12, 0x0

    goto :goto_5

    .line 358
    :catch_3
    move-exception v6

    .line 359
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 347
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v18

    .line 351
    :try_start_8
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_a

    .line 355
    :goto_9
    if-eqz v12, :cond_1

    .line 357
    :try_start_9
    throw v12
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 361
    :goto_a
    const/4 v12, 0x0

    goto :goto_5

    .line 358
    :catch_5
    move-exception v6

    .line 359
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 350
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 351
    :try_start_a
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_b

    .line 355
    :goto_b
    if-eqz v12, :cond_2

    .line 357
    :try_start_b
    throw v12
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 361
    :goto_c
    const/4 v12, 0x0

    :cond_2
    throw v18

    .line 358
    :catch_6
    move-exception v6

    .line 359
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 375
    .end local v6           #e:Ljava/io/IOException;
    :cond_3
    const/4 v3, 0x1

    .line 377
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 379
    .local v17, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 381
    .local v8, height:I
    const-string v18, "GalleryCacheMaker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "decode video original w= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", h="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mSourceWidth:I

    .line 384
    move-object/from16 v0, p1

    iput v8, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mSourceHeight:I

    .line 386
    if-eqz v7, :cond_5

    .line 388
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mMimetype:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 390
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mMimetype:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "video/mp4-3d"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 392
    new-instance v13, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    div-int/lit8 v20, v17, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v13, v0, v1, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 393
    .local v13, r:Landroid/graphics/Rect;
    move-object v11, v5

    .line 394
    .local v11, oldbmp:Landroid/graphics/Bitmap;
    sget-object v18, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v11, v13, v0, v8, v1}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 395
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 399
    .end local v11           #oldbmp:Landroid/graphics/Bitmap;
    .end local v13           #r:Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 400
    .local v14, ratio:F
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 401
    .local v10, newWidth:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 402
    .local v9, newHeight:I
    invoke-static {v5, v10, v9}, Lcom/htc/opensense/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 403
    invoke-static {v5}, Lcom/htc/opensense/album/util/ImageUtils;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 417
    :goto_d
    const-string v18, "GalleryCacheMaker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "video frame new w= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", h="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 405
    .end local v9           #newHeight:I
    .end local v10           #newWidth:I
    .end local v14           #ratio:F
    :cond_5
    const/4 v14, 0x0

    .line 406
    .restart local v14       #ratio:F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_e
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    const/16 v19, 0x1

    :goto_f
    xor-int v18, v18, v19

    if-eqz v18, :cond_8

    .line 407
    const/high16 v18, 0x3f80

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 412
    :goto_10
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 413
    .restart local v10       #newWidth:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 414
    .restart local v9       #newHeight:I
    invoke-static {v5, v10, v9}, Lcom/htc/opensense/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_d

    .line 406
    .end local v9           #newHeight:I
    .end local v10           #newWidth:I
    :cond_6
    const/16 v18, 0x0

    goto :goto_e

    :cond_7
    const/16 v19, 0x0

    goto :goto_f

    .line 410
    :cond_8
    const/high16 v18, 0x3f80

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_10

    .line 352
    .end local v8           #height:I
    .end local v14           #ratio:F
    .end local v17           #width:I
    :catch_7
    move-exception v18

    goto/16 :goto_0

    :catch_8
    move-exception v18

    goto/16 :goto_3

    :catch_9
    move-exception v18

    goto/16 :goto_7

    :catch_a
    move-exception v18

    goto/16 :goto_9

    :catch_b
    move-exception v19

    goto/16 :goto_b

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
