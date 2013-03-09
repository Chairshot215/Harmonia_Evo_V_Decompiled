.class public Lcom/muvee/video/trimer/ThumbInterface;
.super Ljava/lang/Object;
.source "ThumbInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/video/trimer/ThumbInterface$Action;,
        Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$muvee$video$trimer$ThumbInterface$Action:[I = null

.field private static final ENABLE_FILE_CACHE:Ljava/lang/Boolean; = null

.field private static final TAG:Ljava/lang/String; = "com.muvee.video.trimer.ThumbInterface"


# instance fields
.field private mCancled:Z

.field private mHandler:Landroid/os/Handler;

.field private mOnProgressUpdateListener:Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTrimSave:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$muvee$video$trimer$ThumbInterface$Action()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/muvee/video/trimer/ThumbInterface;->$SWITCH_TABLE$com$muvee$video$trimer$ThumbInterface$Action:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/muvee/video/trimer/ThumbInterface$Action;->values()[Lcom/muvee/video/trimer/ThumbInterface$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/muvee/video/trimer/ThumbInterface$Action;->TRIM_SAVE:Lcom/muvee/video/trimer/ThumbInterface$Action;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/ThumbInterface$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/muvee/video/trimer/ThumbInterface$Action;->WAIT_FOR:Lcom/muvee/video/trimer/ThumbInterface$Action;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/ThumbInterface$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/muvee/video/trimer/ThumbInterface;->$SWITCH_TABLE$com$muvee$video$trimer$ThumbInterface$Action:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/muvee/video/trimer/ThumbInterface;->ENABLE_FILE_CACHE:Ljava/lang/Boolean;

    .line 38
    const-string v0, "TRIM"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method private native TrimCancel()I
.end method

.method private native TrimPause()I
.end method

.method private native TrimSave(Ljava/lang/String;Ljava/lang/String;I[I[I)I
.end method

.method static synthetic access$1(Lcom/muvee/video/trimer/ThumbInterface;)Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mOnProgressUpdateListener:Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/muvee/video/trimer/ThumbInterface;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/muvee/video/trimer/ThumbInterface;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private native exit()I
.end method

.method private native init(Ljava/lang/String;III)I
.end method

.method private varargs declared-synchronized synchronizedInvoke(Lcom/muvee/video/trimer/ThumbInterface$Action;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "action"
    .parameter "params"

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/muvee/video/trimer/ThumbInterface;->$SWITCH_TABLE$com$muvee$video$trimer$ThumbInterface$Action()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/muvee/video/trimer/ThumbInterface$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 259
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 254
    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x3

    aget-object v4, p2, v0

    check-cast v4, [I

    const/4 v0, 0x4

    aget-object v5, p2, v0

    check-cast v5, [I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/muvee/video/trimer/ThumbInterface;->TrimSave(Ljava/lang/String;Ljava/lang/String;I[I[I)I

    move-result v0

    iput v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mTrimSave:I

    .line 255
    iget v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mTrimSave:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_1
    iget v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mTrimSave:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public InvokeTrimCancel()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/ThumbInterface;->setCancled(Z)V

    .line 230
    invoke-direct {p0}, Lcom/muvee/video/trimer/ThumbInterface;->TrimCancel()I

    move-result v0

    return v0
.end method

.method public InvokeTrimPause()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/ThumbInterface;->setCancled(Z)V

    .line 220
    invoke-direct {p0}, Lcom/muvee/video/trimer/ThumbInterface;->TrimPause()I

    move-result v0

    return v0
.end method

.method native IsTrimPaused(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native TrimClose()I
.end method

.method public native getErrorCode()I
.end method

.method public getOnProgressUpdateListener()Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mOnProgressUpdateListener:Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;

    return-object v0
.end method

.method public native getStreamInfo(Ljava/lang/String;)Lcom/muvee/video/trimer/StreamInfo;
.end method

.method public native getSyncArray()[I
.end method

.method public native getThumbnail(II)[B
.end method

.method public native getThumbnailEx(IIII)[B
.end method

.method public declared-synchronized getThumbnailSync(II)[B
    .locals 12
    .parameter "time"
    .parameter "position"

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 107
    .local v5, t:J
    const-string v8, "com.muvee.video.trimer.ThumbInterface"

    const-string v9, "::getThumbnailSync:start"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v8, Lcom/muvee/video/trimer/ThumbInterface;->ENABLE_FILE_CACHE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 110
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/sdcard/muvee/trimit-"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".trimit.tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 114
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 115
    .local v3, fileInputStream:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .line 116
    .local v0, bs:[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 117
    const-string v8, "com.muvee.video.trimer.ThumbInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::getThumbnailSync:end hit="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .end local v0           #bs:[B
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 119
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 128
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/muvee/video/trimer/ThumbInterface;->getThumbnail(II)[B

    move-result-object v7

    .line 129
    .local v7, thumbnail:[B
    const-string v8, "com.muvee.video.trimer.ThumbInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::getThumbnailSync:before writing file="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 132
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 133
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 134
    const-string v8, "com.muvee.video.trimer.ThumbInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::getThumbnailSync:after writing file="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    :goto_2
    move-object v0, v7

    .line 142
    goto :goto_0

    .line 122
    .end local v7           #thumbnail:[B
    :catch_1
    move-exception v1

    .line 124
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 106
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #t:J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 135
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #t:J
    .restart local v7       #thumbnail:[B
    :catch_2
    move-exception v1

    .line 137
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 138
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 140
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 144
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v7           #thumbnail:[B
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/muvee/video/trimer/ThumbInterface;->getThumbnail(II)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public invokeExit()I
    .locals 5

    .prologue
    .line 81
    sget-object v3, Lcom/muvee/video/trimer/ThumbInterface;->ENABLE_FILE_CACHE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/muvee"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 84
    new-instance v3, Lcom/muvee/video/trimer/ThumbInterface$2;

    invoke-direct {v3, p0}, Lcom/muvee/video/trimer/ThumbInterface$2;-><init>(Lcom/muvee/video/trimer/ThumbInterface;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 91
    .local v2, listFiles:[Ljava/io/File;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 96
    .end local v0           #file:Ljava/io/File;
    .end local v2           #listFiles:[Ljava/io/File;
    :cond_0
    invoke-direct {p0}, Lcom/muvee/video/trimer/ThumbInterface;->exit()I

    move-result v3

    return v3

    .line 91
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #listFiles:[Ljava/io/File;
    :cond_1
    aget-object v1, v2, v3

    .line 92
    .local v1, file2:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public invokeInit(Ljava/lang/String;III)I
    .locals 5
    .parameter "videoFilePath"
    .parameter "width"
    .parameter "height"
    .parameter "bpp"

    .prologue
    .line 55
    sget-object v3, Lcom/muvee/video/trimer/ThumbInterface;->ENABLE_FILE_CACHE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/muvee"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 58
    new-instance v3, Lcom/muvee/video/trimer/ThumbInterface$1;

    invoke-direct {v3, p0}, Lcom/muvee/video/trimer/ThumbInterface$1;-><init>(Lcom/muvee/video/trimer/ThumbInterface;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 65
    .local v2, listFiles:[Ljava/io/File;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 70
    .end local v0           #file:Ljava/io/File;
    .end local v2           #listFiles:[Ljava/io/File;
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muvee/video/trimer/ThumbInterface;->init(Ljava/lang/String;III)I

    move-result v3

    return v3

    .line 65
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #listFiles:[Ljava/io/File;
    :cond_1
    aget-object v1, v2, v3

    .line 66
    .local v1, file2:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public invokeTrimSave(Ljava/lang/String;Ljava/lang/String;I[I[I)I
    .locals 4
    .parameter "pInFile"
    .parameter "pOutFile"
    .parameter "nNoTrimSegments"
    .parameter "pStartTime"
    .parameter "pEndTime"

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0, v2}, Lcom/muvee/video/trimer/ThumbInterface;->setCancled(Z)V

    .line 202
    sget-object v0, Lcom/muvee/video/trimer/ThumbInterface$Action;->TRIM_SAVE:Lcom/muvee/video/trimer/ThumbInterface$Action;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/muvee/video/trimer/ThumbInterface;->synchronizedInvoke(Lcom/muvee/video/trimer/ThumbInterface$Action;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isCancled()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mCancled:Z

    return v0
.end method

.method public onProgressUpdate(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 264
    const-string v0, "com.muvee.video.trimer.ThumbInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "::onProgressUpdate:progress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/ThumbInterface;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    :cond_0
    new-instance v0, Lcom/muvee/video/trimer/ThumbInterface$3;

    invoke-direct {v0, p0, p1}, Lcom/muvee/video/trimer/ThumbInterface$3;-><init>(Lcom/muvee/video/trimer/ThumbInterface;I)V

    iput-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mRunnable:Ljava/lang/Runnable;

    .line 277
    iget-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/ThumbInterface;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method public setCancled(Z)V
    .locals 0
    .parameter "cancled"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/muvee/video/trimer/ThumbInterface;->mCancled:Z

    .line 240
    return-void
.end method

.method public setOnProgressUpdateListener(Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;)V
    .locals 0
    .parameter "onProgressUpdateListener"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/muvee/video/trimer/ThumbInterface;->mOnProgressUpdateListener:Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;

    .line 282
    return-void
.end method

.method public waitFor()I
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/muvee/video/trimer/ThumbInterface$Action;->WAIT_FOR:Lcom/muvee/video/trimer/ThumbInterface$Action;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/muvee/video/trimer/ThumbInterface;->synchronizedInvoke(Lcom/muvee/video/trimer/ThumbInterface$Action;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
