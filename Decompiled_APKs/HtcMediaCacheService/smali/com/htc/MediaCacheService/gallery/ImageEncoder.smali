.class public Lcom/htc/MediaCacheService/gallery/ImageEncoder;
.super Ljava/lang/Object;
.source "ImageEncoder.java"


# static fields
.field private static ITERATOR_BASE_COST:J


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field private mDecoderHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->ITERATOR_BASE_COST:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "ImageEncoder"

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->LOG_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->LOG_TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->mDecoderHandler:I

    return-void
.end method

.method private execute(J)I
    .locals 8
    .parameter "deadLine"

    .prologue
    .line 50
    iget v4, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->mDecoderHandler:I

    if-nez v4, :cond_1

    .line 51
    const/4 v3, 0x0

    .line 79
    :cond_0
    return v3

    .line 53
    :cond_1
    const/4 v0, 0x1

    .line 55
    .local v0, bContinue:Z
    const/4 v3, -0x1

    .line 56
    .local v3, nDecoder:I
    const-wide/16 v1, 0x0

    .line 58
    .local v1, counter:J
    :cond_2
    :goto_0
    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->mDecoderHandler:I

    sget-wide v6, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->ITERATOR_BASE_COST:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeIterate(IJ)I

    move-result v3

    .line 62
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 63
    const/4 v0, 0x0

    .line 72
    :goto_1
    sget-wide v4, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->ITERATOR_BASE_COST:J

    add-long/2addr v1, v4

    .line 74
    cmp-long v4, v1, p1

    if-lez v4, :cond_2

    .line 75
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_3
    if-nez v3, :cond_4

    .line 66
    const/4 v0, 0x1

    goto :goto_1

    .line 69
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public saveFromBitmapToFilePath(Lcom/htc/MediaCacheService/gallery/ImageThumbnail;)Z
    .locals 6
    .parameter "cache"

    .prologue
    const/4 v3, 0x0

    .line 19
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v3

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImageEncoder][saveFromBitmapToFilePath]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetCacheOutputPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->GetGalleryThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeBegin(Landroid/graphics/Bitmap;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->mDecoderHandler:I

    .line 33
    iget v0, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->mDecoderHandler:I

    if-eqz v0, :cond_0

    .line 36
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->execute(J)I

    .line 39
    iget v0, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->mDecoderHandler:I

    if-eqz v0, :cond_2

    .line 41
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->mDecoderHandler:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    .line 42
    iput v3, p0, Lcom/htc/MediaCacheService/gallery/ImageEncoder;->mDecoderHandler:I

    .line 45
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
