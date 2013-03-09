.class public Lcom/android/mms/ui/GifPresenter;
.super Ljava/lang/Object;
.source "GifPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/GifPresenter$DecodeThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "GifPresenter"

.field private static final TARGET_SIZE:I = 0xf0


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentBmpDuration:I

.field private mCurrentBmpPos:I

.field private mCurrentDispPos:I

.field private mDecodeThread:Lcom/android/mms/ui/GifPresenter$DecodeThread;

.field private mDispRunnable:Ljava/lang/Runnable;

.field private mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

.field private mFrameCount:I

.field private mGifView:Lcom/android/mms/ui/GifView;

.field private final mHandler:Landroid/os/Handler;

.field private mStop:Z

.field newSize:[I


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/GifView;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 5
    .parameter "gifView"
    .parameter "uri"
    .parameter "cr"

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Lcom/android/mms/ui/GifPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/GifPresenter$1;-><init>(Lcom/android/mms/ui/GifPresenter;)V

    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mHandler:Landroid/os/Handler;

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->newSize:[I

    .line 224
    new-instance v1, Lcom/android/mms/ui/GifPresenter$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/GifPresenter$2;-><init>(Lcom/android/mms/ui/GifPresenter;)V

    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0}, Lcom/android/mms/ui/GifPresenter;->ClearDataMember()V

    .line 73
    iput-object p1, p0, Lcom/android/mms/ui/GifPresenter;->mGifView:Lcom/android/mms/ui/GifView;

    .line 75
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "DRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gif play uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, is:Ljava/io/InputStream;
    new-instance v1, Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-direct {v1, v0}, Lcom/android/mms/ui/GifView$FrameByFrameData;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    .line 79
    iget-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/GifView$FrameByFrameData;->LoadData(I)Z

    .line 80
    iget-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-virtual {v1}, Lcom/android/mms/ui/GifView$FrameByFrameData;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    .line 87
    .end local v0           #is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v1, Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-direct {v1, p2, p3}, Lcom/android/mms/ui/GifView$FrameByFrameData;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    .line 84
    iget-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/GifView$FrameByFrameData;->LoadData(I)Z

    .line 85
    iget-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-virtual {v1}, Lcom/android/mms/ui/GifView$FrameByFrameData;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/ui/GifView;Ljava/lang/String;)V
    .locals 2
    .parameter "gifView"
    .parameter "path"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/mms/ui/GifPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GifPresenter$1;-><init>(Lcom/android/mms/ui/GifPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mHandler:Landroid/os/Handler;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/GifPresenter;->newSize:[I

    .line 224
    new-instance v0, Lcom/android/mms/ui/GifPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GifPresenter$2;-><init>(Lcom/android/mms/ui/GifPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/GifPresenter;->ClearDataMember()V

    .line 91
    iput-object p1, p0, Lcom/android/mms/ui/GifPresenter;->mGifView:Lcom/android/mms/ui/GifView;

    .line 93
    new-instance v0, Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/GifView$FrameByFrameData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/GifView$FrameByFrameData;->LoadData(I)Z

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-virtual {v0}, Lcom/android/mms/ui/GifView$FrameByFrameData;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    .line 96
    return-void
.end method

.method private ClearDataMember()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mBitmap:Landroid/graphics/Bitmap;

    .line 100
    iput v0, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    .line 101
    iput v0, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    .line 102
    iput v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    .line 103
    iput v0, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpDuration:I

    .line 104
    iput-boolean v0, p0, Lcom/android/mms/ui/GifPresenter;->mStop:Z

    .line 105
    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mDecodeThread:Lcom/android/mms/ui/GifPresenter$DecodeThread;

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mGifView:Lcom/android/mms/ui/GifView;

    if-eqz v0, :cond_0

    .line 108
    :cond_0
    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mGifView:Lcom/android/mms/ui/GifView;

    .line 109
    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    .line 110
    return-void
.end method

.method private DisplayNextFrame()V
    .locals 5

    .prologue
    .line 231
    const-string v2, "GifPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[First] Total Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Decoded index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Displayed index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-wide/16 v0, 0x0

    .line 233
    .local v0, duration:J
    monitor-enter p0

    .line 235
    :try_start_0
    const-string v2, "GifPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Second] Total Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Decoded index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Displayed index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v2, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    iget v3, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    if-nez v2, :cond_2

    .line 240
    :cond_1
    const-string v2, "GifPresenter"

    const-string v3, "Before DisplayNextFrame\'s wait()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 242
    const-string v2, "GifPresenter"

    const-string v3, "After DisplayNextFrame\'s wait()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/GifPresenter;->mGifView:Lcom/android/mms/ui/GifView;

    iget-object v3, p0, Lcom/android/mms/ui/GifPresenter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/GifView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    iget v2, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpDuration:I

    int-to-long v0, v2

    .line 246
    iget v2, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    .line 248
    iget v2, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    iget v3, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    if-lt v2, v3, :cond_3

    .line 256
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    .line 259
    :cond_3
    const-string v2, "GifPresenter"

    const-string v3, "Before DisplayNextFrame\'s notify()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 261
    const-string v2, "GifPresenter"

    const-string v3, "After DisplayNextFrame\'s notify()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    iget-boolean v2, p0, Lcom/android/mms/ui/GifPresenter;->mStop:Z

    if-nez v2, :cond_4

    .line 266
    iget-object v2, p0, Lcom/android/mms/ui/GifPresenter;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    :cond_4
    return-void

    .line 264
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 262
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/GifPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/GifPresenter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    return p1
.end method

.method static synthetic access$104(Lcom/android/mms/ui/GifPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpPos:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/GifPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/GifPresenter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/mms/ui/GifPresenter;->mStop:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/GifPresenter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/mms/ui/GifPresenter;->mStop:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/GifPresenter;)Lcom/android/mms/ui/GifView$FrameByFrameData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/GifPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentDispPos:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/GifPresenter;Landroid/graphics/Rect;)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/mms/ui/GifPresenter;->countSampling(Landroid/graphics/Rect;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/GifPresenter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/mms/ui/GifPresenter;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/mms/ui/GifPresenter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/mms/ui/GifPresenter;->mCurrentBmpDuration:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/GifPresenter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/mms/ui/GifPresenter;->DisplayNextFrame()V

    return-void
.end method

.method private countSampling(Landroid/graphics/Rect;)[I
    .locals 13
    .parameter "rect"

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 47
    .local v4, t1:J
    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v10

    .line 48
    .local v8, w:I
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    .line 49
    .local v3, h:I
    div-int/lit16 v2, v8, 0xf0

    .line 50
    .local v2, candidateW:I
    div-int/lit16 v1, v3, 0xf0

    .line 51
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 53
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v8, v9, v10

    const/4 v10, 0x1

    aput v3, v9, v10

    .line 68
    :goto_0
    return-object v9

    .line 55
    :cond_0
    const/4 v9, 0x1

    if-le v0, v9, :cond_1

    .line 56
    const/16 v9, 0xf0

    if-le v8, v9, :cond_1

    div-int v9, v8, v0

    const/16 v10, 0xf0

    if-ge v9, v10, :cond_1

    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 60
    :cond_1
    const/4 v9, 0x1

    if-le v0, v9, :cond_2

    .line 61
    const/16 v9, 0xf0

    if-le v3, v9, :cond_2

    div-int v9, v3, v0

    const/16 v10, 0xf0

    if-ge v9, v10, :cond_2

    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 65
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 66
    .local v6, t2:J
    const-string v9, "GIF"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "count sample takes "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v6, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    div-int v11, v8, v0

    aput v11, v9, v10

    const/4 v10, 0x1

    div-int v11, v3, v0

    aput v11, v9, v10

    goto :goto_0
.end method


# virtual methods
.method public FreeResource()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-virtual {v0}, Lcom/android/mms/ui/GifView$FrameByFrameData;->FreeResource()V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/GifPresenter;->ClearDataMember()V

    .line 133
    return-void
.end method

.method public Pause()V
    .locals 4

    .prologue
    .line 137
    iget-boolean v1, p0, Lcom/android/mms/ui/GifPresenter;->mStop:Z

    if-nez v1, :cond_0

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/GifPresenter;->mStop:Z

    .line 140
    iget-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    const-string v1, "GifPresenter"

    const-string v2, "before decode thread\'s join"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mDecodeThread:Lcom/android/mms/ui/GifPresenter$DecodeThread;

    invoke-virtual {v1}, Lcom/android/mms/ui/GifPresenter$DecodeThread;->join()V

    .line 147
    const-string v1, "GifPresenter"

    const-string v2, "after decode thread join"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mDecodeThread:Lcom/android/mms/ui/GifPresenter$DecodeThread;

    .line 153
    const-string v1, "GifPresenter"

    const-string v2, "End Pause()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void

    .line 143
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "GifPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pause() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Play()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 112
    iget v2, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-virtual {v2}, Lcom/android/mms/ui/GifView$FrameByFrameData;->getCount()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    .line 114
    :cond_0
    iget v2, p0, Lcom/android/mms/ui/GifPresenter;->mFrameCount:I

    if-nez v2, :cond_1

    .line 126
    :goto_0
    return v1

    .line 116
    :cond_1
    iput-boolean v1, p0, Lcom/android/mms/ui/GifPresenter;->mStop:Z

    .line 117
    iget-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mDecodeThread:Lcom/android/mms/ui/GifPresenter$DecodeThread;

    if-nez v1, :cond_2

    .line 118
    new-instance v1, Lcom/android/mms/ui/GifPresenter$DecodeThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/GifPresenter$DecodeThread;-><init>(Lcom/android/mms/ui/GifPresenter;Lcom/android/mms/ui/GifPresenter$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mDecodeThread:Lcom/android/mms/ui/GifPresenter$DecodeThread;

    .line 121
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/GifPresenter;->mDecodeThread:Lcom/android/mms/ui/GifPresenter$DecodeThread;

    invoke-virtual {v1}, Lcom/android/mms/ui/GifPresenter$DecodeThread;->start()V

    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/GifPresenter;->DisplayNextFrame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GifPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/GifPresenter;->mFrameByFrameData:Lcom/android/mms/ui/GifView$FrameByFrameData;

    invoke-virtual {v0}, Lcom/android/mms/ui/GifView$FrameByFrameData;->getCount()I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/mms/ui/GifPresenter;->mStop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
