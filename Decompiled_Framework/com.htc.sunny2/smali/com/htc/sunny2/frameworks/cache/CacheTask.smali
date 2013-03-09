.class public Lcom/htc/sunny2/frameworks/cache/CacheTask;
.super Ljava/lang/Object;
.source "CacheTask.java"


# instance fields
.field public mCacheBmp:Landroid/graphics/Bitmap;

.field public mCacheOutputFolder:Ljava/lang/String;

.field public mCacheOutputName:Ljava/lang/String;

.field public mCacheOutputPath:Ljava/lang/String;

.field public mCacheSet:I

.field public mCacheType:I

.field public mColorDepth:I

.field public mFactor:I

.field public mFileCacheSize:I

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mIdentifier:Ljava/lang/String;

.field public mModifyTime:J

.field public mPosition:I

.field public mUseCacheService:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputFolder:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJI)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJIZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJIZ)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputFolder:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-virtual/range {p0 .. p8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    return-void
.end method


# virtual methods
.method public getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCacheSet()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    return v0
.end method

.method public setFactor(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%d-%08X-%d-%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateContent(ILjava/lang/String;JJI)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    return-void
.end method

.method public updateContent(ILjava/lang/String;JJIZ)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    iput-object p2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    iput-wide p5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    iput p7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iput-boolean p8, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    iput-object p2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    return-void
.end method
