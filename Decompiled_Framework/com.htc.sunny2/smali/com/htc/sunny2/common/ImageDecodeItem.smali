.class public Lcom/htc/sunny2/common/ImageDecodeItem;
.super Lcom/htc/sunny2/common/MediaDecodeItem;
.source "ImageDecodeItem.java"


# static fields
.field private static final ITERATE_TICKS:I = 0x7d0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDecodeFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/common/ImageDecodeItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/ImageDecodeItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V

    return-void
.end method


# virtual methods
.method public decode()V
    .locals 9

    const/4 v8, 0x1

    sget-object v1, Lcom/htc/sunny2/common/ImageDecodeItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode+, decodeFlag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecodeItem;->mDecodeFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget v5, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    const/4 v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecodeItem;->mDecodeFlags:I

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v1

    if-ne v8, v1, :cond_2

    :cond_0
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->succeeded()Z

    move-result v1

    if-ne v1, v8, :cond_1

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    :goto_0
    sget-object v1, Lcom/htc/sunny2/common/ImageDecodeItem;->TAG:Ljava/lang/String;

    const-string v2, "decode-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v1, Lcom/htc/sunny2/common/ImageDecodeItem;->TAG:Ljava/lang/String;

    const-string v2, "Decode failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/htc/sunny2/common/ImageDecodeItem;->TAG:Ljava/lang/String;

    const-string v2, "Decode setup error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDecodeFlags(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/common/ImageDecodeItem;->mDecodeFlags:I

    return-void
.end method
