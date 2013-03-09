.class public Lcom/htc/home/personalize/ImageAdjuster;
.super Ljava/lang/Object;
.source "ImageAdjuster.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static compressQuality:I

.field public static config:Landroid/graphics/Bitmap$Config;

.field public static dither:Z

.field public static downSampling:Z

.field public static format:Landroid/graphics/Bitmap$CompressFormat;

.field public static scaleByDensity:Z

.field public static targetDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    const-class v0, Lcom/htc/home/personalize/ImageAdjuster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/ImageAdjuster;->TAG:Ljava/lang/String;

    .line 19
    const/16 v0, 0xa0

    sput v0, Lcom/htc/home/personalize/ImageAdjuster;->targetDensity:I

    .line 20
    const/16 v0, 0x55

    sput v0, Lcom/htc/home/personalize/ImageAdjuster;->compressQuality:I

    .line 21
    sput-boolean v1, Lcom/htc/home/personalize/ImageAdjuster;->downSampling:Z

    .line 22
    sput-boolean v1, Lcom/htc/home/personalize/ImageAdjuster;->scaleByDensity:Z

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/ImageAdjuster;->dither:Z

    .line 24
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/htc/home/personalize/ImageAdjuster;->config:Landroid/graphics/Bitmap$Config;

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/htc/home/personalize/ImageAdjuster;->format:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjust(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10
    .parameter "inFilePath"
    .parameter "outFilePath"
    .parameter "targetHeight"
    .parameter "targetWidth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 52
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    .local v2, mOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 56
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    sget-object v6, Lcom/htc/home/personalize/ImageAdjuster;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjust: org dimension="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2, v6, v7, p2, p3}, Lcom/htc/home/personalize/ImageAdjuster;->setOptions(Landroid/graphics/BitmapFactory$Options;IIII)V

    .line 62
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v6, Lcom/htc/home/personalize/ImageAdjuster;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjust: new dimension="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v4, 0x0

    .line 68
    .local v4, x:I
    const/4 v5, 0x0

    .line 69
    .local v5, y:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v6, p3, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, p3

    div-int/lit8 v4, v6, 0x2

    .line 74
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v6, p2, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, p2

    div-int/lit8 v5, v6, 0x2

    .line 79
    :goto_1
    sget-object v6, Lcom/htc/home/personalize/ImageAdjuster;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjust: x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {v0, v4, v5, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 84
    .local v1, finalBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    .local v3, outStream:Ljava/io/OutputStream;
    sget-object v6, Lcom/htc/home/personalize/ImageAdjuster;->format:Landroid/graphics/Bitmap$CompressFormat;

    sget v7, Lcom/htc/home/personalize/ImageAdjuster;->compressQuality:I

    invoke-virtual {v1, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 88
    return v9

    .line 72
    .end local v1           #finalBitmap:Landroid/graphics/Bitmap;
    .end local v3           #outStream:Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    goto :goto_1
.end method

.method private static setOptions(Landroid/graphics/BitmapFactory$Options;IIII)V
    .locals 9
    .parameter "options"
    .parameter "inHeight"
    .parameter "inWidth"
    .parameter "outHeight"
    .parameter "outWidth"

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, sample:I
    sget-boolean v6, Lcom/htc/home/personalize/ImageAdjuster;->downSampling:Z

    if-eqz v6, :cond_0

    .line 95
    div-int v1, p1, p3

    .line 96
    .local v1, sampleH:I
    div-int v2, p2, p4

    .line 97
    .local v2, sampleW:I
    if-ge v1, v2, :cond_2

    move v0, v1

    .line 103
    :goto_0
    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 107
    .end local v1           #sampleH:I
    .end local v2           #sampleW:I
    :cond_0
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 108
    div-int/2addr p1, v0

    .line 109
    div-int/2addr p2, v0

    .line 110
    sget-object v6, Lcom/htc/home/personalize/ImageAdjuster;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOptions: sample="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-boolean v6, Lcom/htc/home/personalize/ImageAdjuster;->dither:Z

    iput-boolean v6, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 113
    sget-object v6, Lcom/htc/home/personalize/ImageAdjuster;->config:Landroid/graphics/Bitmap$Config;

    iput-object v6, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 115
    sget-boolean v6, Lcom/htc/home/personalize/ImageAdjuster;->scaleByDensity:Z

    if-eqz v6, :cond_1

    if-le p1, p3, :cond_1

    if-le p2, p4, :cond_1

    .line 116
    int-to-float v6, p1

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 117
    .local v4, scaleH:F
    int-to-float v6, p2

    int-to-float v7, p4

    div-float v5, v6, v7

    .line 118
    .local v5, scaleW:F
    cmpg-float v6, v4, v5

    if-gez v6, :cond_3

    move v3, v4

    .line 119
    .local v3, scale:F
    :goto_1
    sget v6, Lcom/htc/home/personalize/ImageAdjuster;->targetDensity:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 120
    sget v6, Lcom/htc/home/personalize/ImageAdjuster;->targetDensity:I

    iput v6, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 121
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 122
    sget-object v6, Lcom/htc/home/personalize/ImageAdjuster;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOptions: inDensity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " inTargetDensity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " scale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v3           #scale:F
    .end local v4           #scaleH:F
    .end local v5           #scaleW:F
    :cond_1
    return-void

    .restart local v1       #sampleH:I
    .restart local v2       #sampleW:I
    :cond_2
    move v0, v2

    .line 97
    goto :goto_0

    .end local v1           #sampleH:I
    .end local v2           #sampleW:I
    .restart local v4       #scaleH:F
    .restart local v5       #scaleW:F
    :cond_3
    move v3, v5

    .line 118
    goto :goto_1
.end method
