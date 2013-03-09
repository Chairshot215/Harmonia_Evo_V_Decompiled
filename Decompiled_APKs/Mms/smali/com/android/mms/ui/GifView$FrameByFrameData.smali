.class public Lcom/android/mms/ui/GifView$FrameByFrameData;
.super Ljava/lang/Object;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/GifView;
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

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 86
    iput-boolean v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mSrcType:I

    .line 88
    iput-object p1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mUri:Landroid/net/Uri;

    .line 89
    iput-object p2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 91
    iput v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    .line 92
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 105
    iput-boolean v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mSrcType:I

    .line 107
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 108
    iput v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    .line 109
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 110
    iput-object p1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mIs:Ljava/io/InputStream;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 96
    iput-boolean v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    .line 97
    iput v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mSrcType:I

    .line 98
    iput-object p1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFilePath:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 100
    iput v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    .line 101
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 102
    return-void
.end method

.method private CreateParser()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/webkit/GIFImageParser;

    invoke-direct {v0}, Landroid/webkit/GIFImageParser;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 271
    if-nez p1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-object v4

    .line 273
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 276
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 278
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 279
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 282
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 283
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "GifView"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_0

    .line 288
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 281
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
    .line 336
    const/4 v3, 0x0

    .line 339
    .local v3, rectFirstFrame:Landroid/graphics/Rect;
    if-nez p1, :cond_0

    .line 340
    const/4 v5, 0x0

    .line 355
    :goto_0
    return v5

    .line 342
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    .line 344
    .local v2, nFrameCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 348
    invoke-virtual {p1, v1}, Landroid/webkit/GIFImageParser;->frameRectAtIndex(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 349
    .local v4, rectFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/webkit/GIFImageParser;->frameBufferAtIndex(I)[I

    move-result-object v0

    .line 350
    .local v0, colorsFrame:[I
    if-nez v1, :cond_1

    .line 351
    move-object v3, v4

    .line 353
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    invoke-virtual {p1, v1}, Landroid/webkit/GIFImageParser;->frameDurationAtIndex(I)J

    move-result-wide v6

    long-to-int v6, v6

    aput v6, v5, v1

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
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

    .line 360
    new-array v0, v4, [Landroid/graphics/Bitmap;

    .line 361
    .local v0, bitmaps:[Landroid/graphics/Bitmap;
    new-array v1, v4, [I

    .line 363
    .local v1, durations:[I
    if-nez p1, :cond_1

    .line 364
    const/4 v4, 0x0

    .line 373
    :cond_0
    return v4

    .line 366
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v3

    .line 368
    .local v3, nFrameCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 370
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/mms/ui/GifView$FrameByFrameData;->decode(I[Landroid/graphics/Bitmap;[I)Z

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public FreeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v0}, Landroid/webkit/GIFImageParser;->Release()V

    .line 74
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    if-eqz v0, :cond_1

    .line 78
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 81
    :cond_1
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameBuffer:[I

    .line 82
    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    .line 83
    return-void
.end method

.method GetDuration(I)I
    .locals 1
    .parameter "nPos"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    aget v0, v0, p1

    return v0
.end method

.method GetFileData(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "uri"
    .parameter "contentResolve"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, Input:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 141
    .local v1, bRes:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 143
    .local v3, nSize:I
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFileData:[B

    .line 144
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFileData:[B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    const/4 v1, 0x1

    .line 150
    if-eqz v0, :cond_0

    .line 151
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .end local v3           #nSize:I
    :cond_0
    :goto_0
    return v1

    .line 153
    .restart local v3       #nSize:I
    :catch_0
    move-exception v2

    .line 154
    .local v2, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    .line 156
    goto :goto_0

    .line 146
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #nSize:I
    :catch_1
    move-exception v2

    .line 147
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_2
    const-string v4, "GifView"

    const-string v5, "FileError"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 153
    :catch_2
    move-exception v2

    .line 154
    const/4 v1, 0x0

    .line 156
    goto :goto_0

    .line 149
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 150
    if-eqz v0, :cond_1

    .line 151
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 155
    :cond_1
    :goto_1
    throw v4

    .line 153
    :catch_3
    move-exception v2

    .line 154
    .restart local v2       #ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method GetInputStreamData()Z
    .locals 6

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mIs:Ljava/io/InputStream;

    .line 246
    .local v0, Input:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 250
    .local v1, bRes:Z
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 252
    .local v3, nSize:I
    invoke-direct {p0, v0}, Lcom/android/mms/ui/GifView$FrameByFrameData;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFileData:[B

    .line 253
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFileData:[B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    const/4 v1, 0x1

    .line 259
    if-eqz v0, :cond_0

    .line 260
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    .end local v3           #nSize:I
    :cond_0
    :goto_0
    return v1

    .line 262
    .restart local v3       #nSize:I
    :catch_0
    move-exception v2

    .line 263
    .local v2, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    .line 265
    goto :goto_0

    .line 255
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #nSize:I
    :catch_1
    move-exception v2

    .line 256
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_2
    const-string v4, "GifView"

    const-string v5, "InputStreamErr"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 262
    :catch_2
    move-exception v2

    .line 263
    const/4 v1, 0x0

    .line 265
    goto :goto_0

    .line 258
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 259
    if-eqz v0, :cond_1

    .line 260
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 264
    :cond_1
    :goto_1
    throw v4

    .line 262
    :catch_3
    move-exception v2

    .line 263
    .restart local v2       #ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public LoadData(I)Z
    .locals 3
    .parameter "nMode"

    .prologue
    .line 123
    iget v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mSrcType:I

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/GifView$FrameByFrameData;->LoadDataFromFile(I)Z

    move-result v0

    .line 131
    .local v0, bRes:Z
    :goto_0
    return v0

    .line 125
    .end local v0           #bRes:Z
    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mSrcType:I

    if-ne v1, v2, :cond_1

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/GifView$FrameByFrameData;->LoadDataFromUri(I)Z

    move-result v0

    .restart local v0       #bRes:Z
    goto :goto_0

    .line 128
    .end local v0           #bRes:Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/GifView$FrameByFrameData;->LoadDataFromInputStream(I)Z

    move-result v0

    .restart local v0       #bRes:Z
    goto :goto_0
.end method

.method public LoadDataFromFile(I)Z
    .locals 8
    .parameter "nMode"

    .prologue
    const/4 v5, 0x1

    .line 223
    invoke-direct {p0}, Lcom/android/mms/ui/GifView$FrameByFrameData;->CreateParser()V

    .line 224
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    .line 225
    iget v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    if-nez v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->Release()V

    .line 227
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 228
    const/4 v4, 0x0

    .line 241
    :goto_0
    return v4

    .line 230
    :cond_0
    iget v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 233
    .local v0, t3:J
    if-ne p1, v5, :cond_1

    .line 234
    iput-boolean v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    .line 239
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 240
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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-boolean v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    goto :goto_0

    .line 236
    .end local v2           #t4:J
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/GifView$FrameByFrameData;->getFrameAllData(Landroid/webkit/GIFImageParser;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    goto :goto_1
.end method

.method public LoadDataFromInputStream(I)Z
    .locals 7
    .parameter "nMode"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mIs:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v2

    .line 296
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-eqz v4, :cond_2

    .line 297
    const-string v2, "GifView"

    const-string v4, "Reload"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 298
    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/GifView$FrameByFrameData;->GetInputStreamData()Z

    move-result v0

    .line 301
    .local v0, bRes:Z
    if-eqz v0, :cond_0

    .line 305
    new-instance v4, Landroid/webkit/GIFImageParser;

    invoke-direct {v4}, Landroid/webkit/GIFImageParser;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 307
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFileData:[B

    invoke-virtual {v4, v5}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 309
    iput-object v6, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFileData:[B

    .line 311
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    .line 312
    iget v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    if-nez v4, :cond_3

    .line 313
    iget-object v3, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v3}, Landroid/webkit/GIFImageParser;->Release()V

    .line 314
    iput-object v6, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    goto :goto_0

    .line 318
    :cond_3
    iget v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 321
    if-ne p1, v3, :cond_5

    .line 322
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    if-ge v1, v2, :cond_4

    .line 323
    iget-object v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4, v1}, Landroid/webkit/GIFImageParser;->frameDurationAtIndex(I)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v2, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    :cond_4
    iput-boolean v3, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    .line 330
    .end local v1           #i:I
    :goto_2
    iget-boolean v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    goto :goto_0

    .line 327
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/GifView$FrameByFrameData;->getFrameAllData(Landroid/webkit/GIFImageParser;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    goto :goto_2
.end method

.method public LoadDataFromUri(I)Z
    .locals 8
    .parameter "nMode"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 164
    iget-object v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-eqz v5, :cond_2

    .line 169
    const-string v3, "GifView"

    const-string v5, "Reload"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 170
    goto :goto_0

    .line 175
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/GifView$FrameByFrameData;->GetFileData(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 176
    .local v0, bRes:Z
    if-eqz v0, :cond_0

    .line 180
    new-instance v5, Landroid/webkit/GIFImageParser;

    invoke-direct {v5}, Landroid/webkit/GIFImageParser;-><init>()V

    iput-object v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    .line 182
    iget-object v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v6, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFileData:[B

    invoke-virtual {v5, v6}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 184
    iput-object v7, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFileData:[B

    .line 186
    iget-object v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v5}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    .line 187
    iget v5, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    if-nez v5, :cond_3

    .line 188
    iget-object v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v4}, Landroid/webkit/GIFImageParser;->Release()V

    .line 189
    iput-object v7, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    goto :goto_0

    .line 193
    :cond_3
    iget v3, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    .line 196
    if-ne p1, v4, :cond_4

    .line 197
    iput-boolean v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    .line 219
    :goto_1
    iget-boolean v3, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    goto :goto_0

    .line 200
    :cond_4
    const-wide/16 v1, 0x0

    .line 212
    .local v1, nTime:J
    iput-boolean v4, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 215
    iget-object v3, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GifView$FrameByFrameData;->getFrameAllData2(Landroid/webkit/GIFImageParser;)Z

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 217
    const-string v3, "GifView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method 2 Time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method decode(I[Landroid/graphics/Bitmap;[I)Z
    .locals 3
    .parameter "nIndex"
    .parameter "bitmapRes"
    .parameter "nDurations"

    .prologue
    const/4 v0, 0x0

    .line 377
    iget-boolean v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mbInit:Z

    if-nez v1, :cond_0

    .line 378
    const-string v1, "GifView"

    const-string v2, "Not Ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return v0

    .line 382
    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 383
    :cond_1
    const-string v1, "GifView"

    const-string v2, "Out of Index"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 389
    iget-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v1}, Landroid/webkit/GIFImageParser;->nativeAllocFrameBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    .line 395
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    iget-object v2, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Landroid/webkit/GIFImageParser;->nativeGetFrameBitmap(ILandroid/graphics/Bitmap;)I

    .line 396
    iget-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v1, p1}, Landroid/webkit/GIFImageParser;->frameDurationAtIndex(I)J

    move-result-wide v1

    long-to-int v1, v1

    aput v1, p3, v0

    .line 397
    iget-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mBitmapCach:Landroid/graphics/Bitmap;

    aput-object v1, p2, v0

    .line 398
    iget-object v1, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mnDurations:[I

    aget v0, p3, v0

    aput v0, v1, p1

    .line 399
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mFrameCount:I

    return v0
.end method

.method getFrameRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/GifView$FrameByFrameData;->mParser:Landroid/webkit/GIFImageParser;

    invoke-virtual {v0, p1}, Landroid/webkit/GIFImageParser;->frameRectAtIndex(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method
