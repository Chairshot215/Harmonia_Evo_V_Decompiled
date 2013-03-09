.class Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;
.super Ljava/lang/Thread;
.source "GifPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;Lcom/htc/album/TabPluginDevice/GifPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    .line 279
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 280
    .local v2, durations:[I
    new-array v1, v6, [Landroid/graphics/Bitmap;

    .line 281
    .local v1, bitmaps:[Landroid/graphics/Bitmap;
    :goto_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$600(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$700(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$200(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 283
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$800(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$600(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    move-result v6

    invoke-virtual {v5, v6, v1, v2}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->decode(I[Landroid/graphics/Bitmap;[I)Z

    move-result v0

    .line 284
    .local v0, bRes:Z
    if-eqz v0, :cond_4

    .line 286
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    monitor-enter v6

    .line 290
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$600(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    move-result v5

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$900(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    move-result v7

    if-le v5, v7, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$200(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 292
    const-string v5, "GifPresenter"

    const-string v7, "[HTCAlbum][GifPresenter][DecodeThread::run] wait begin"

    invoke-static {v5, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 294
    const-string v5, "GifPresenter"

    const-string v7, "[HTCAlbum][GifPresenter][DecodeThread::run] wait end"

    invoke-static {v5, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$600(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    move-result v5

    if-nez v5, :cond_1

    .line 301
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$800(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$600(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getFrameRect(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 302
    .local v4, size:Landroid/graphics/Rect;
    if-eqz v4, :cond_1

    .line 304
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #calls: Lcom/htc/album/TabPluginDevice/GifPlayer;->countSampling(Landroid/graphics/Rect;)[I
    invoke-static {v7, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$1000(Lcom/htc/album/TabPluginDevice/GifPlayer;Landroid/graphics/Rect;)[I

    move-result-object v7

    iput-object v7, v5, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->newSize:[I

    .line 309
    .end local v4           #size:Landroid/graphics/Rect;
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    iget-object v8, v8, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->newSize:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    iget-object v9, v9, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->newSize:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    #setter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v7}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$1102(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 310
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    const/4 v7, 0x0

    aget v7, v2, v7

    #setter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpDuration:I
    invoke-static {v5, v7}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$1202(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;I)I

    .line 311
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$604(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    .line 313
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 315
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$600(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    move-result v5

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$700(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v5, v7, :cond_3

    .line 316
    :try_start_1
    monitor-exit v6

    .line 329
    .end local v0           #bRes:Z
    :cond_2
    return-void

    .line 318
    .restart local v0       #bRes:Z
    :catch_0
    move-exception v3

    .line 320
    .local v3, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 322
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :cond_3
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 326
    :cond_4
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to decode the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$600(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "frame."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
