.class Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mYear:I

.field final synthetic this$0:Lcom/htc/android/mail/MediaInfo;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MediaInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->this$0:Lcom/htc/android/mail/MediaInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MediaInfo;Lcom/htc/android/mail/MediaInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;-><init>(Lcom/htc/android/mail/MediaInfo;)V

    return-void
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 510
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 511
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 512
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 398
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 411
    .end local p3
    :goto_0
    return p3

    .line 400
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 402
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 404
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 405
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 406
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 407
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 408
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 411
    goto :goto_0
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 470
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 472
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v1, "title"

    iget-object v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v1, "date_modified"

    iget-wide v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mLastModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    const-string v1, "_size"

    iget-wide v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 476
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Lcom/htc/android/mail/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 479
    const-string v2, "artist"

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v2, "album"

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "duration"

    iget v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    :cond_0
    :goto_2
    return-object v0

    .line 479
    :cond_1
    const-string v1, "<unknown>"

    goto :goto_0

    .line 480
    :cond_2
    const-string v1, "<unknown>"

    goto :goto_1

    .line 483
    :cond_3
    iget v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Lcom/htc/android/mail/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    iget v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Lcom/htc/android/mail/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    const-string v2, "artist"

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v2, "album"

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mYear:I

    if-eqz v1, :cond_4

    .line 491
    const-string v1, "year"

    iget v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mYear:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 493
    :cond_4
    const-string v1, "track"

    iget v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTrack:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    const-string v1, "duration"

    iget v2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 487
    :cond_5
    const-string v1, "<unknown>"

    goto :goto_3

    .line 488
    :cond_6
    const-string v1, "<unknown>"

    goto :goto_4
.end method


# virtual methods
.method public addNoMediaFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 299
    return-void
.end method

.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
    .locals 13
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 301
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 303
    if-eqz p2, :cond_0

    .line 304
    invoke-static {p2}, Lcom/htc/android/mail/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    .line 305
    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    if-eqz v3, :cond_0

    .line 306
    iput-object p2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 309
    :cond_0
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileSize:J

    .line 312
    iget-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 313
    invoke-static {p1}, Lcom/htc/android/mail/MediaFile;->getFileType(Ljava/lang/String;)Lcom/htc/android/mail/MediaFile$MediaFileType;

    move-result-object v12

    .line 314
    .local v12, mediaFileType:Lcom/htc/android/mail/MediaFile$MediaFileType;
    if-eqz v12, :cond_1

    .line 315
    iget v3, v12, Lcom/htc/android/mail/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    .line 316
    iget-object v3, v12, Lcom/htc/android/mail/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 320
    .end local v12           #mediaFileType:Lcom/htc/android/mail/MediaFile$MediaFileType;
    :cond_1
    move-object v11, p1

    .line 321
    .local v11, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->this$0:Lcom/htc/android/mail/MediaInfo;

    #getter for: Lcom/htc/android/mail/MediaInfo;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Lcom/htc/android/mail/MediaInfo;->access$100(Lcom/htc/android/mail/MediaInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 324
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->this$0:Lcom/htc/android/mail/MediaInfo;

    #getter for: Lcom/htc/android/mail/MediaInfo;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/android/mail/MediaInfo;->access$200(Lcom/htc/android/mail/MediaInfo;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;

    .line 325
    .local v2, entry:Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
    if-nez v2, :cond_3

    .line 326
    new-instance v2, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;

    .end local v2           #entry:Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    .line 327
    .restart local v2       #entry:Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
    iget-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->this$0:Lcom/htc/android/mail/MediaInfo;

    #getter for: Lcom/htc/android/mail/MediaInfo;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/android/mail/MediaInfo;->access$200(Lcom/htc/android/mail/MediaInfo;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mSeenInFileSystem:Z

    .line 332
    iget-wide v3, v2, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 333
    .local v9, delta:J
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_4

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_5

    .line 334
    :cond_4
    move-wide/from16 v0, p3

    iput-wide v0, v2, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mLastModified:J

    .line 335
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mLastModifiedChanged:Z

    .line 339
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 340
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 341
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 342
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 343
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 344
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 345
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTrack:I

    .line 346
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mYear:I

    .line 347
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mDuration:I

    .line 348
    iput-object p1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 349
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mLastModified:J

    .line 351
    return-object v2
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    .locals 5
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"

    .prologue
    .line 368
    const/4 v2, 0x0

    .line 370
    .local v2, result:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/htc/android/mail/MediaInfo$FileCacheEntry;

    move-result-object v1

    .line 372
    .local v1, entry:Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_0

    if-eqz p7, :cond_3

    .line 373
    :cond_0
    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    const/16 v4, 0x17

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->this$0:Lcom/htc/android/mail/MediaInfo;

    #calls: Lcom/htc/android/mail/MediaInfo;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, p1, p2, p0}, Lcom/htc/android/mail/MediaInfo;->access$300(Lcom/htc/android/mail/MediaInfo;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 388
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->endFile(Lcom/htc/android/mail/MediaInfo$FileCacheEntry;)Landroid/net/Uri;

    move-result-object v2

    .line 393
    .end local v1           #entry:Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
    :cond_3
    :goto_1
    return-object v2

    .line 384
    .restart local v1       #entry:Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
    :cond_4
    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/htc/android/mail/MediaFile;->isImageFileType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 390
    .end local v1           #entry:Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MediaInfo"

    const-string v4, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public endFile(Lcom/htc/android/mail/MediaInfo$FileCacheEntry;)Landroid/net/Uri;
    .locals 1
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 506
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 415
    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 456
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 418
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 419
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 420
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 421
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 422
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 423
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 424
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 425
    :cond_a
    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 427
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 428
    const/4 v1, -0x1

    .line 429
    .local v1, genreCode:I
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 430
    .local v0, ch:C
    const/16 v3, 0x28

    if-ne v0, v3, :cond_e

    .line 431
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3, v5}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 435
    :cond_c
    :goto_1
    if-ltz v1, :cond_d

    invoke-static {}, Lcom/htc/android/mail/MediaInfo;->access$400()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 436
    invoke-static {}, Lcom/htc/android/mail/MediaInfo;->access$400()[Ljava/lang/String;

    move-result-object v3

    aget-object p2, v3, v1

    .line 439
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_d
    iput-object p2, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 432
    .restart local v0       #ch:C
    .restart local v1       #genreCode:I
    :cond_e
    const/16 v3, 0x30

    if-lt v0, v3, :cond_c

    const/16 v3, 0x39

    if-gt v0, v3, :cond_c

    .line 433
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    goto :goto_1

    .line 440
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_f
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 441
    :cond_10
    invoke-direct {p0, p2, v4, v4}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 442
    :cond_11
    const-string v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 445
    :cond_12
    invoke-direct {p0, p2, v4, v4}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 446
    .local v2, num:I
    iget v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v2

    iput v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 447
    .end local v2           #num:I
    :cond_13
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 451
    :cond_14
    invoke-direct {p0, p2, v4, v4}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 452
    .restart local v2       #num:I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 453
    .end local v2           #num:I
    :cond_15
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    invoke-direct {p0, p2, v4, v4}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 531
    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 532
    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 533
    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 534
    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 535
    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 536
    iput v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mTrack:I

    .line 537
    iput v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mYear:I

    .line 538
    iput v1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mDuration:I

    .line 539
    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 540
    iput-object v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public scanFile(Ljava/lang/String;JJ)V
    .locals 8
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 360
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;

    .line 361
    return-void
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 8
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 356
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;

    .line 357
    return-void
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 364
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;

    .line 365
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 460
    invoke-static {p1}, Lcom/htc/android/mail/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MediaInfo$MyMediaScannerClient;->mFileType:I

    .line 461
    return-void
.end method
