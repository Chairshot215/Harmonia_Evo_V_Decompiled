.class public Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;
.super Ljava/lang/Thread;
.source "LocalThumbDecodeThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;,
        Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;,
        Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;
    }
.end annotation


# instance fields
.field private bCancel:Z

.field private bStart:Z

.field private bStop:Z

.field private mCallback:Lcom/htc/dlnamiddlelayer/PlaylistBase;

.field private mDecodeTask:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V
    .locals 2
    .parameter "aCallback"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mDecodeTask:Ljava/util/Vector;

    .line 20
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStop:Z

    .line 21
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bCancel:Z

    .line 23
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStart:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mCallback:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    .line 29
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mCallback:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    .line 30
    return-void
.end method


# virtual methods
.method public addTask(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;)V
    .locals 1
    .parameter "thumbDecode"

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isStorageSpaceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mDecodeTask:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->startThread()V

    .line 40
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bCancel:Z

    .line 94
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 44
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStop:Z

    if-nez v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mDecodeTask:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mDecodeTask:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;

    .line 49
    .local v8, thumbDecodeItem:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mDecodeTask:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 52
    if-eqz v8, :cond_1

    .line 54
    :try_start_0
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->decodeThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 55
    .local v6, bmp:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    .line 57
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mCallback:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mCallback:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget-object v1, v8, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    iget-wide v2, v8, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->nModifiedTime:J

    iget v4, v8, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->nSize:I

    iget v5, v8, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->nType:I

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->localThumbDecodeNotify(Ljava/lang/String;JIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mDecodeTask:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v8, 0x0

    .line 75
    .end local v8           #thumbDecodeItem:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;
    :cond_2
    monitor-enter p0

    .line 78
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    :cond_3
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Decode thread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 60
    .restart local v6       #bmp:Landroid/graphics/Bitmap;
    .restart local v8       #thumbDecodeItem:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mCallback:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    instance-of v0, v0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mCallback:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    check-cast v0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;

    iget-object v1, v8, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    iget-wide v2, v8, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->nModifiedTime:J

    iget v4, v8, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->nSize:I

    iget v5, v8, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->nType:I

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->localThumbDecodeNotify(Ljava/lang/String;JIILandroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 68
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->mDecodeTask:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const/4 v8, 0x0

    throw v0

    .line 79
    .end local v8           #thumbDecodeItem:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 85
    :goto_2
    :try_start_5
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 81
    :catch_0
    move-exception v7

    .line 83
    .local v7, ex:Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStop:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2
.end method

.method public startThread()V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStart:Z

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStart:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStop:Z

    .line 114
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->start()V

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_0
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 121
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStop:Z

    if-nez v0, :cond_0

    .line 100
    monitor-enter p0

    .line 102
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->bStop:Z

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 104
    monitor-exit p0

    .line 106
    :cond_0
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
