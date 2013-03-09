.class public Lcom/htc/MediaCacheService/gallery/ImageThumbnail;
.super Ljava/lang/Object;
.source "ImageThumbnail.java"


# static fields
.field public static final CACHE_SET_CUSTOM:I = 0x64

.field public static final CACHE_SET_DEFAULT:I = -0x1

.field public static final CACHE_SET_HIGH:I = 0xc

.field public static final CACHE_SET_LOW:I = 0xa

.field public static final CACHE_SET_MIDIUM:I = 0xb

.field private static final LOG_TAG:Ljava/lang/String; = "ImageCache"

.field public static mFactor:I


# instance fields
.field public mCacheBmp:Landroid/graphics/Bitmap;

.field public mCacheSet:I

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mHeight:I

.field public mMimetype:Ljava/lang/String;

.field public mModifyTime:J

.field public mSourceHeight:I

.field public mSourceWidth:I

.field public mTargetHeight:I

.field public mTargetWidth:I

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/htc/MediaCacheService/gallery/LayoutConstants;->WINDOW_DISP_HEIGHT:I

    sput v0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFactor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 4
    .parameter "filepath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "mimetype"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x65

    iput v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheSet:I

    .line 24
    iput-wide v2, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mModifyTime:J

    .line 25
    iput-wide v2, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFileSize:J

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFilePath:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 28
    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mWidth:I

    .line 29
    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mHeight:I

    .line 33
    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mSourceWidth:I

    .line 34
    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mSourceHeight:I

    .line 35
    sget v0, Lcom/htc/MediaCacheService/gallery/LayoutConstants;->HEIGHT_FOLDER_GRID_IMG:I

    iput v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetWidth:I

    .line 36
    sget v0, Lcom/htc/MediaCacheService/gallery/LayoutConstants;->HEIGHT_FOLDER_GRID_IMG:I

    iput v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mTargetHeight:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mMimetype:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFilePath:Ljava/lang/String;

    .line 46
    iput-wide p4, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFileSize:J

    .line 47
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mModifyTime:J

    .line 48
    iput-object p6, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mMimetype:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public GetCacheOutputPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mImageCahcheFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method

.method public GetGalleryThumbnailPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->mThumbnailFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method

.method public copyFileToGallery()V
    .locals 8

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetCacheOutputPath()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, s1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetGalleryThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, s2:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, f1:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, f2:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    const-string v5, "ImageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ImageCache][copyFileToGallery]- not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v1           #f1:Ljava/io/File;
    .end local v2           #f2:Ljava/io/File;
    :goto_0
    return-void

    .line 92
    .restart local v1       #f1:Ljava/io/File;
    .restart local v2       #f2:Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 93
    const-string v5, "ImageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ImageCache][copyFileToGallery]- already exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1           #f1:Ljava/io/File;
    .end local v2           #f2:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ImageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ImageCache][copyFileToGallery]- except:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #f1:Ljava/io/File;
    .restart local v2       #f2:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-static {v1, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mWidth:I

    return v0
.end method

.method public releaseBmp()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 113
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mModifyTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, hash:Ljava/lang/String;
    const-string v2, "%d-%08X-%d-%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheSet:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget v5, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFactor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, res:Ljava/lang/String;
    return-object v1
.end method
