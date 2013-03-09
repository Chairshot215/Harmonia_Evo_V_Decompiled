.class public Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;
.super Ljava/lang/Object;
.source "GifPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/GifPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameByFrameData"
.end annotation


# instance fields
.field private mBitmapCach:Landroid/graphics/Bitmap;

.field mContentResolver:Landroid/content/ContentResolver;

.field mFileData:[B

.field private mFilePath:Ljava/lang/String;

.field private mFrameBuffer:[I

.field private mFrameCount:I

.field private mIs:Ljava/io/InputStream;

.field mParser:Landroid/webkit/GIFImageParser;

.field private mSrcType:I

.field private mUri:Landroid/net/Uri;

.field private mbInit:Z

.field private mnDurations:[I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "uri"
    .parameter "contentResolve"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 510
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 511
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    .line 512
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    .line 513
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mUri:Landroid/net/Uri;

    .line 514
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mContentResolver:Landroid/content/ContentResolver;

    .line 515
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 516
    iput v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    .line 517
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 518
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 529
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 530
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    .line 531
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    .line 532
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 533
    iput v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    .line 534
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 535
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mIs:Ljava/io/InputStream;

    .line 536
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 520
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 521
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    .line 522
    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    .line 523
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFilePath:Ljava/lang/String;

    .line 524
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 525
    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    .line 526
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 527
    return-void
.end method

.method private CreateParser()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Landroid/webkit/GIFImageParser;

    invoke-direct {v0}, Landroid/webkit/GIFImageParser;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 489
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    .line 491
    :cond_0
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 698
    if-nez p1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-object v4

    .line 700
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 703
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 705
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 706
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 709
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 710
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_0

    .line 715
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 708
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getFrameAllData(Landroid/webkit/GIFImageParser;)Z
    .locals 8
    .parameter "localParser"

    .prologue
    .line 763
    const/4 v3, 0x0

    .line 766
    .local v3, rectFirstFrame:Landroid/graphics/Rect;
    if-nez p1, :cond_0

    .line 767
    const/4 v5, 0x0

    .line 782
    :goto_0
    return v5

    .line 769
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    .line 771
    .local v2, nFrameCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 775
    invoke-virtual {p1, v1}, Landroid/webkit/GIFImageParser;->frameRectAtIndex(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 776
    .local v4, rectFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/webkit/GIFImageParser;->frameBufferAtIndex(I)[I

    move-result-object v0

    .line 777
    .local v0, colorsFrame:[I
    if-nez v1, :cond_1

    .line 778
    move-object v3, v4

    .line 780
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    invoke-virtual {p1, v1}, Landroid/webkit/GIFImageParser;->frameDurationAtIndex(I)J

    move-result-wide v6

    long-to-int v6, v6

    aput v6, v5, v1

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 782
    .end local v0           #colorsFrame:[I
    .end local v4           #rectFrame:Landroid/graphics/Rect;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getFrameAllData2(Landroid/webkit/GIFImageParser;)Z
    .locals 5
    .parameter "localParser"

    .prologue
    const/4 v4, 0x1

    .line 787
    new-array v0, v4, [Landroid/graphics/Bitmap;

    .line 788
    .local v0, bitmaps:[Landroid/graphics/Bitmap;
    new-array v1, v4, [I

    .line 790
    .local v1, durations:[I
    if-nez p1, :cond_1

    .line 791
    const/4 v4, 0x0

    .line 800
    :cond_0
    return v4

    .line 793
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v3

    .line 795
    .local v3, nFrameCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 797
    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->decode(I[Landroid/graphics/Bitmap;[I)Z

    .line 795
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public FreeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v0}, Landroid/webkit/GIFImageParser;->Release()V

    .line 499
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    if-eqz v0, :cond_1

    .line 503
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 506
    :cond_1
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameBuffer:[I

    .line 507
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    .line 508
    return-void
.end method

.method GetDuration(I)I
    .locals 1
    .parameter "nPos"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    aget v0, v0, p1

    return v0
.end method

.method GetFileData(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "uri"
    .parameter "contentResolve"

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, Input:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 566
    .local v1, bRes:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 568
    .local v3, nSize:I
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    .line 569
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    const/4 v1, 0x1

    .line 575
    if-eqz v0, :cond_0

    .line 576
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 584
    .end local v3           #nSize:I
    :cond_0
    :goto_0
    return v1

    .line 578
    .restart local v3       #nSize:I
    :catch_0
    move-exception v2

    .line 579
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 580
    const/4 v1, 0x0

    .line 582
    goto :goto_0

    .line 571
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #nSize:I
    :catch_1
    move-exception v2

    .line 572
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileError"

    invoke-static {v4, v5, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    if-eqz v0, :cond_0

    .line 576
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 578
    :catch_2
    move-exception v2

    .line 579
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 580
    const/4 v1, 0x0

    .line 582
    goto :goto_0

    .line 574
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 575
    if-eqz v0, :cond_1

    .line 576
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 581
    :cond_1
    :goto_1
    throw v4

    .line 578
    :catch_3
    move-exception v2

    .line 579
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 580
    const/4 v1, 0x0

    goto :goto_1
.end method

.method GetInputStreamData()Z
    .locals 6

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mIs:Ljava/io/InputStream;

    .line 672
    .local v0, Input:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 676
    .local v1, bRes:Z
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 678
    .local v3, nSize:I
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    .line 679
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 680
    const/4 v1, 0x1

    .line 685
    if-eqz v0, :cond_0

    .line 686
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 694
    .end local v3           #nSize:I
    :cond_0
    :goto_0
    return v1

    .line 688
    .restart local v3       #nSize:I
    :catch_0
    move-exception v2

    .line 689
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 690
    const/4 v1, 0x0

    .line 692
    goto :goto_0

    .line 681
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #nSize:I
    :catch_1
    move-exception v2

    .line 682
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputStreamErr"

    invoke-static {v4, v5, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 685
    if-eqz v0, :cond_0

    .line 686
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 688
    :catch_2
    move-exception v2

    .line 689
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 690
    const/4 v1, 0x0

    .line 692
    goto :goto_0

    .line 684
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 685
    if-eqz v0, :cond_1

    .line 686
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 691
    :cond_1
    :goto_1
    throw v4

    .line 688
    :catch_3
    move-exception v2

    .line 689
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 690
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public LoadData(I)Z
    .locals 3
    .parameter "nMode"

    .prologue
    .line 548
    iget v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    if-nez v1, :cond_0

    .line 549
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadDataFromFile(I)Z

    move-result v0

    .line 556
    .local v0, bRes:Z
    :goto_0
    return v0

    .line 550
    .end local v0           #bRes:Z
    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mSrcType:I

    if-ne v1, v2, :cond_1

    .line 551
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadDataFromUri(I)Z

    move-result v0

    .restart local v0       #bRes:Z
    goto :goto_0

    .line 553
    .end local v0           #bRes:Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadDataFromInputStream(I)Z

    move-result v0

    .restart local v0       #bRes:Z
    goto :goto_0
.end method

.method public LoadDataFromFile(I)Z
    .locals 8
    .parameter "nMode"

    .prologue
    const/4 v5, 0x1

    .line 649
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->CreateParser()V

    .line 650
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    .line 651
    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    if-nez v4, :cond_0

    .line 652
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->Release()V

    .line 653
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 654
    const/4 v4, 0x0

    .line 667
    :goto_0
    return v4

    .line 656
    :cond_0
    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 659
    .local v0, t3:J
    if-ne p1, v5, :cond_1

    .line 660
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    .line 665
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 666
    .local v2, t4:J
    const-string v4, "GIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count frame takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_0

    .line 662
    .end local v2           #t4:J
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getFrameAllData(Landroid/webkit/GIFImageParser;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_1
.end method

.method public LoadDataFromInputStream(I)Z
    .locals 7
    .parameter "nMode"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 719
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mIs:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 757
    :cond_0
    :goto_0
    return v2

    .line 723
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-eqz v4, :cond_2

    .line 724
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Reload"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 725
    goto :goto_0

    .line 727
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->GetInputStreamData()Z

    move-result v0

    .line 728
    .local v0, bRes:Z
    if-eqz v0, :cond_0

    .line 732
    new-instance v4, Landroid/webkit/GIFImageParser;

    invoke-direct {v4}, Landroid/webkit/GIFImageParser;-><init>()V

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 734
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    invoke-virtual {v4, v5}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 736
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    .line 738
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    .line 739
    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    if-nez v4, :cond_3

    .line 740
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v3}, Landroid/webkit/GIFImageParser;->Release()V

    .line 741
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    goto :goto_0

    .line 745
    :cond_3
    iget v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 748
    if-ne p1, v3, :cond_5

    .line 749
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    if-ge v1, v2, :cond_4

    .line 750
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4, v1}, Landroid/webkit/GIFImageParser;->frameDurationAtIndex(I)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v2, v1

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 752
    :cond_4
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    .line 757
    .end local v1           #i:I
    :goto_2
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_0

    .line 754
    :cond_5
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getFrameAllData(Landroid/webkit/GIFImageParser;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_2
.end method

.method public LoadDataFromUri(I)Z
    .locals 8
    .parameter "nMode"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 590
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v3

    .line 594
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-eqz v5, :cond_2

    .line 595
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Reload"

    invoke-static {v3, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 596
    goto :goto_0

    .line 601
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v5, v6}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->GetFileData(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 602
    .local v0, bRes:Z
    if-eqz v0, :cond_0

    .line 606
    new-instance v5, Landroid/webkit/GIFImageParser;

    invoke-direct {v5}, Landroid/webkit/GIFImageParser;-><init>()V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 608
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    invoke-virtual {v5, v6}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 610
    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFileData:[B

    .line 612
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v5}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    .line 613
    iget v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    if-nez v5, :cond_3

    .line 614
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->Release()V

    .line 615
    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    goto :goto_0

    .line 619
    :cond_3
    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    .line 622
    if-ne p1, v4, :cond_4

    .line 623
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    .line 645
    :goto_1
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    goto :goto_0

    .line 626
    :cond_4
    const-wide/16 v1, 0x0

    .line 638
    .local v1, nTime:J
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 641
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getFrameAllData2(Landroid/webkit/GIFImageParser;)Z

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 643
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method 2 Time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method decode(I[Landroid/graphics/Bitmap;[I)Z
    .locals 3
    .parameter "nIndex"
    .parameter "bitmapRes"
    .parameter "nDurations"

    .prologue
    const/4 v0, 0x0

    .line 804
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mbInit:Z

    if-nez v1, :cond_0

    .line 805
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not Ready"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :goto_0
    return v0

    .line 809
    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 810
    :cond_1
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Out of Index"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 816
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v1}, Landroid/webkit/GIFImageParser;->nativeAllocFrameBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    .line 822
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Landroid/webkit/GIFImageParser;->nativeGetFrameBitmap(ILandroid/graphics/Bitmap;)I

    .line 823
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v1, p1}, Landroid/webkit/GIFImageParser;->frameDurationAtIndex(I)J

    move-result-wide v1

    long-to-int v1, v1

    aput v1, p3, v0

    .line 824
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    aput-object v1, p2, v0

    .line 825
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mnDurations:[I

    aget v0, p3, v0

    aput v0, v1, p1

    .line 826
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mFrameCount:I

    return v0
.end method

.method getFrameRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 541
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v0, p1}, Landroid/webkit/GIFImageParser;->frameRectAtIndex(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method
