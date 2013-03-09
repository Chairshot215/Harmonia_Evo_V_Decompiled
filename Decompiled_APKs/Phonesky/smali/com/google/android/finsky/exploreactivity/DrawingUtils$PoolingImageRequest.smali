.class Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;
.super Lcom/android/volley/toolbox/ImageRequest;
.source "DrawingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/DrawingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PoolingImageRequest"
.end annotation


# instance fields
.field private final mPriority:Lcom/android/volley/Request$Priority;

.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Ljava/lang/String;Lcom/android/volley/Request$Priority;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter "url"
    .parameter "priority"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request$Priority;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    .line 700
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    .line 701
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v4, v3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 702
    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->mPriority:Lcom/android/volley/Request$Priority;

    .line 703
    return-void
.end method


# virtual methods
.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 9
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
    .line 709
    invoke-static {}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->access$100()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 711
    :try_start_0
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 714
    .local v1, data:[B
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 715
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 716
    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 717
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 718
    const/4 v4, 0x0

    array-length v6, v1

    invoke-static {v1, v4, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 721
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 723
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v4, v6, :cond_0

    .line 724
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #calls: Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;
    invoke-static {v4, v6, v7}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->access$200(Lcom/google/android/finsky/exploreactivity/DrawingUtils;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 726
    :cond_0
    const/4 v4, 0x0

    array-length v6, v1

    invoke-static {v1, v4, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 728
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 729
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #data:[B
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v4

    .line 731
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #data:[B
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 738
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #data:[B
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 734
    :catch_0
    move-exception v2

    .line 735
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v4, "OOM for %d byte image, url=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
