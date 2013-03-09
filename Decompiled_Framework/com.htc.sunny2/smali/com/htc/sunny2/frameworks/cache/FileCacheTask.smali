.class public Lcom/htc/sunny2/frameworks/cache/FileCacheTask;
.super Lcom/htc/sunny2/frameworks/cache/CacheTask;
.source "FileCacheTask.java"


# static fields
.field public static FILE_CACHE_DECODE:I

.field public static FILE_CACHE_ENCODE:I


# instance fields
.field public mCacheBmp:Landroid/graphics/Bitmap;

.field public mCacheFileFolder:Ljava/lang/String;

.field public mCacheFileName:Ljava/lang/String;

.field public mCacheFilePath:Ljava/lang/String;

.field public mCacheType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_ENCODE:I

    const/4 v0, 0x2

    sput v0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_DECODE:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    sget v0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_ENCODE:I

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheType:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheFileFolder:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheFileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/frameworks/cache/CacheTask;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .locals 8

    iget v1, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    iget-wide v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    iget-wide v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    iget v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;-><init>(ILjava/lang/String;JJI)V

    iput p3, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheType:I

    iput-object p2, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->mCacheFilePath:Ljava/lang/String;

    return-void
.end method
