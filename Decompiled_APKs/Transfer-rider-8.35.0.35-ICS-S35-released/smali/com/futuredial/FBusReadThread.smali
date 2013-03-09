.class public Lcom/futuredial/FBusReadThread;
.super Lcom/futuredial/ReadThread;
.source "FBusReadThread.java"


# static fields
.field public static final CALCU_TOKEN:I = 0x100

.field public static final LONG_CALCU_TOKEN:J = 0x100L

.field public static fbusConfig:Lcom/futuredial/fbus/FBusConfig;


# instance fields
.field public final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {v0}, Lcom/futuredial/fbus/FBusConfig;-><init>()V

    sput-object v0, Lcom/futuredial/FBusReadThread;->fbusConfig:Lcom/futuredial/fbus/FBusConfig;

    return-void
.end method

.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 1
    .parameter "tParam"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 17
    const-string v0, "FBusReadThread"

    iput-object v0, p0, Lcom/futuredial/FBusReadThread;->LOGTAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private ExitFbusMode()I
    .locals 6

    .prologue
    .line 652
    const/4 v2, 0x0

    .line 654
    .local v2, iRet:I
    new-instance v3, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v3}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 655
    .local v3, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/16 v4, 0x10

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 657
    .local v0, cmd_Exit01:[B
    :try_start_0
    iget-object v4, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v5, 0x4e20

    invoke-virtual {v4, v0, v5}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    .line 658
    iget-object v4, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v5, 0x4e20

    invoke-virtual {v4, v3, v5}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return v2

    .line 659
    :catch_0
    move-exception v1

    .line 661
    .local v1, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v1}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    goto :goto_0

    .line 655
    nop

    :array_0
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x3t
        0x0t
        0xat
        0x0t
        0x2t
        0x1t
        0x17t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private GetCalEntryID(Ljava/util/ArrayList;)I
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 369
    .local p1, arListEventID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v10, "FBusReadThread"

    const-string v11, "enter GetCalEntryID"

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v7, 0x1

    .line 373
    .local v7, iRet:I
    new-instance v9, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v9}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 376
    .local v9, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 377
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 381
    .local v8, lEventID:Ljava/lang/Long;
    :cond_0
    sget v10, Lcom/futuredial/FBusReadThread;->CancelFlag:I

    if-nez v10, :cond_1

    .line 383
    const/4 v10, 0x4

    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 384
    new-instance v10, Lcom/futuredial/CancelException;

    invoke-direct {v10}, Lcom/futuredial/CancelException;-><init>()V

    throw v10

    .line 387
    :cond_1
    const/16 v10, 0x11

    new-array v1, v10, [B

    fill-array-data v1, :array_0

    .line 388
    .local v1, cmdGetEventID:[B
    move-object/from16 v0, p0

    iget v10, v0, Lcom/futuredial/FBusReadThread;->contentType:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_2

    .line 390
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v1, v10

    .line 392
    :cond_2
    const/16 v10, 0xc

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/32 v13, 0x1000000

    div-long/2addr v11, v13

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 393
    const/16 v10, 0xd

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/32 v13, 0x10000

    div-long/2addr v11, v13

    const-wide/16 v13, 0x100

    rem-long/2addr v11, v13

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 394
    const/16 v10, 0xe

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x100

    div-long/2addr v11, v13

    const-wide/16 v13, 0x100

    rem-long/2addr v11, v13

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 395
    const/16 v10, 0xf

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x100

    rem-long/2addr v11, v13

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 397
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v11, 0x4e20

    invoke-virtual {v10, v1, v11}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v7

    if-eqz v7, :cond_4

    .line 399
    const/16 v10, 0x66

    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 400
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_3
    :goto_0
    const-string v10, "FBusReadThread"

    const-string v11, "exit GetCalEntryID"

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return v7

    .line 403
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v11, 0x4e20

    invoke-virtual {v10, v9, v11}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v7

    if-eqz v7, :cond_5

    .line 405
    const/16 v10, 0x65

    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 406
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V
    :try_end_1
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v2

    .line 411
    .local v2, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v2}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 412
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 413
    const/4 v7, 0x1

    .line 414
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    goto :goto_0

    .line 418
    .end local v2           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_5
    const/16 v5, 0xa

    .line 420
    .local v5, iIndex:I
    iget-object v10, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v10, v10, v5

    add-int/lit16 v10, v10, 0x100

    rem-int/lit16 v4, v10, 0x100

    .line 421
    .local v4, iEventCount:I
    if-lez v4, :cond_3

    .line 423
    add-int/lit8 v5, v5, 0x6

    .line 424
    const/4 v3, 0x0

    .local v3, i:I
    move v6, v5

    .end local v5           #iIndex:I
    .local v6, iIndex:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 426
    iget-object v10, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6           #iIndex:I
    .restart local v5       #iIndex:I
    aget-byte v10, v10, v6

    int-to-long v10, v10

    const-wide/16 v12, 0x100

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x100

    rem-long/2addr v10, v12

    const-wide/32 v12, 0x1000000

    mul-long/2addr v10, v12

    iget-object v12, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #iIndex:I
    .restart local v6       #iIndex:I
    aget-byte v12, v12, v5

    int-to-long v12, v12

    const-wide/16 v14, 0x100

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x100

    rem-long/2addr v12, v14

    const-wide/32 v14, 0x10000

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    iget-object v12, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6           #iIndex:I
    .restart local v5       #iIndex:I
    aget-byte v12, v12, v6

    int-to-long v12, v12

    const-wide/16 v14, 0x100

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x100

    rem-long/2addr v12, v14

    const-wide/16 v14, 0x100

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    iget-object v12, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #iIndex:I
    .restart local v6       #iIndex:I
    aget-byte v12, v12, v5

    int-to-long v12, v12

    const-wide/16 v14, 0x100

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x100

    rem-long/2addr v12, v14

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 430
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 387
    nop

    :array_0
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x13t
        0x0t
        0xbt
        0x0t
        0x2t
        0x1t
        0x9et
        0xfft
        0xfft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private GetSMSID(ILjava/util/ArrayList;)I
    .locals 13
    .parameter "iBoxID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, arSMSID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v12, 0xff00

    const/4 v11, 0x1

    .line 557
    const/4 v4, 0x0

    .line 558
    .local v4, iRet:I
    new-instance v8, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v8}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 560
    .local v8, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/16 v9, 0x10

    new-array v0, v9, [B

    fill-array-data v0, :array_0

    .line 561
    .local v0, cmd_GetSMSID:[B
    const/16 v9, 0xb

    int-to-byte v10, p1

    aput-byte v10, v0, v9

    .line 563
    :try_start_0
    iget-object v9, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v10, 0x4e20

    invoke-virtual {v9, v0, v10}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_0

    .line 565
    const/16 v9, 0x66

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 566
    const/4 v9, 0x1

    invoke-virtual {p0, v4, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v5, v4

    .line 604
    .end local v4           #iRet:I
    .local v5, iRet:I
    :goto_0
    return v5

    .line 569
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_0
    iget-object v9, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v10, 0x4e20

    invoke-virtual {v9, v8, v10}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 571
    const/16 v9, 0x65

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 572
    const/4 v9, 0x1

    invoke-virtual {p0, v4, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .line 573
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 575
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :catch_0
    move-exception v1

    .line 577
    .local v1, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v1}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 578
    iput v11, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 579
    const/4 v4, 0x1

    .line 580
    invoke-virtual {p0, v4, v11}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v5, v4

    .line 581
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 583
    .end local v1           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_1
    iget-object v9, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v9, v9

    const/16 v10, 0xe

    if-ge v9, v10, :cond_2

    .line 585
    iput v11, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 586
    const/4 v4, 0x1

    .line 587
    invoke-virtual {p0, v4, v11}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v5, v4

    .line 588
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 591
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 593
    iget-object v9, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v10, 0xc

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v12

    iget-object v10, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v11, 0xd

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    or-int v6, v9, v10

    .line 594
    .local v6, iSMSCount:I
    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v3, v9, 0xe

    .line 595
    .local v3, iDataLen:I
    iget-object v9, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v9, v9

    if-lt v9, v3, :cond_3

    .line 597
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_3

    .line 599
    iget-object v9, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0xe

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v12

    iget-object v10, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    mul-int/lit8 v11, v2, 0x2

    add-int/lit8 v11, v11, 0xf

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 600
    .local v7, iSMSID:Ljava/lang/Integer;
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v7           #iSMSID:Ljava/lang/Integer;
    :cond_3
    move v5, v4

    .line 604
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 560
    nop

    :array_0
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x14t
        0x0t
        0xat
        0x0t
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xft
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private InitFbusMode()I
    .locals 11

    .prologue
    const/16 v9, 0xc

    const/4 v10, 0x1

    .line 448
    const/4 v5, 0x0

    .line 449
    .local v5, iRet:I
    new-instance v7, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v7}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 451
    .local v7, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/4 v8, 0x7

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    .line 452
    .local v0, cmd_Init01:[B
    new-array v1, v9, [B

    fill-array-data v1, :array_1

    .line 453
    .local v1, cmd_Init02:[B
    new-array v2, v9, [B

    fill-array-data v2, :array_2

    .line 454
    .local v2, cmd_Init03:[B
    new-array v3, v9, [B

    fill-array-data v3, :array_3

    .line 460
    .local v3, cmd_Init04:[B
    :try_start_0
    iget-object v8, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v9, 0x4e20

    invoke-virtual {v8, v0, v9}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    const/16 v8, 0x66

    iput v8, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 463
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v6, v5

    .line 552
    .end local v5           #iRet:I
    .local v6, iRet:I
    :goto_0
    return v6

    .line 466
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_0
    iget-object v8, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v9, 0x4e20

    invoke-virtual {v8, v7, v9}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 468
    const/16 v8, 0x65

    iput v8, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 469
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v6, v5

    .line 470
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 473
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_1
    iget-object v8, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v9, 0x4e20

    invoke-virtual {v8, v1, v9}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v5

    if-eqz v5, :cond_2

    .line 475
    const/16 v8, 0x66

    iput v8, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 476
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v6, v5

    .line 477
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 479
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_2
    iget-object v8, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v9, 0x4e20

    invoke-virtual {v8, v7, v9}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 481
    const/16 v8, 0x65

    iput v8, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 482
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v6, v5

    .line 483
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 486
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_3
    iget-object v8, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v9, 0x4e20

    invoke-virtual {v8, v2, v9}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v5

    if-eqz v5, :cond_4

    .line 488
    const/16 v8, 0x66

    iput v8, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 489
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v6, v5

    .line 490
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 492
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_4
    iget-object v8, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v9, 0x4e20

    invoke-virtual {v8, v7, v9}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 494
    const/16 v8, 0x65

    iput v8, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 495
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v6, v5

    .line 496
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 499
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_5
    iget v8, p0, Lcom/futuredial/FBusReadThread;->contentType:I

    if-eq v8, v10, :cond_6

    iget v8, p0, Lcom/futuredial/FBusReadThread;->contentType:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_7

    .line 501
    :cond_6
    iget-object v8, v7, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v8}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 505
    :cond_7
    iget-object v8, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v9, 0x4e20

    invoke-virtual {v8, v3, v9}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v5

    if-eqz v5, :cond_8

    .line 507
    const/16 v8, 0x66

    iput v8, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 508
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v6, v5

    .line 509
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto/16 :goto_0

    .line 511
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_8
    iget-object v8, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v9, 0x4e20

    invoke-virtual {v8, v7, v9}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v5

    if-eqz v5, :cond_9

    .line 513
    const/16 v8, 0x65

    iput v8, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 514
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v5

    .line 515
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto/16 :goto_0

    .line 543
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :catch_0
    move-exception v4

    .line 545
    .local v4, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v4}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 546
    iput v10, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 547
    const/4 v5, 0x1

    .line 548
    invoke-virtual {p0, v5, v10}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v6, v5

    .line 549
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto/16 :goto_0

    .end local v4           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_9
    move v6, v5

    .line 552
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto/16 :goto_0

    .line 451
    :array_0
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0xd0t
        0x0t
        0x1t
        0x4t
    .end array-data

    .line 452
    :array_1
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x19t
        0x0t
        0x6t
        0x0t
        0x2t
        0x1t
        0xf0t
        0x12t
        0x0t
    .end array-data

    .line 453
    :array_2
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x19t
        0x0t
        0x6t
        0x0t
        0x2t
        0x1t
        0x1ft
        0x1t
        0x0t
    .end array-data

    .line 454
    :array_3
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x3t
        0x0t
        0x6t
        0x0t
        0x2t
        0x1t
        0xf0t
        0x12t
        0x0t
    .end array-data
.end method

.method private ReadOneSMS(III)I
    .locals 8
    .parameter "iBoxID"
    .parameter "iBoxType"
    .parameter "iSMSID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 609
    const/4 v2, 0x0

    .line 611
    .local v2, iRet:I
    new-instance v4, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v4}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 612
    .local v4, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/16 v5, 0x10

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    .line 613
    .local v0, cmd_ReadOneSMS:[B
    const/16 v5, 0xb

    int-to-byte v6, p1

    aput-byte v6, v0, v5

    .line 614
    const/16 v5, 0xc

    const v6, 0xff00

    and-int/2addr v6, p3

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 615
    const/16 v5, 0xd

    and-int/lit16 v6, p3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 617
    :try_start_0
    iget-object v5, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v6, 0x4e20

    invoke-virtual {v5, v0, v6}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    const/16 v5, 0x66

    iput v5, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 620
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v3, v2

    .line 647
    .end local v2           #iRet:I
    .local v3, iRet:I
    :goto_0
    return v3

    .line 623
    .end local v3           #iRet:I
    .restart local v2       #iRet:I
    :cond_0
    iget-object v5, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v6, 0x4e20

    invoke-virtual {v5, v4, v6}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    const/16 v5, 0x65

    iput v5, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 626
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 627
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto :goto_0

    .line 629
    .end local v3           #iRet:I
    .restart local v2       #iRet:I
    :catch_0
    move-exception v1

    .line 631
    .local v1, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v1}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 632
    iput v7, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 633
    const/4 v2, 0x1

    .line 634
    invoke-virtual {p0, v2, v7}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    move v3, v2

    .line 635
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto :goto_0

    .line 639
    .end local v1           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v3           #iRet:I
    .restart local v2       #iRet:I
    :cond_1
    sget v5, Lcom/futuredial/FBusReadThread;->CancelFlag:I

    if-nez v5, :cond_2

    .line 641
    const/4 v5, 0x4

    iput v5, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 642
    new-instance v5, Lcom/futuredial/CancelException;

    invoke-direct {v5}, Lcom/futuredial/CancelException;-><init>()V

    throw v5

    .line 645
    :cond_2
    iget-object v5, v4, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v5}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    move v3, v2

    .line 647
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto :goto_0

    .line 612
    nop

    :array_0
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x14t
        0x0t
        0xat
        0x0t
        0x6t
        0x1t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private doTaskCal()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    .line 211
    const-string v9, "FBusReadThread"

    const-string v10, "Enter function doTaskCal"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v3, 0x1

    .line 214
    .local v3, iRet:I
    const-string v9, "FBusReadThread"

    const-string v10, "OpenPort"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/futuredial/FBusReadThread;->OpenPort()I

    .line 217
    const-string v9, "FBusReadThread"

    const-string v10, "SetIsCompleted"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/futuredial/FBusReadThread;->SetIsCompleted()V

    .line 221
    const-string v9, "FBusReadThread"

    const-string v10, "Begin to read calendar by protocol FBUS"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v7, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v7}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 225
    .local v7, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->InitFbusMode()I

    move-result v9

    if-eqz v9, :cond_0

    .line 227
    const-string v9, "FBusReadThread"

    const-string v10, "fail in initializing fbus connection for pb"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, arListEventID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, v0}, Lcom/futuredial/FBusReadThread;->GetCalEntryID(Ljava/util/ArrayList;)I

    move-result v3

    .line 234
    if-eqz v3, :cond_1

    .line 236
    const-string v9, "FBusReadThread"

    const-string v10, "fail in getting calender entry ID"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 242
    .local v8, totalCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 245
    sget v9, Lcom/futuredial/FBusReadThread;->CancelFlag:I

    if-nez v9, :cond_2

    .line 247
    const/4 v9, 0x4

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 248
    new-instance v9, Lcom/futuredial/CancelException;

    invoke-direct {v9}, Lcom/futuredial/CancelException;-><init>()V

    throw v9

    .line 251
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 252
    .local v5, lEventID:Ljava/lang/Long;
    const/16 v9, 0x14

    new-array v1, v9, [B

    fill-array-data v1, :array_0

    .line 253
    .local v1, cmdReadEvent:[B
    const/16 v9, 0x10

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0x1000000

    div-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 254
    const/16 v9, 0x11

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0x10000

    div-long/2addr v10, v12

    const-wide/16 v12, 0x100

    rem-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 255
    const/16 v9, 0x12

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x100

    div-long/2addr v10, v12

    const-wide/16 v12, 0x100

    rem-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 256
    const/16 v9, 0x13

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x100

    rem-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 258
    :try_start_0
    iget-object v9, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v10, 0x4e20

    invoke-virtual {v9, v1, v10}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v3

    if-eqz v3, :cond_4

    .line 260
    const/16 v9, 0x66

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 261
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1           #cmdReadEvent:[B
    .end local v5           #lEventID:Ljava/lang/Long;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->ExitFbusMode()I

    .line 287
    const-string v9, "FBusReadThread"

    const-string v10, "Exit function doTaskCal"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .restart local v1       #cmdReadEvent:[B
    .restart local v5       #lEventID:Ljava/lang/Long;
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v10, 0x4e20

    invoke-virtual {v9, v7, v10}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 266
    const/16 v9, 0x65

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 267
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V
    :try_end_1
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 270
    :catch_0
    move-exception v2

    .line 272
    .local v2, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v2}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 273
    const/4 v9, 0x1

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 274
    const/4 v3, 0x1

    .line 275
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    goto :goto_2

    .line 279
    .end local v2           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_5
    iget-object v9, v7, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v9}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 281
    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v9, v4, 0x3e

    div-int/2addr v9, v8

    add-int/lit8 v6, v9, 0x8

    .line 282
    .local v6, percent:I
    invoke-virtual {p0, v6}, Lcom/futuredial/FBusReadThread;->sendPBARMsg(I)V

    goto/16 :goto_1

    .line 252
    nop

    :array_0
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x13t
        0x0t
        0xet
        0x0t
        0x2t
        0x1t
        0xb5t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private doTaskPB()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    .line 100
    const-string v9, "FBusReadThread"

    const-string v10, "Enter function doTaskPB"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v3, 0x1

    .line 103
    .local v3, iRet:I
    const-string v9, "FBusReadThread"

    const-string v10, "OpenPort"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/futuredial/FBusReadThread;->OpenPort()I

    .line 106
    const-string v9, "FBusReadThread"

    const-string v10, "SetIsCompleted"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/futuredial/FBusReadThread;->SetIsCompleted()V

    .line 110
    const-string v9, "FBusReadThread"

    const-string v10, "Begin to read phonebook by protocol FBUS"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->InitFbusMode()I

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    const-string v9, "FBusReadThread"

    const-string v10, "fail in initializing fbus connection for pb"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v8, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v8}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 120
    .local v8, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/16 v9, 0x18

    new-array v6, v9, [B

    fill-array-data v6, :array_0

    .line 121
    .local v6, readCmd1:[B
    const/16 v9, 0x18

    new-array v7, v9, [B

    fill-array-data v7, :array_1

    .line 122
    .local v7, readCmd2:[B
    const/4 v0, 0x1

    .line 123
    .local v0, bFirstCmd:Z
    const/4 v4, -0x1

    .line 124
    .local v4, nFirstIndex:I
    const/4 v5, -0x1

    .line 128
    .local v5, nNextIndex:I
    :goto_1
    sget v9, Lcom/futuredial/FBusReadThread;->CancelFlag:I

    if-nez v9, :cond_1

    .line 130
    const/4 v9, 0x4

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 131
    new-instance v9, Lcom/futuredial/CancelException;

    invoke-direct {v9}, Lcom/futuredial/CancelException;-><init>()V

    throw v9

    .line 134
    :cond_1
    const/4 v1, 0x0

    .line 135
    .local v1, curCmd:[B
    if-eqz v0, :cond_2

    .line 137
    move-object v1, v6

    .line 147
    :goto_2
    :try_start_0
    iget-object v9, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v10, 0x4e20

    invoke-virtual {v9, v1, v10}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    const/16 v9, 0x66

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 150
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_3
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->ExitFbusMode()I

    .line 206
    const-string v9, "FBusReadThread"

    const-string v10, "Exit function doTaskPB"

    invoke-static {v9, v10}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    const/16 v9, 0x14

    div-int/lit16 v10, v5, 0x100

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 142
    const/16 v9, 0x15

    rem-int/lit16 v10, v5, 0x100

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 143
    move-object v1, v7

    goto :goto_2

    .line 153
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v10, 0x4e20

    invoke-virtual {v9, v8, v10}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    const/16 v9, 0x65

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 156
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V
    :try_end_1
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 159
    :catch_0
    move-exception v2

    .line 161
    .local v2, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v2}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 162
    const/4 v9, 0x1

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 163
    const/4 v3, 0x1

    .line 164
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    goto :goto_3

    .line 168
    .end local v2           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_4
    iget-object v9, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v9, v9

    const/16 v10, 0x1d

    if-ge v9, v10, :cond_5

    .line 170
    const/16 v9, 0x65

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 171
    const/4 v3, 0x1

    .line 172
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    goto :goto_3

    .line 176
    :cond_5
    if-eqz v0, :cond_7

    .line 178
    const/4 v0, 0x0

    .line 179
    iget-object v9, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v10, 0x12

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    iget-object v10, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v11, 0x13

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    or-int v4, v9, v10

    move v5, v4

    .line 191
    :cond_6
    if-lez v5, :cond_8

    .line 193
    iget-object v9, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v9}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    goto/16 :goto_1

    .line 183
    :cond_7
    iget-object v9, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v10, 0x12

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    iget-object v10, v8, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v11, 0x13

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    or-int v5, v9, v10

    .line 184
    if-ne v5, v4, :cond_6

    .line 186
    const/4 v9, 0x0

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    goto/16 :goto_3

    .line 197
    :cond_8
    const/4 v9, 0x1

    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 198
    const/4 v3, 0x1

    .line 199
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/futuredial/FBusReadThread;->ASSERT(II)V

    goto/16 :goto_3

    .line 120
    :array_0
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x3t
        0x0t
        0x12t
        0x0t
        0x2t
        0x1t
        0x7t
        0x2t
        0x2t
        0x0t
        0x1t
        0xfft
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0xfft
        0xfft
        0x0t
        0x0t
    .end array-data

    .line 121
    :array_1
    .array-data 0x1
        0x19t
        0x0t
        0x10t
        0x3t
        0x0t
        0x12t
        0x0t
        0x2t
        0x1t
        0x7t
        0x4t
        0x2t
        0x0t
        0x1t
        0xfft
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0xfft
        0xfft
        0x0t
        0x0t
    .end array-data
.end method

.method private doTaskSMS()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 292
    const-string v5, "FBusReadThread"

    const-string v6, "Enter function doTaskSMS"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v5, "FBusReadThread"

    const-string v6, "Load communication config for sms moudle "

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {v1}, Lcom/futuredial/fbus/FBusConfig;-><init>()V

    .line 296
    .local v1, fbusConfig:Lcom/futuredial/fbus/FBusConfig;
    iget-object v5, p0, Lcom/futuredial/FBusReadThread;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/futuredial/FBusReadThread;->commuPolicy:Ljava/lang/String;

    iget-object v7, p0, Lcom/futuredial/FBusReadThread;->commuPolicy:Ljava/lang/String;

    iget v8, p0, Lcom/futuredial/FBusReadThread;->contentType:I

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/futuredial/fbus/FBusConfig;->LoadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 298
    const-string v5, "FBusReadThread"

    const-string v6, "Fail in loading communication config for sms module"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v5, 0x1

    iput v5, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v5, "FBusReadThread"

    const-string v6, "OpenPort"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/futuredial/FBusReadThread;->OpenPort()I

    .line 306
    const-string v5, "FBusReadThread"

    const-string v6, "SetIsCompleted"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/futuredial/FBusReadThread;->SetIsCompleted()V

    .line 311
    sget v5, Lcom/futuredial/FBusReadThread;->CancelFlag:I

    if-nez v5, :cond_2

    .line 313
    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 314
    new-instance v5, Lcom/futuredial/CancelException;

    invoke-direct {v5}, Lcom/futuredial/CancelException;-><init>()V

    throw v5

    .line 317
    :cond_2
    const-string v5, "FBusReadThread"

    const-string v6, "Begin to read sms by protocol FBUS"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->InitFbusMode()I

    move-result v5

    if-nez v5, :cond_0

    .line 326
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, v1, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v5, v5, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_arSMSBox:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 329
    sget v5, Lcom/futuredial/FBusReadThread;->CancelFlag:I

    if-nez v5, :cond_3

    .line 331
    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 332
    new-instance v5, Lcom/futuredial/CancelException;

    invoke-direct {v5}, Lcom/futuredial/CancelException;-><init>()V

    throw v5

    .line 335
    :cond_3
    iget-object v5, v1, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v5, v5, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_arSMSBox:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;

    .line 336
    .local v4, objBox:Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v0, arSMSID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    iget-object v5, v4, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v0}, Lcom/futuredial/FBusReadThread;->GetSMSID(ILjava/util/ArrayList;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 362
    .end local v0           #arSMSID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #objBox:Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;
    :cond_4
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->ExitFbusMode()I

    .line 363
    const-string v5, "FBusReadThread"

    const-string v6, "Exit function doTaskSMS"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    .restart local v0       #arSMSID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4       #objBox:Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;
    :cond_5
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 347
    sget v5, Lcom/futuredial/FBusReadThread;->CancelFlag:I

    if-nez v5, :cond_6

    .line 349
    iput v9, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 350
    new-instance v5, Lcom/futuredial/CancelException;

    invoke-direct {v5}, Lcom/futuredial/CancelException;-><init>()V

    throw v5

    .line 353
    :cond_6
    iget-object v5, v4, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v4, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxID:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v6, v7, v5}, Lcom/futuredial/FBusReadThread;->ReadOneSMS(III)I

    move-result v5

    if-eqz v5, :cond_8

    .line 326
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 344
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected DoComm()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 53
    iput v6, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    .line 56
    :try_start_0
    iget v2, p0, Lcom/futuredial/FBusReadThread;->contentType:I

    if-nez v2, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->doTaskPB()V

    .line 59
    const/4 v2, 0x0

    iput v2, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/FBusReadThread;->Close(Ljava/lang/Boolean;)V

    .line 96
    return-void

    .line 61
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/futuredial/FBusReadThread;->contentType:I

    if-ne v6, v2, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->doTaskCal()V

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I
    :try_end_1
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 84
    .local v1, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    iput-boolean v6, p0, Lcom/futuredial/FBusReadThread;->bPopResume:Z

    .line 85
    invoke-virtual {p0, v6}, Lcom/futuredial/FBusReadThread;->ASSERT(I)V

    .line 86
    const/16 v2, 0x67

    iput v2, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 66
    .end local v1           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :cond_1
    const/4 v2, 0x2

    :try_start_2
    iget v3, p0, Lcom/futuredial/FBusReadThread;->contentType:I

    if-ne v2, v3, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->doTaskSMS()V

    .line 69
    const/4 v2, 0x0

    iput v2, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    invoke-virtual {p0, v6}, Lcom/futuredial/FBusReadThread;->ASSERT(I)V

    goto :goto_0

    .line 71
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x6

    :try_start_3
    iget v3, p0, Lcom/futuredial/FBusReadThread;->contentType:I

    if-ne v2, v3, :cond_3

    .line 73
    invoke-direct {p0}, Lcom/futuredial/FBusReadThread;->doTaskCal()V

    .line 74
    const/4 v2, 0x0

    iput v2, p0, Lcom/futuredial/FBusReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 78
    :cond_3
    const-string v2, "FBusReadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/futuredial/FBusReadThread;->contentType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/futuredial/FBusReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/FBusReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/FBusReadThread$1;-><init>(Lcom/futuredial/FBusReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 48
    return-void
.end method
