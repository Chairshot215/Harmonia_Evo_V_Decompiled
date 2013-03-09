.class public Landroid/media/videoeditor/WaveformData;
.super Ljava/lang/Object;
.source "WaveformData.java"


# instance fields
.field private final mFrameDurationMs:I

.field private final mFramesCount:I

.field private final mGains:[S


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/videoeditor/WaveformData;->mFrameDurationMs:I

    iput v0, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "WaveformData : filename is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x4

    :try_start_1
    new-array v4, v8, [B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v2, v4, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_1

    shl-int/lit8 v5, v5, 0x8

    aget-byte v8, v4, v3

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Landroid/media/videoeditor/WaveformData;->mFrameDurationMs:I

    const/4 v8, 0x4

    new-array v6, v8, [B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v2, v6, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v10, :cond_2

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, v6, v3

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput v7, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    iget v8, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    new-array v8, v8, [S

    iput-object v8, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    const/4 v3, 0x0

    :goto_2
    iget v8, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    if-ge v3, v8, :cond_4

    iget-object v8, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v8, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v8

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_5
    return-void

    :catchall_1
    move-exception v8

    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method public getFrameDuration()I
    .locals 1

    iget v0, p0, Landroid/media/videoeditor/WaveformData;->mFrameDurationMs:I

    return v0
.end method

.method public getFrameGains()[S
    .locals 1

    iget-object v0, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    return-object v0
.end method

.method public getFramesCount()I
    .locals 1

    iget v0, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    return v0
.end method
