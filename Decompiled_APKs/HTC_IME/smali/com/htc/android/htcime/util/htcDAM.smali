.class public Lcom/htc/android/htcime/util/htcDAM;
.super Ljava/lang/Object;
.source "htcDAM.java"


# static fields
.field public static final DAM_INVALID_ID:Ljava/lang/String; = "Invalid ID:%04x"

.field private static final DAM_LAYOUT:[Ljava/lang/String; = null

.field public static final DAM_LAYOUT_CJ:I = 0x4

.field public static final DAM_LAYOUT_NORTHERN_EUROPE:I = 0x7

.field public static final DAM_LAYOUT_PY:I = 0x3

.field public static final DAM_LAYOUT_RUSSIAN:I = 0x6

.field public static final DAM_LAYOUT_ST:I = 0x5

.field public static final DAM_LAYOUT_WESTERN:I = 0x1

.field public static final DAM_LAYOUT_ZY:I = 0x2

.field private static final DAM_ORIENTATION:[Ljava/lang/String; = null

.field public static final DAM_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final DAM_ORIENTATION_PORTRAIT:I = 0x0

.field protected static final DEBUG_LOG:Z = true

.field protected static final DEF_REF_POINT_COUNT:I = 0x1e

.field public static final INVALID_KEY_INDEX:I = -0x1

.field protected static final STATUS_ERROR:I = 0x1

.field protected static final STATUS_INVALID_KBDID:I = 0x2

.field protected static final STATUS_INVALID_KEY_INDEX:I = 0x4

.field protected static final STATUS_KBD_NOT_MATCH:I = 0x5

.field protected static final STATUS_NONE:I = 0x0

.field protected static final STATUS_NO_KEYS:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "DAM"

.field private static mInstance:Lcom/htc/android/htcime/util/htcDAM;


# instance fields
.field protected NotifyWindowPos_x:I

.field protected NotifyWindowPos_y:I

.field private keyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/util/DAMKey;",
            ">;"
        }
    .end annotation
.end field

.field public lastLogTime:J

.field private mKbdID:I

.field protected mNotify:Landroid/widget/PopupWindow;

.field private m_bisKeyInputUpdated:Z

.field private m_nRefKeyCount:I

.field thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 606
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/util/htcDAM;->mInstance:Lcom/htc/android/htcime/util/htcDAM;

    .line 636
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "PORTRAIT"

    aput-object v1, v0, v2

    const-string v1, "LANDSCAPE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/htcime/util/htcDAM;->DAM_ORIENTATION:[Ljava/lang/String;

    .line 641
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "Western"

    aput-object v1, v0, v3

    const-string v1, "ZhuYin"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "PinYin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CJ"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Stork"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RUSSIAN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Northern Europe"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/util/htcDAM;->DAM_LAYOUT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/htc/android/htcime/util/htcDAM;->m_bisKeyInputUpdated:Z

    .line 39
    iput v2, p0, Lcom/htc/android/htcime/util/htcDAM;->m_nRefKeyCount:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/htcime/util/htcDAM;->lastLogTime:J

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    .line 529
    iput-object v3, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    .line 530
    iput v2, p0, Lcom/htc/android/htcime/util/htcDAM;->NotifyWindowPos_x:I

    .line 531
    iput v2, p0, Lcom/htc/android/htcime/util/htcDAM;->NotifyWindowPos_y:I

    .line 533
    iput-object v3, p0, Lcom/htc/android/htcime/util/htcDAM;->thread:Ljava/lang/Thread;

    .line 45
    iput v2, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    .line 46
    iput-boolean v2, p0, Lcom/htc/android/htcime/util/htcDAM;->m_bisKeyInputUpdated:Z

    .line 47
    return-void
.end method

.method private CopyToSD()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 384
    iget v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    if-nez v9, :cond_0

    .line 410
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v9, "%s/%08x.log"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->getLogPathInSD()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 389
    .local v8, outPath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->getLogPath()Ljava/lang/String;

    move-result-object v6

    .line 390
    .local v6, inPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v5, fOutput:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v4, fInput:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 394
    .local v1, bos:Ljava/io/BufferedOutputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 395
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/16 v9, 0xc00

    new-array v2, v9, [B

    .line 396
    .local v2, buff:[B
    const/4 v7, 0x0

    .line 397
    .local v7, len:I
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    .line 398
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 403
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #buff:[B
    .end local v7           #len:I
    :catch_0
    move-exception v3

    .line 405
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #buff:[B
    .restart local v7       #len:I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 400
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 401
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 406
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #buff:[B
    .end local v7           #len:I
    :catch_1
    move-exception v3

    .line 408
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static Reset(I)V
    .locals 3
    .parameter "lang"

    .prologue
    .line 521
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/htc/android/htcime/util/htcDAM;->getLogPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, logFile:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/android/htcime/util/htcDAM;->deleteDirectory(Ljava/io/File;)Z

    .line 524
    new-instance v0, Ljava/io/File;

    .end local v0           #logFile:Ljava/io/File;
    invoke-static {}, Lcom/htc/android/htcime/util/htcDAM;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .restart local v0       #logFile:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/android/htcime/util/htcDAM;->deleteDirectory(Ljava/io/File;)Z

    .line 527
    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 507
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 510
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/htc/android/htcime/util/htcDAM;->deleteDirectory(Ljava/io/File;)Z

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 515
    const/4 v4, 0x1

    .line 517
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private doWriteLog(Ljava/nio/channels/FileChannel;)V
    .locals 9
    .parameter "outChannel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x8000

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 363
    .local v8, mbbuffer:Ljava/nio/MappedByteBuffer;
    iget v0, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    invoke-virtual {v8, v0}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 365
    const-string v0, "DAM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[writeLog] Keyboard ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/nio/MappedByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 372
    iget v0, p0, Lcom/htc/android/htcime/util/htcDAM;->m_nRefKeyCount:I

    int-to-short v0, v0

    invoke-virtual {v8, v0}, Ljava/nio/MappedByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 377
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/DAMKey;

    .line 379
    .local v7, key:Lcom/htc/android/htcime/util/DAMKey;
    iget v0, p0, Lcom/htc/android/htcime/util/htcDAM;->m_nRefKeyCount:I

    invoke-virtual {v7, v8, v0}, Lcom/htc/android/htcime/util/DAMKey;->writeLog(Ljava/nio/MappedByteBuffer;I)Z

    .line 377
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 381
    .end local v7           #key:Lcom/htc/android/htcime/util/DAMKey;
    :cond_0
    return-void
.end method

.method private getBmpPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->getLogPathInSD()Ljava/lang/String;

    move-result-object v1

    const-string v2, "background.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBmpPath(I)Ljava/lang/String;
    .locals 4
    .parameter "lang"

    .prologue
    .line 485
    const-string v0, "%s/%04x/background.jpg"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/android/htcime/util/htcDAM;->getSDCardPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDAMId(II)I
    .locals 1
    .parameter "orientation"
    .parameter "keyboardLayout"

    .prologue
    .line 489
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    return v0
.end method

.method public static getDAMName(I)Ljava/lang/String;
    .locals 6
    .parameter "DAMId"

    .prologue
    .line 493
    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v1, v2, 0x8

    .line 494
    .local v1, orientation:I
    and-int/lit16 v0, p0, 0xff

    .line 495
    .local v0, layout:I
    sget-object v2, Lcom/htc/android/htcime/util/htcDAM;->DAM_ORIENTATION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/htc/android/htcime/util/htcDAM;->DAM_LAYOUT:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/android/htcime/util/htcDAM;->DAM_ORIENTATION:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/android/htcime/util/htcDAM;->DAM_LAYOUT:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Invalid ID:%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstance()Lcom/htc/android/htcime/util/htcDAM;
    .locals 1

    .prologue
    .line 442
    sget-object v0, Lcom/htc/android/htcime/util/htcDAM;->mInstance:Lcom/htc/android/htcime/util/htcDAM;

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/htc/android/htcime/util/htcDAM;->mInstance:Lcom/htc/android/htcime/util/htcDAM;

    .line 446
    :goto_0
    return-object v0

    .line 445
    :cond_0
    new-instance v0, Lcom/htc/android/htcime/util/htcDAM;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/htcDAM;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/htcDAM;->mInstance:Lcom/htc/android/htcime/util/htcDAM;

    .line 446
    sget-object v0, Lcom/htc/android/htcime/util/htcDAM;->mInstance:Lcom/htc/android/htcime/util/htcDAM;

    goto :goto_0
.end method

.method private getLogPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    const-string v0, "/data/data/com.htc.android.htcime/%04x_dam.log"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogPath(I)Ljava/lang/String;
    .locals 4
    .parameter "lang"

    .prologue
    .line 479
    const-string v0, "/data/data/com.htc.android.htcime/%04x_dam.log"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLogPathInSD()Ljava/lang/String;
    .locals 6

    .prologue
    .line 257
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/htc/android/htcime/util/htcDAM;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v0, imeDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getOrientation(I)I
    .locals 3
    .parameter "DAMId"

    .prologue
    const/4 v1, 0x1

    .line 502
    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v0, v2, 0x8

    .line 503
    .local v0, orientation:I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 463
    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getSupportedStorages()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move v1, v2

    .line 464
    .local v1, supportPhoneStorage:Z
    :goto_0
    const/4 v0, 0x0

    .line 465
    .local v0, path:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 466
    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    const-string v4, "DAM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStorageDirectory string = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 469
    const-string v4, "DAM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStorageDirectory = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "HTC_IME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DAM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%04x"

    new-array v2, v2, [Ljava/lang/Object;

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0           #path:Ljava/lang/String;
    .end local v1           #supportPhoneStorage:Z
    :cond_0
    move v1, v3

    .line 463
    goto/16 :goto_0

    .line 471
    .restart local v0       #path:Ljava/lang/String;
    .restart local v1       #supportPhoneStorage:Z
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 472
    const-string v4, "DAM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStorageDirectory = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static declared-synchronized hasStorage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    const-class v3, Lcom/htc/android/htcime/util/htcDAM;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getSupportedStorages()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 451
    .local v1, supportPhoneStorage:Z
    :goto_0
    const-string v0, ""

    .line 452
    .local v0, state:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 453
    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getPhoneStorageState()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 459
    :goto_1
    monitor-exit v3

    return-object v0

    .line 450
    .end local v0           #state:Ljava/lang/String;
    .end local v1           #supportPhoneStorage:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 456
    .restart local v0       #state:Ljava/lang/String;
    .restart local v1       #supportPhoneStorage:Z
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 450
    .end local v0           #state:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized hasStorage(Z)Z
    .locals 3
    .parameter "supportPhoneStorage"

    .prologue
    .line 246
    const-class v2, Lcom/htc/android/htcime/util/htcDAM;

    monitor-enter v2

    :try_start_0
    const-string v0, ""

    .line 247
    .local v0, state:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 248
    invoke-static {}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 250
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 246
    .end local v0           #state:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readLog()I
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/htcDAM;->readLog(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private writeBackground(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "bmp"

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->getBmpPath()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, LogFile:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    :goto_0
    return-void

    .line 345
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    .local v1, bytes:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x46

    invoke-virtual {p1, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 347
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 350
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 351
    .local v5, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 352
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v5           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 355
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private writeLog()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 413
    iget v3, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    if-nez v3, :cond_0

    .line 437
    :goto_0
    return v6

    .line 418
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->getLogPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rwd"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v0, LogFile:Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 421
    .local v2, outChannel:Ljava/nio/channels/FileChannel;
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/util/htcDAM;->doWriteLog(Ljava/nio/channels/FileChannel;)V

    .line 423
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 424
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 436
    .end local v0           #LogFile:Ljava/io/RandomAccessFile;
    .end local v2           #outChannel:Ljava/nio/channels/FileChannel;
    :goto_1
    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->CopyToSD()V

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v3, "DAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****************FileNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 428
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 429
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****************IllegalArgumentException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 430
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 431
    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "DAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****************SecurityException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 432
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v1

    .line 433
    .local v1, e:Ljava/io/IOException;
    const-string v3, "DAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****************IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public LoadKeyboard(I)I
    .locals 2
    .parameter "kbd_id"

    .prologue
    const/4 v0, 0x0

    .line 50
    if-nez p1, :cond_1

    .line 51
    const/4 v0, 0x2

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    iget v1, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    if-eq p1, v1, :cond_0

    .line 57
    iput p1, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    .line 58
    iput-boolean v0, p0, Lcom/htc/android/htcime/util/htcDAM;->m_bisKeyInputUpdated:Z

    .line 60
    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->readLog()I

    move-result v0

    goto :goto_0
.end method

.method public LoadKeyboard(I[Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I
    .locals 6
    .parameter "kbd_id"
    .parameter "keys"

    .prologue
    const/4 v2, 0x0

    .line 65
    if-nez p1, :cond_1

    .line 66
    const/4 v2, 0x2

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 69
    :cond_1
    array-length v3, p2

    if-nez v3, :cond_2

    .line 70
    const/4 v2, 0x3

    goto :goto_0

    .line 73
    :cond_2
    iget v3, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    if-eq p1, v3, :cond_0

    .line 77
    iput p1, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    .line 78
    iput-boolean v2, p0, Lcom/htc/android/htcime/util/htcDAM;->m_bisKeyInputUpdated:Z

    .line 81
    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->readLog()I

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    iput p1, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    .line 84
    const/16 v3, 0x1e

    iput v3, p0, Lcom/htc/android/htcime/util/htcDAM;->m_nRefKeyCount:I

    .line 87
    const-string v3, "DAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LoadKeyboard] (mKbdID,mKbdKeyCount)=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v3, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 92
    const-string v3, "DAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKbdId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 97
    new-instance v1, Lcom/htc/android/htcime/util/DAMKey;

    aget-object v3, p2, v0

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    aget-object v4, p2, v0

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aget-object v4, p2, v0

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    aget-object v5, p2, v0

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v1, v0, v3, v4}, Lcom/htc/android/htcime/util/DAMKey;-><init>(III)V

    .line 99
    .local v1, key:Lcom/htc/android/htcime/util/DAMKey;
    const-string v3, "DAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v1           #key:Lcom/htc/android/htcime/util/DAMKey;
    :cond_3
    const-string v3, "DAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LoadKeyboard] keyList count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 106
    .end local v0           #i:I
    :cond_4
    array-length v3, p2

    iget-object v4, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 107
    const-string v2, "DAM"

    const-string v3, "Keys Not match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/htcDAM;->ReleaseKeyboard(Landroid/graphics/Bitmap;)I

    .line 109
    const/4 v2, 0x5

    goto/16 :goto_0
.end method

.method public NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V
    .locals 13
    .parameter "context"
    .parameter "parent"
    .parameter "oriKeyCode"
    .parameter "fixedKeyCode"

    .prologue
    .line 537
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->thread:Ljava/lang/Thread;

    if-eqz v9, :cond_0

    .line 538
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->thread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->stop()V

    .line 540
    :cond_0
    const-string v9, "layout_inflater"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 542
    .local v4, mLayoutInflater:Landroid/view/LayoutInflater;
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    if-nez v9, :cond_1

    .line 543
    new-instance v9, Landroid/widget/PopupWindow;

    invoke-direct {v9, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    .line 545
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    if-nez v9, :cond_1

    .line 604
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 550
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->dismiss()V

    .line 552
    :cond_2
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 554
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 556
    const v9, 0x7f03000c

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 560
    .local v1, frame:Landroid/widget/LinearLayout;
    const v9, 0x7f0e0010

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 561
    .local v7, tv:Landroid/widget/TextView;
    const-string v6, ""

    .line 563
    .local v6, notifyStr:Ljava/lang/String;
    :try_start_0
    const-string v9, "%c->%c"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 567
    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 572
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    .line 574
    .local v5, margin:I
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v9, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 576
    iget v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    mul-int/lit8 v10, v5, 0x2

    add-int v8, v9, v10

    .line 577
    .local v8, width:I
    iget v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    mul-int/lit8 v10, v5, 0x2

    add-int v2, v9, v10

    .line 579
    .local v2, height:I
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v9, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 580
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v9, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 582
    neg-int v9, v2

    iput v9, p0, Lcom/htc/android/htcime/util/htcDAM;->NotifyWindowPos_y:I

    .line 583
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/android/htcime/util/htcDAM;->NotifyWindowPos_x:I

    .line 584
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/android/htcime/util/htcDAM;->NotifyWindowPos_x:I

    iget v12, p0, Lcom/htc/android/htcime/util/htcDAM;->NotifyWindowPos_y:I

    invoke-virtual {v9, p2, v10, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 586
    new-instance v9, Lcom/htc/android/htcime/util/htcDAM$1;

    invoke-direct {v9, p0}, Lcom/htc/android/htcime/util/htcDAM$1;-><init>(Lcom/htc/android/htcime/util/htcDAM;)V

    iput-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->thread:Ljava/lang/Thread;

    .line 603
    iget-object v9, p0, Lcom/htc/android/htcime/util/htcDAM;->thread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 564
    .end local v2           #height:I
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #margin:I
    .end local v8           #width:I
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "not a character key"

    goto :goto_1
.end method

.method public ProcessKeyInput(III)I
    .locals 3
    .parameter "index"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 170
    const/4 v0, -0x1

    .line 172
    .local v0, closest_key_index:I
    iget v2, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    if-nez v2, :cond_0

    move v1, v0

    .line 183
    .end local v0           #closest_key_index:I
    .local v1, closest_key_index:I
    :goto_0
    return v1

    .line 176
    .end local v1           #closest_key_index:I
    .restart local v0       #closest_key_index:I
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    move v1, v0

    .line 177
    .end local v0           #closest_key_index:I
    .restart local v1       #closest_key_index:I
    goto :goto_0

    .line 180
    .end local v1           #closest_key_index:I
    .restart local v0       #closest_key_index:I
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/htcime/util/htcDAM;->getClosestKeyIndex(II)I

    move-result v0

    .line 181
    iget-object v2, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/DAMKey;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/htcime/util/DAMKey;->AddTrake(II)I

    .line 182
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/htcime/util/htcDAM;->m_bisKeyInputUpdated:Z

    move v1, v0

    .line 183
    .end local v0           #closest_key_index:I
    .restart local v1       #closest_key_index:I
    goto :goto_0
.end method

.method public ReleaseKeyboard(Landroid/graphics/Bitmap;)I
    .locals 4
    .parameter "bmp"

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v1, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    .line 122
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    if-nez v1, :cond_1

    .line 123
    const/4 v1, 0x2

    .line 146
    :goto_0
    return v1

    .line 127
    :cond_1
    const-string v1, "DAM"

    const-string v3, "[ReleaseKeyboard] START.........."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz p1, :cond_2

    .line 130
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/htcDAM;->writeBackground(Landroid/graphics/Bitmap;)V

    .line 133
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/util/htcDAM;->m_bisKeyInputUpdated:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->writeLog()I

    .line 137
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/util/DAMKey;

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/DAMKey;->release()V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 141
    iput v2, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    .line 144
    iput-boolean v2, p0, Lcom/htc/android/htcime/util/htcDAM;->m_bisKeyInputUpdated:Z

    move v1, v2

    .line 146
    goto :goto_0
.end method

.method public getAvgDiff()F
    .locals 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 201
    const/4 v2, 0x0

    .line 207
    :goto_0
    return v2

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, avgDiff:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/DAMKey;

    iget v2, v2, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    add-float/2addr v0, v2

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    goto :goto_0
.end method

.method public getAvgDiff(I)F
    .locals 1
    .parameter "keyIndex"

    .prologue
    .line 194
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/DAMKey;

    iget v0, v0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClosestKeyIndex(II)I
    .locals 6
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 150
    const/4 v1, -0x1

    .line 151
    .local v1, closest_key_index:I
    const/4 v0, 0x0

    .line 153
    .local v0, closest_key_distance:I
    iget-object v4, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/util/DAMKey;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/htcime/util/DAMKey;->getInstance(II)I

    move-result v0

    .line 154
    const/4 v1, 0x0

    .line 156
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 157
    iget-object v4, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/util/DAMKey;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/htcime/util/DAMKey;->getInstance(II)I

    move-result v2

    .line 159
    .local v2, distance:I
    if-ge v2, v0, :cond_0

    .line 160
    move v0, v2

    .line 161
    move v1, v3

    .line 156
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v2           #distance:I
    :cond_1
    return v1
.end method

.method public getTotalKeyCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTrackGraphic()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/htcDAM;->readBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 227
    const/4 v1, 0x0

    .line 234
    :cond_0
    return-object v1

    .line 229
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 230
    .local v1, bmpBackground:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 232
    iget-object v4, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/util/DAMKey;

    invoke-virtual {v4, v2}, Lcom/htc/android/htcime/util/DAMKey;->drawTrack(Landroid/graphics/Canvas;)V

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public readBackground()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 330
    iget v1, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    if-nez v1, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    .line 333
    :cond_0
    const/4 v0, 0x0

    .line 334
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;->getBmpPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    goto :goto_0
.end method

.method public readLog(Ljava/lang/String;)I
    .locals 10
    .parameter "fPath"

    .prologue
    .line 280
    const/4 v6, 0x0

    .line 282
    .local v6, status:I
    const/4 v5, 0x0

    .line 285
    .local v5, nKdbKeyCount:I
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v0, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v0, LogFile:Ljava/io/RandomAccessFile;
    iget-object v7, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 288
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    .line 289
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    .line 290
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/htc/android/htcime/util/htcDAM;->lastLogTime:J

    .line 291
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/util/htcDAM;->m_nRefKeyCount:I

    .line 294
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readLog] Keyboard ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/htcDAM;->mKbdID:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readLog] Keyboard Count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 299
    .local v1, calendar:Ljava/util/Calendar;
    iget-wide v7, p0, Lcom/htc/android/htcime/util/htcDAM;->lastLogTime:J

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 300
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readLog] Date="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readLog] Ref. points Count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/htcDAM;->m_nRefKeyCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 305
    new-instance v4, Lcom/htc/android/htcime/util/DAMKey;

    invoke-direct {v4, v3}, Lcom/htc/android/htcime/util/DAMKey;-><init>(I)V

    .line 306
    .local v4, key:Lcom/htc/android/htcime/util/DAMKey;
    iget v7, p0, Lcom/htc/android/htcime/util/htcDAM;->m_nRefKeyCount:I

    invoke-virtual {v4, v0, v7}, Lcom/htc/android/htcime/util/DAMKey;->readLog(Ljava/io/RandomAccessFile;I)Z

    .line 307
    iget-object v7, p0, Lcom/htc/android/htcime/util/htcDAM;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    .end local v4           #key:Lcom/htc/android/htcime/util/DAMKey;
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 326
    .end local v0           #LogFile:Ljava/io/RandomAccessFile;
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v3           #i:I
    :goto_1
    return v6

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "****************FileNotFoundException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v6, 0x1

    .line 324
    goto :goto_1

    .line 315
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 316
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "****************IllegalArgumentException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v6, 0x1

    .line 324
    goto :goto_1

    .line 318
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 319
    .local v2, e:Ljava/lang/SecurityException;
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "****************SecurityException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v6, 0x1

    .line 324
    goto :goto_1

    .line 321
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 322
    .local v2, e:Ljava/io/IOException;
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "****************IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v6, 0x1

    goto :goto_1
.end method
