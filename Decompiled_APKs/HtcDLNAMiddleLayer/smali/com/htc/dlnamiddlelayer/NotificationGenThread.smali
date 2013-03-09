.class public Lcom/htc/dlnamiddlelayer/NotificationGenThread;
.super Ljava/lang/Thread;
.source "NotificationGenThread.java"


# instance fields
.field private mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

.field private mAudioNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dlnamiddlelayer/NotificationItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsAudioDone:Z

.field private mIsEndThread:Z

.field private mIsPhotoDone:Z

.field private mIsVideoDone:Z

.field private mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

.field private mPhotoNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dlnamiddlelayer/NotificationItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

.field private mVideoNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dlnamiddlelayer/NotificationItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .parameter "context"
    .parameter "aHandler"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    .line 32
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoNotify:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoNotify:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioNotify:Ljava/util/ArrayList;

    .line 36
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    .line 37
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    .line 38
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    .line 39
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsEndThread:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsPhotoDone:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsVideoDone:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsAudioDone:Z

    .line 46
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    .line 50
    new-instance v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    .line 51
    new-instance v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    .line 52
    return-void
.end method


# virtual methods
.method public genNotification(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "cookie"
    .parameter "filter"
    .parameter "slidestate"
    .parameter "playstate"
    .parameter "title"
    .parameter "info"
    .parameter "thumb"

    .prologue
    .line 398
    new-instance v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v0, item:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 403
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoNotify:Ljava/util/ArrayList;

    monitor-enter v2

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoNotify:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 409
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 409
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 410
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 412
    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 414
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoNotify:Ljava/util/ArrayList;

    monitor-enter v2

    .line 416
    :try_start_5
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoNotify:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 419
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 420
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 421
    :try_start_7
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 420
    :catchall_3
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 423
    :cond_2
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 425
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioNotify:Ljava/util/ArrayList;

    monitor-enter v2

    .line 427
    :try_start_a
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioNotify:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 430
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 431
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 432
    :try_start_c
    monitor-exit v2

    goto :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1

    .line 431
    :catchall_5
    move-exception v1

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
.end method

.method public run()V
    .locals 29

    .prologue
    .line 58
    :goto_0
    const/16 v22, 0x0

    .line 60
    .local v22, tmpNotification:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsEndThread:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 385
    :goto_1
    return-void

    .line 64
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsPhotoDone:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    if-nez v22, :cond_2

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-eqz v24, :cond_1

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 69
    .local v16, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoNotify:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 71
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    add-int/lit8 v26, v16, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v22, v0

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 73
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v16           #size:I
    :cond_1
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsPhotoDone:Z

    .line 77
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsVideoDone:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    if-nez v22, :cond_4

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-eqz v24, :cond_3

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 82
    .restart local v16       #size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoNotify:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 84
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    add-int/lit8 v26, v16, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v22, v0

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 86
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .end local v16           #size:I
    :cond_3
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsVideoDone:Z

    .line 90
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsAudioDone:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    if-nez v22, :cond_6

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-eqz v24, :cond_5

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 95
    .restart local v16       #size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioNotify:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 97
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    add-int/lit8 v26, v16, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v22, v0

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioNotify:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 99
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    .end local v16           #size:I
    :cond_5
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsAudioDone:Z

    .line 103
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsPhotoDone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsVideoDone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsAudioDone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 105
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsPhotoDone:Z

    .line 106
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsVideoDone:Z

    .line 107
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsAudioDone:Z

    .line 110
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 113
    .local v15, resource:Landroid/content/res/Resources;
    if-eqz v22, :cond_25

    .line 115
    move-object/from16 v0, v22

    iget v6, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mCookie:I

    .line 116
    .local v6, cookie:I
    move-object/from16 v0, v22

    iget v9, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mFilterCap:I

    .line 117
    .local v9, filter:I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mSlideShowState:I

    move/from16 v17, v0

    .line 118
    .local v17, slideshowState:I
    move-object/from16 v0, v22

    iget v14, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mPlayState:I

    .line 119
    .local v14, playState:I
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 120
    .local v21, title:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    .line 121
    .local v10, info:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 124
    .local v20, thumbPath:Ljava/lang/String;
    and-int/lit8 v24, v9, 0x2

    if-eqz v24, :cond_8

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mFilterCap:I

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mSlideShowState:I

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 132
    const-string v24, "DLNAMiddlelayer"

    const-string v25, "Already had this Photo notification"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 73
    .end local v6           #cookie:I
    .end local v9           #filter:I
    .end local v10           #info:Ljava/lang/String;
    .end local v14           #playState:I
    .end local v15           #resource:Landroid/content/res/Resources;
    .end local v17           #slideshowState:I
    .end local v20           #thumbPath:Ljava/lang/String;
    .end local v21           #title:Ljava/lang/String;
    .restart local v16       #size:I
    :catchall_0
    move-exception v24

    :try_start_3
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v24

    .line 86
    :catchall_1
    move-exception v24

    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v24

    .line 99
    :catchall_2
    move-exception v24

    :try_start_5
    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v24

    .line 137
    .end local v16           #size:I
    .restart local v6       #cookie:I
    .restart local v9       #filter:I
    .restart local v10       #info:Ljava/lang/String;
    .restart local v14       #playState:I
    .restart local v15       #resource:Landroid/content/res/Resources;
    .restart local v17       #slideshowState:I
    .restart local v20       #thumbPath:Ljava/lang/String;
    .restart local v21       #title:Ljava/lang/String;
    :cond_8
    and-int/lit8 v24, v9, 0x4

    if-eqz v24, :cond_9

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mFilterCap:I

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mPlayState:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v14, v0, :cond_a

    .line 145
    const-string v24, "DLNAMiddlelayer"

    const-string v25, "Already had this Video notification"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    :cond_9
    and-int/lit8 v24, v9, 0x1

    if-eqz v24, :cond_a

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mFilterCap:I

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mPlayState:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v14, v0, :cond_a

    .line 158
    const-string v24, "DLNAMiddlelayer"

    const-string v25, "Already had this Audio notification"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    :cond_a
    new-instance v23, Landroid/widget/RemoteViews;

    const-string v24, "com.htc.dlnamiddlelayer"

    const v25, 0x7f030002

    invoke-direct/range {v23 .. v25}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 165
    .local v23, views:Landroid/widget/RemoteViews;
    new-instance v18, Landroid/app/Notification;

    invoke-direct/range {v18 .. v18}, Landroid/app/Notification;-><init>()V

    .line 167
    .local v18, status:Landroid/app/Notification;
    const v24, 0x7f070004

    const-string v25, "setBackgroundResource"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "common_b_button_small"

    const v28, 0x2080008

    invoke-static/range {v26 .. v28}, Lcom/htc/dlnamiddlelayer/util/CustomizeLayout;->getSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 169
    if-nez v6, :cond_1b

    .line 171
    const-string v24, "DLNAMiddlelayer"

    const-string v25, "Album"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const v24, 0x7f070002

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 173
    const v24, 0x7f070003

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 175
    and-int/lit8 v24, v9, 0x2

    if-eqz v24, :cond_f

    .line 177
    if-nez v17, :cond_e

    .line 179
    const v24, 0x7f070004

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "common_icon_glance_pause_on"

    const v27, 0x2080915

    invoke-static/range {v25 .. v27}, Lcom/htc/dlnamiddlelayer/util/CustomizeLayout;->getSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 198
    :goto_2
    if-eqz v20, :cond_14

    const-string v24, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_14

    .line 200
    const/16 v11, 0x48

    .line 202
    .local v11, maxSideLen:I
    move-object/from16 v0, v20

    invoke-static {v0, v11, v11}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->DecodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 204
    .local v4, DMCGallerybitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_12

    .line 206
    invoke-static {v4}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->cropSquareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 207
    .local v7, cropBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 208
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    :cond_b
    const v24, 0x7f070001

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 236
    .end local v4           #DMCGallerybitmap:Landroid/graphics/Bitmap;
    .end local v7           #cropBmp:Landroid/graphics/Bitmap;
    .end local v11           #maxSideLen:I
    :goto_3
    const/16 v19, 0x0

    .line 237
    .local v19, statusintent:Landroid/content/Intent;
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v9, v0, :cond_16

    .line 238
    new-instance v19, Landroid/content/Intent;

    .end local v19           #statusintent:Landroid/content/Intent;
    const-string v24, "com.htc.album.action.LAUNCH_DMC_PHOTO"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v19       #statusintent:Landroid/content/Intent;
    :goto_4
    const/high16 v24, 0x400

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    sget-object v24, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v25, "*/*"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 245
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v24, v0

    const/high16 v25, 0x10

    or-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 246
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 247
    const v24, 0x7f020006

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 251
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v13, pauseIntent:Landroid/content/Intent;
    and-int/lit8 v24, v9, 0x2

    if-eqz v24, :cond_18

    .line 254
    if-nez v17, :cond_17

    .line 256
    const-string v24, "com.htc.dlnamiddlelayer.dmc_photo_stop"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    :goto_5
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    const v25, 0x7f070004

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 339
    .end local v13           #pauseIntent:Landroid/content/Intent;
    .end local v19           #statusintent:Landroid/content/Intent;
    :cond_c
    :goto_6
    and-int/lit8 v24, v9, 0x2

    if-eqz v24, :cond_23

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v6, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mCookie:I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v9, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mFilterCap:I

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v10, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v14, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mPlayState:I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move/from16 v0, v17

    move-object/from16 v1, v24

    iput v0, v1, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mSlideShowState:I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mPhotoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mTitle:Ljava/lang/String;

    .line 370
    :cond_d
    :goto_7
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 371
    .local v12, msg:Landroid/os/Message;
    move-object/from16 v0, v18

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 373
    iput v6, v12, Landroid/os/Message;->arg2:I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    const-string v24, "DLNAMiddlelayer"

    const-string v25, "[NotificationGenThread] Notification create notify."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    .end local v12           #msg:Landroid/os/Message;
    :cond_e
    const v24, 0x7f070004

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "common_icon_glance_play_on"

    const v27, 0x2080927

    invoke-static/range {v25 .. v27}, Lcom/htc/dlnamiddlelayer/util/CustomizeLayout;->getSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 188
    :cond_f
    sget-object v24, Lcom/htc/dlnamiddlelayer/PlayState;->PAUSED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v24

    move/from16 v0, v24

    if-eq v14, v0, :cond_10

    sget-object v24, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v24

    move/from16 v0, v24

    if-ne v14, v0, :cond_11

    .line 190
    :cond_10
    const v24, 0x7f070004

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "common_icon_glance_play_on"

    const v27, 0x2080927

    invoke-static/range {v25 .. v27}, Lcom/htc/dlnamiddlelayer/util/CustomizeLayout;->getSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 194
    :cond_11
    const v24, 0x7f070004

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "common_icon_glance_pause_on"

    const v27, 0x2080915

    invoke-static/range {v25 .. v27}, Lcom/htc/dlnamiddlelayer/util/CustomizeLayout;->getSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 214
    .restart local v4       #DMCGallerybitmap:Landroid/graphics/Bitmap;
    .restart local v11       #maxSideLen:I
    :cond_12
    and-int/lit8 v24, v9, 0x2

    if-eqz v24, :cond_13

    .line 216
    const v24, 0x7f070001

    const v25, 0x7f020001

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 220
    :cond_13
    const v24, 0x7f070001

    const v25, 0x7f020002

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 226
    .end local v4           #DMCGallerybitmap:Landroid/graphics/Bitmap;
    .end local v11           #maxSideLen:I
    :cond_14
    and-int/lit8 v24, v9, 0x2

    if-eqz v24, :cond_15

    .line 228
    const v24, 0x7f070001

    const v25, 0x7f020001

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 232
    :cond_15
    const v24, 0x7f070001

    const v25, 0x7f020002

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 240
    .restart local v19       #statusintent:Landroid/content/Intent;
    :cond_16
    new-instance v19, Landroid/content/Intent;

    .end local v19           #statusintent:Landroid/content/Intent;
    const-string v24, "com.htc.album.action.LAUNCH_DMC_VIDEO"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v19       #statusintent:Landroid/content/Intent;
    goto/16 :goto_4

    .line 260
    .restart local v13       #pauseIntent:Landroid/content/Intent;
    :cond_17
    const-string v24, "com.htc.dlnamiddlelayer.dmc_photo_start"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 265
    :cond_18
    sget-object v24, Lcom/htc/dlnamiddlelayer/PlayState;->PAUSED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v24

    move/from16 v0, v24

    if-eq v14, v0, :cond_19

    sget-object v24, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v24

    move/from16 v0, v24

    if-ne v14, v0, :cond_1a

    .line 267
    :cond_19
    const-string v24, "com.htc.dlnamiddlelayer.dmc_video_play"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 271
    :cond_1a
    const-string v24, "com.htc.dlnamiddlelayer.dmc_video_pause"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 277
    .end local v13           #pauseIntent:Landroid/content/Intent;
    .end local v19           #statusintent:Landroid/content/Intent;
    :cond_1b
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v6, v0, :cond_c

    .line 279
    const-string v24, "DLNAMiddlelayer"

    const-string v25, "Music"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const v24, 0x7f070002

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 281
    const v24, 0x7f070003

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 283
    sget-object v24, Lcom/htc/dlnamiddlelayer/PlayState;->PAUSED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v24

    move/from16 v0, v24

    if-eq v14, v0, :cond_1c

    sget-object v24, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v24

    move/from16 v0, v24

    if-ne v14, v0, :cond_1f

    .line 285
    :cond_1c
    const v24, 0x7f070004

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "common_icon_glance_play_on"

    const v27, 0x2080927

    invoke-static/range {v25 .. v27}, Lcom/htc/dlnamiddlelayer/util/CustomizeLayout;->getSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 292
    :goto_8
    if-eqz v20, :cond_21

    .line 294
    const/16 v11, 0x48

    .line 296
    .restart local v11       #maxSideLen:I
    move-object/from16 v0, v20

    invoke-static {v0, v11, v11}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->DecodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 298
    .local v5, DMCMusicbitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_20

    .line 300
    invoke-static {v5}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->cropSquareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 301
    .restart local v7       #cropBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1d

    .line 302
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    :cond_1d
    const v24, 0x7f070001

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 316
    .end local v5           #DMCMusicbitmap:Landroid/graphics/Bitmap;
    .end local v7           #cropBmp:Landroid/graphics/Bitmap;
    .end local v11           #maxSideLen:I
    :goto_9
    new-instance v19, Landroid/content/Intent;

    const-string v24, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v19       #statusintent:Landroid/content/Intent;
    const/high16 v24, 0x400

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 319
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v24, v0

    const/high16 v25, 0x8

    or-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 320
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 321
    const v24, 0x7f020006

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 325
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 326
    .restart local v13       #pauseIntent:Landroid/content/Intent;
    sget-object v24, Lcom/htc/dlnamiddlelayer/PlayState;->PAUSED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v24

    move/from16 v0, v24

    if-eq v14, v0, :cond_1e

    sget-object v24, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v24

    move/from16 v0, v24

    if-ne v14, v0, :cond_22

    .line 328
    :cond_1e
    const-string v24, "com.htc.dlnamiddlelayer.dmc_audio_play"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :goto_a
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    const v25, 0x7f070004

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_6

    .line 289
    .end local v13           #pauseIntent:Landroid/content/Intent;
    .end local v19           #statusintent:Landroid/content/Intent;
    :cond_1f
    const v24, 0x7f070004

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "common_icon_glance_pause_on"

    const v27, 0x2080915

    invoke-static/range {v25 .. v27}, Lcom/htc/dlnamiddlelayer/util/CustomizeLayout;->getSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_8

    .line 308
    .restart local v5       #DMCMusicbitmap:Landroid/graphics/Bitmap;
    .restart local v11       #maxSideLen:I
    :cond_20
    const v24, 0x7f070001

    const/high16 v25, 0x7f02

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_9

    .line 313
    .end local v5           #DMCMusicbitmap:Landroid/graphics/Bitmap;
    .end local v11           #maxSideLen:I
    :cond_21
    const v24, 0x7f070001

    const/high16 v25, 0x7f02

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_9

    .line 332
    .restart local v13       #pauseIntent:Landroid/content/Intent;
    .restart local v19       #statusintent:Landroid/content/Intent;
    :cond_22
    const-string v24, "com.htc.dlnamiddlelayer.dmc_audio_pause"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    .line 349
    .end local v13           #pauseIntent:Landroid/content/Intent;
    .end local v19           #statusintent:Landroid/content/Intent;
    :cond_23
    and-int/lit8 v24, v9, 0x4

    if-eqz v24, :cond_24

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v6, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mCookie:I

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v9, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mFilterCap:I

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v10, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v14, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mPlayState:I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move/from16 v0, v17

    move-object/from16 v1, v24

    iput v0, v1, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mSlideShowState:I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mVideoItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mTitle:Ljava/lang/String;

    goto/16 :goto_7

    .line 359
    :cond_24
    and-int/lit8 v24, v9, 0x1

    if-eqz v24, :cond_d

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v6, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mCookie:I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v9, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mFilterCap:I

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v10, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mInfo:Ljava/lang/String;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v14, v0, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mPlayState:I

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move/from16 v0, v17

    move-object/from16 v1, v24

    iput v0, v1, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mSlideShowState:I

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mThumbPath:Ljava/lang/String;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mAudioItem:Lcom/htc/dlnamiddlelayer/NotificationItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/dlnamiddlelayer/NotificationItemInfo;->mTitle:Ljava/lang/String;

    goto/16 :goto_7

    .line 380
    .end local v6           #cookie:I
    .end local v9           #filter:I
    .end local v10           #info:Ljava/lang/String;
    .end local v14           #playState:I
    .end local v17           #slideshowState:I
    .end local v18           #status:Landroid/app/Notification;
    .end local v20           #thumbPath:Ljava/lang/String;
    .end local v21           #title:Ljava/lang/String;
    .end local v23           #views:Landroid/widget/RemoteViews;
    :cond_25
    monitor-enter p0

    .line 384
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    .line 385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsEndThread:Z

    move/from16 v24, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v24, :cond_26

    :try_start_7
    monitor-exit p0

    goto/16 :goto_1

    .line 390
    :catchall_3
    move-exception v24

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v24

    .line 386
    :catch_0
    move-exception v8

    .line 388
    .local v8, e1:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 390
    .end local v8           #e1:Ljava/lang/InterruptedException;
    :cond_26
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_0
.end method

.method public terminateThread()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/NotificationGenThread;->mIsEndThread:Z

    .line 440
    monitor-enter p0

    .line 442
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 443
    monitor-exit p0

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
