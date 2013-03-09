.class public Lcom/android/volley/toolbox/ImageRequest;
.super Lcom/android/volley/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .parameter "url"
    .parameter
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "decodeConfig"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, p1, p6}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 71
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x4000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 73
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 74
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 75
    iput p3, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    .line 76
    iput p4, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    .line 77
    return-void
.end method

.method private doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 12
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 137
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 138
    .local v3, data:[B
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    .local v4, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 140
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v8, :cond_0

    .line 141
    iget-object v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 142
    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    :goto_0
    if-nez v2, :cond_3

    .line 177
    new-instance v8, Lcom/android/volley/ParseError;

    invoke-direct {v8}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static {v8}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v8

    .line 179
    :goto_1
    return-object v8

    .line 145
    :cond_0
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 146
    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 147
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 148
    .local v1, actualWidth:I
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 151
    .local v0, actualHeight:I
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    invoke-static {v8, v9, v1, v0}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v6

    .line 153
    .local v6, desiredWidth:I
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    invoke-static {v8, v9, v0, v1}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v5

    .line 157
    .local v5, desiredHeight:I
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    invoke-static {v1, v0, v6, v5}, Lcom/android/volley/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 162
    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 166
    .local v7, tempBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v8, v6, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 168
    :cond_1
    invoke-static {v7, v6, v5, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 170
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 172
    :cond_2
    move-object v2, v7

    goto :goto_0

    .line 179
    .end local v0           #actualHeight:I
    .end local v1           #actualWidth:I
    .end local v5           #desiredHeight:I
    .end local v6           #desiredWidth:I
    .end local v7           #tempBitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v8

    goto :goto_1
.end method

.method static findBestSampleSize(IIII)I
    .locals 12
    .parameter "actualWidth"
    .parameter "actualHeight"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    const/high16 v11, 0x4000

    .line 200
    int-to-double v7, p0

    int-to-double v9, p2

    div-double v5, v7, v9

    .line 201
    .local v5, wr:D
    int-to-double v7, p1

    int-to-double v9, p3

    div-double v0, v7, v9

    .line 202
    .local v0, hr:D
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 203
    .local v3, ratio:D
    const/high16 v2, 0x3f80

    .line 204
    .local v2, n:F
    :goto_0
    mul-float v7, v2, v11

    float-to-double v7, v7

    cmpg-double v7, v7, v3

    if-gtz v7, :cond_0

    .line 205
    mul-float/2addr v2, v11

    goto :goto_0

    .line 208
    :cond_0
    float-to-int v7, v2

    return v7
.end method

.method private static getResizedDimension(IIII)I
    .locals 7
    .parameter "maxPrimary"
    .parameter "maxSecondary"
    .parameter "actualPrimary"
    .parameter "actualSecondary"

    .prologue
    .line 98
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 117
    .end local p2
    :goto_0
    return p2

    .line 103
    .restart local p2
    :cond_0
    if-nez p0, :cond_1

    .line 104
    int-to-double v3, p1

    int-to-double v5, p3

    div-double v0, v3, v5

    .line 105
    .local v0, ratio:D
    int-to-double v3, p2

    mul-double/2addr v3, v0

    double-to-int p2, v3

    goto :goto_0

    .line 108
    .end local v0           #ratio:D
    :cond_1
    if-nez p1, :cond_2

    move p2, p0

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    int-to-double v3, p3

    int-to-double v5, p2

    div-double v0, v3, v5

    .line 113
    .restart local v0       #ratio:D
    move v2, p0

    .line 114
    .local v2, resized:I
    int-to-double v3, v2

    mul-double/2addr v3, v0

    int-to-double v5, p1

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 115
    int-to-double v3, p1

    div-double/2addr v3, v0

    double-to-int v2, v3

    :cond_3
    move p2, v2

    .line 117
    goto :goto_0
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v2, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 128
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
