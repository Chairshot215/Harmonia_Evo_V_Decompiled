.class public Lcom/futuredial/RIMReadThread;
.super Lcom/futuredial/ReadThread;
.source "RIMReadThread.java"


# static fields
.field private static final RIM_BT_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "RIMReadThread"

.field private static final cmdAck06:[B

.field private static final cmdAck41:[B

.field private static final cmdAckCancel:[B


# instance fields
.field private bPrintLog:Z

.field private cmdType:B

.field private iRecordCount:I

.field private lastCommand:[B

.field private moduleID:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    sput-object v0, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    .line 24
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/futuredial/RIMReadThread;->cmdAck41:[B

    .line 25
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/futuredial/RIMReadThread;->cmdAckCancel:[B

    return-void

    .line 24
    :array_0
    .array-data 0x1
        0xd9t
        0xaet
        0xfbt
        0x41t
        0x0t
        0x0t
        0xbft
        0xeat
        0x9dt
    .end array-data

    .line 25
    nop

    :array_1
    .array-data 0x1
        0xd9t
        0xaet
        0xfbt
        0x41t
        0x0t
        0x9t
        0xbft
        0xeat
        0x9dt
    .end array-data
.end method

.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 2
    .parameter "tParam"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 19
    iput-byte v1, p0, Lcom/futuredial/RIMReadThread;->cmdType:B

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/futuredial/RIMReadThread;->moduleID:[B

    .line 21
    iput v1, p0, Lcom/futuredial/RIMReadThread;->iRecordCount:I

    .line 27
    iput-boolean v1, p0, Lcom/futuredial/RIMReadThread;->bPrintLog:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/RIMReadThread;->lastCommand:[B

    .line 34
    return-void

    .line 20
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private CheckPassWord([B)Z
    .locals 3
    .parameter "recvBuffer"

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, bRet:Z
    array-length v1, p1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const/16 v1, 0xe

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    if-eqz v1, :cond_1

    .line 301
    :cond_0
    const/4 v0, 0x1

    .line 304
    :cond_1
    return v0
.end method

.method private GetCmdType([B)I
    .locals 9
    .parameter "dataBuf"

    .prologue
    .line 574
    const/4 v5, 0x1

    .line 576
    .local v5, iRet:I
    const/4 v3, 0x0

    .line 577
    .local v3, iPos:I
    :goto_0
    array-length v7, p1

    if-le v7, v3, :cond_0

    .line 579
    add-int/lit8 v4, v3, 0x1

    .end local v3           #iPos:I
    .local v4, iPos:I
    aget-byte v2, p1, v3

    .line 581
    .local v2, iFieldLen:I
    array-length v7, p1

    add-int v8, v4, v2

    if-le v7, v8, :cond_2

    .line 583
    add-int/lit8 v3, v4, 0x1

    .end local v4           #iPos:I
    .restart local v3       #iPos:I
    aget-byte v1, p1, v4

    .line 586
    .local v1, iCmdType:I
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v3, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 587
    .local v6, strName:Ljava/lang/String;
    const-string v7, "Database Access"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 589
    int-to-byte v7, v1

    iput-byte v7, p0, Lcom/futuredial/RIMReadThread;->cmdType:B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    const/4 v5, 0x0

    .line 603
    .end local v1           #iCmdType:I
    .end local v2           #iFieldLen:I
    .end local v6           #strName:Ljava/lang/String;
    :cond_0
    return v5

    .line 594
    .restart local v1       #iCmdType:I
    .restart local v2       #iFieldLen:I
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 600
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #iCmdType:I
    :cond_1
    :goto_1
    add-int/2addr v3, v2

    .line 601
    goto :goto_0

    .end local v3           #iPos:I
    .restart local v4       #iPos:I
    :cond_2
    move v3, v4

    .end local v4           #iPos:I
    .restart local v3       #iPos:I
    goto :goto_1
.end method

.method private GetModuleID([B)I
    .locals 13
    .parameter "dataBuf"

    .prologue
    const/4 v11, 0x1

    .line 608
    const/4 v4, 0x1

    .line 610
    .local v4, iRet:I
    const/4 v3, 0x6

    .line 611
    .local v3, iPos:I
    const-string v8, ""

    .line 612
    .local v8, strModuleName:Ljava/lang/String;
    iget v10, p0, Lcom/futuredial/RIMReadThread;->contentType:I

    if-nez v10, :cond_1

    .line 614
    const-string v8, "Address Book"

    .line 634
    :goto_0
    array-length v10, p1

    add-int/lit8 v11, v3, 0x10

    if-lt v10, v11, :cond_0

    .line 636
    aget-byte v6, p1, v3

    .line 637
    .local v6, moduleType0:B
    add-int/lit8 v10, v3, 0x1

    aget-byte v7, p1, v10

    .line 638
    .local v7, moduleType1:B
    add-int/lit8 v10, v3, 0x8

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    add-int/lit8 v11, v3, 0x7

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int v1, v10, v11

    .line 640
    .local v1, iCount:I
    add-int/lit8 v10, v3, 0xd

    aget-byte v2, p1, v10

    .line 641
    .local v2, iFieldLen:I
    add-int/lit8 v3, v3, 0x10

    .line 642
    if-lez v2, :cond_5

    array-length v10, p1

    add-int v11, v3, v2

    if-lt v10, v11, :cond_5

    .line 646
    :try_start_0
    new-instance v9, Ljava/lang/String;

    add-int/lit8 v10, v2, -0x1

    const-string v11, "UTF-8"

    invoke-direct {v9, p1, v3, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 647
    .local v9, strName:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5

    .line 649
    iget-object v10, p0, Lcom/futuredial/RIMReadThread;->moduleID:[B

    const/4 v11, 0x0

    aput-byte v6, v10, v11

    .line 650
    iget-object v10, p0, Lcom/futuredial/RIMReadThread;->moduleID:[B

    const/4 v11, 0x1

    aput-byte v7, v10, v11

    .line 651
    iput v1, p0, Lcom/futuredial/RIMReadThread;->iRecordCount:I

    .line 653
    invoke-static {v7, v6}, Lcom/futuredial/rim/RIMParser;->SetModuleID(II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    const/4 v4, 0x0

    .end local v1           #iCount:I
    .end local v2           #iFieldLen:I
    .end local v6           #moduleType0:B
    .end local v7           #moduleType1:B
    .end local v9           #strName:Ljava/lang/String;
    :cond_0
    move v5, v4

    .line 668
    .end local v4           #iRet:I
    .local v5, iRet:I
    :goto_1
    return v5

    .line 616
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_1
    iget v10, p0, Lcom/futuredial/RIMReadThread;->contentType:I

    if-ne v11, v10, :cond_2

    .line 618
    const-string v8, "Calendar"

    goto :goto_0

    .line 620
    :cond_2
    const/4 v10, 0x2

    iget v11, p0, Lcom/futuredial/RIMReadThread;->contentType:I

    if-ne v10, v11, :cond_3

    .line 622
    const-string v8, "SMS Messages"

    goto :goto_0

    .line 624
    :cond_3
    const/4 v10, 0x3

    iget v11, p0, Lcom/futuredial/RIMReadThread;->contentType:I

    if-ne v10, v11, :cond_4

    .line 626
    const-string v8, "Browser Bookmarks"

    goto :goto_0

    .line 630
    :cond_4
    const-string v10, "RIMReadThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wrong module type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/futuredial/RIMReadThread;->contentType:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 631
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_1

    .line 659
    .end local v5           #iRet:I
    .restart local v1       #iCount:I
    .restart local v2       #iFieldLen:I
    .restart local v4       #iRet:I
    .restart local v6       #moduleType0:B
    .restart local v7       #moduleType1:B
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 665
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5
    add-int/lit8 v10, v2, 0x2

    add-int/2addr v3, v10

    .line 666
    goto/16 :goto_0
.end method

.method private Initialize()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v13, 0x1

    .line 311
    .local v13, iRet:I
    new-instance v16, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v16 .. v16}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 313
    .local v16, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/4 v14, 0x0

    .line 314
    .local v14, iRetryTimes:I
    const/4 v3, 0x0

    .line 317
    .local v3, bRightMode:Z
    :goto_0
    sget v17, Lcom/futuredial/RIMReadThread;->CancelFlag:I

    if-nez v17, :cond_0

    .line 319
    new-instance v17, Lcom/futuredial/CancelException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/CancelException;-><init>()V

    throw v17

    .line 322
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-byte v17, v17, v18

    const/16 v18, -0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 327
    const/4 v3, 0x1

    .line 340
    :goto_1
    if-nez v3, :cond_2

    move/from16 v17, v13

    .line 569
    :goto_2
    return v17

    .line 330
    :cond_1
    const-string v17, "RIMReadThread"

    const-string v18, "close port"

    invoke-static/range {v17 .. v18}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/RIMReadThread;->Close(Ljava/lang/Boolean;)V

    .line 333
    const-wide/16 v17, 0x7d0

    :try_start_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/futuredial/RIMReadThread;->OpenRimPort()V

    .line 339
    add-int/lit8 v15, v14, 0x1

    .end local v14           #iRetryTimes:I
    .local v15, iRetryTimes:I
    const/16 v17, 0x5

    move/from16 v0, v17

    if-lt v14, v0, :cond_15

    move v14, v15

    .end local v15           #iRetryTimes:I
    .restart local v14       #iRetryTimes:I
    goto :goto_1

    .line 334
    :catch_0
    move-exception v12

    .line 336
    .local v12, e:Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 350
    .end local v12           #e:Ljava/lang/InterruptedException;
    :cond_2
    const/16 v17, 0xb

    move/from16 v0, v17

    new-array v4, v0, [B

    fill-array-data v4, :array_0

    .line 351
    .local v4, cmd0F:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v13

    if-eqz v13, :cond_3

    move/from16 v17, v13

    .line 353
    goto :goto_2

    .line 362
    :cond_3
    const/16 v17, 0xd

    move/from16 v0, v17

    new-array v5, v0, [B

    fill-array-data v5, :array_1

    .line 363
    .local v5, cmd1:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v13

    if-eqz v13, :cond_4

    move/from16 v17, v13

    .line 365
    goto :goto_2

    .line 371
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v13

    if-eqz v13, :cond_5

    move/from16 v17, v13

    .line 373
    goto :goto_2

    .line 375
    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->CheckPassWord([B)Z

    move-result v2

    .line 376
    .local v2, bHasPW:Z
    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck41:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    .line 381
    if-eqz v2, :cond_6

    .line 383
    const/16 v17, 0x69

    goto/16 :goto_2

    .line 395
    :cond_6
    const/16 v17, 0x12

    move/from16 v0, v17

    new-array v6, v0, [B

    fill-array-data v6, :array_2

    .line 396
    .local v6, cmd2:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v13

    if-eqz v13, :cond_7

    move/from16 v17, v13

    .line 398
    goto/16 :goto_2

    .line 404
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v13

    if-eqz v13, :cond_8

    move/from16 v17, v13

    .line 406
    goto/16 :goto_2

    .line 408
    :cond_8
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->GetCmdType([B)I

    move-result v13

    if-eqz v13, :cond_9

    move/from16 v17, v13

    .line 410
    goto/16 :goto_2

    .line 412
    :cond_9
    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck41:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    .line 424
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v7, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x40

    aput-byte v18, v7, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/futuredial/RIMReadThread;->cmdType:B

    move/from16 v18, v0

    aput-byte v18, v7, v17

    const/16 v17, 0x2

    const/16 v18, 0x0

    aput-byte v18, v7, v17

    const/16 v17, 0x3

    const/16 v18, 0x1

    aput-byte v18, v7, v17

    const/16 v17, 0x4

    const/16 v18, 0x56

    aput-byte v18, v7, v17

    const/16 v17, 0x5

    const/16 v18, 0x0

    aput-byte v18, v7, v17

    const/16 v17, 0x6

    const/16 v18, 0x0

    aput-byte v18, v7, v17

    .line 425
    .local v7, cmd3:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/futuredial/RIMReadThread;->FormatCommand([B)[B

    move-result-object v7

    .line 426
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v13

    if-eqz v13, :cond_a

    move/from16 v17, v13

    .line 428
    goto/16 :goto_2

    .line 434
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v13

    if-eqz v13, :cond_b

    move/from16 v17, v13

    .line 436
    goto/16 :goto_2

    .line 438
    :cond_b
    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck41:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    .line 448
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v8, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x40

    aput-byte v18, v8, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/futuredial/RIMReadThread;->cmdType:B

    move/from16 v18, v0

    aput-byte v18, v8, v17

    const/16 v17, 0x2

    const/16 v18, 0x0

    aput-byte v18, v8, v17

    const/16 v17, 0x3

    const/16 v18, 0x1

    aput-byte v18, v8, v17

    const/16 v17, 0x4

    const/16 v18, 0x57

    aput-byte v18, v8, v17

    const/16 v17, 0x5

    const/16 v18, 0x0

    aput-byte v18, v8, v17

    const/16 v17, 0x6

    const/16 v18, 0x0

    aput-byte v18, v8, v17

    .line 449
    .local v8, cmd4:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/futuredial/RIMReadThread;->FormatCommand([B)[B

    move-result-object v8

    .line 450
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v13

    if-eqz v13, :cond_c

    move/from16 v17, v13

    .line 452
    goto/16 :goto_2

    .line 458
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v13

    if-eqz v13, :cond_d

    move/from16 v17, v13

    .line 460
    goto/16 :goto_2

    .line 462
    :cond_d
    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck41:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    .line 472
    const/16 v17, 0xb

    move/from16 v0, v17

    new-array v9, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x40

    aput-byte v18, v9, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/futuredial/RIMReadThread;->cmdType:B

    move/from16 v18, v0

    aput-byte v18, v9, v17

    const/16 v17, 0x2

    const/16 v18, 0x0

    aput-byte v18, v9, v17

    const/16 v17, 0x3

    const/16 v18, 0x5

    aput-byte v18, v9, v17

    const/16 v17, 0x4

    const/16 v18, 0x47

    aput-byte v18, v9, v17

    const/16 v17, 0x5

    const/16 v18, 0x2

    aput-byte v18, v9, v17

    const/16 v17, 0x6

    const/16 v18, 0x0

    aput-byte v18, v9, v17

    const/16 v17, 0x7

    const/16 v18, 0x0

    aput-byte v18, v9, v17

    const/16 v17, 0x8

    const/16 v18, 0x1

    aput-byte v18, v9, v17

    const/16 v17, 0x9

    const/16 v18, 0x0

    aput-byte v18, v9, v17

    const/16 v17, 0xa

    const/16 v18, 0x0

    aput-byte v18, v9, v17

    .line 473
    .local v9, cmd5:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/futuredial/RIMReadThread;->FormatCommand([B)[B

    move-result-object v9

    .line 474
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v13

    if-eqz v13, :cond_e

    move/from16 v17, v13

    .line 476
    goto/16 :goto_2

    .line 482
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v13

    if-eqz v13, :cond_f

    move/from16 v17, v13

    .line 484
    goto/16 :goto_2

    .line 486
    :cond_f
    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck41:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    .line 496
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v10, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x40

    aput-byte v18, v10, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/futuredial/RIMReadThread;->cmdType:B

    move/from16 v18, v0

    aput-byte v18, v10, v17

    const/16 v17, 0x2

    const/16 v18, 0x0

    aput-byte v18, v10, v17

    const/16 v17, 0x3

    const/16 v18, 0x1

    aput-byte v18, v10, v17

    const/16 v17, 0x4

    const/16 v18, 0x4a

    aput-byte v18, v10, v17

    const/16 v17, 0x5

    const/16 v18, 0x0

    aput-byte v18, v10, v17

    const/16 v17, 0x6

    const/16 v18, 0x0

    aput-byte v18, v10, v17

    .line 497
    .local v10, cmd6:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/futuredial/RIMReadThread;->FormatCommand([B)[B

    move-result-object v10

    .line 498
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v13

    if-eqz v13, :cond_10

    move/from16 v17, v13

    .line 500
    goto/16 :goto_2

    .line 506
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v13

    if-eqz v13, :cond_11

    move/from16 v17, v13

    .line 508
    goto/16 :goto_2

    .line 510
    :cond_11
    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    sget-object v17, Lcom/futuredial/RIMReadThread;->cmdAck41:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 511
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->GetModuleID([B)I

    move-result v13

    if-eqz v13, :cond_12

    move/from16 v17, v13

    .line 513
    goto/16 :goto_2

    .line 516
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    .line 524
    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v11, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x40

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/futuredial/RIMReadThread;->cmdType:B

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x2

    const/16 v18, 0x0

    aput-byte v18, v11, v17

    const/16 v17, 0x3

    const/16 v18, 0x3

    aput-byte v18, v11, v17

    const/16 v17, 0x4

    const/16 v18, 0x4b

    aput-byte v18, v11, v17

    const/16 v17, 0x5

    const/16 v18, 0x0

    aput-byte v18, v11, v17

    const/16 v17, 0x6

    const/16 v18, 0x0

    aput-byte v18, v11, v17

    const/16 v17, 0x7

    const/16 v18, 0x0

    aput-byte v18, v11, v17

    const/16 v17, 0x8

    const/16 v18, 0x0

    aput-byte v18, v11, v17

    .line 525
    .local v11, cmd7:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/futuredial/RIMReadThread;->FormatCommand([B)[B

    move-result-object v11

    .line 526
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v13

    if-eqz v13, :cond_13

    move/from16 v17, v13

    .line 528
    goto/16 :goto_2

    .line 534
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v13

    if-eqz v13, :cond_14

    move/from16 v17, v13

    .line 536
    goto/16 :goto_2

    :cond_14
    move/from16 v17, v13

    .line 569
    goto/16 :goto_2

    .end local v2           #bHasPW:Z
    .end local v4           #cmd0F:[B
    .end local v5           #cmd1:[B
    .end local v6           #cmd2:[B
    .end local v7           #cmd3:[B
    .end local v8           #cmd4:[B
    .end local v9           #cmd5:[B
    .end local v10           #cmd6:[B
    .end local v11           #cmd7:[B
    .end local v14           #iRetryTimes:I
    .restart local v15       #iRetryTimes:I
    :cond_15
    move v14, v15

    .end local v15           #iRetryTimes:I
    .restart local v14       #iRetryTimes:I
    goto/16 :goto_0

    .line 350
    nop

    :array_0
    .array-data 0x1
        0xd9t
        0xaet
        0xfbt
        0xft
        0x0t
        0x1t
        0x0t
        0x0t
        0xbft
        0xeat
        0x9dt
    .end array-data

    .line 362
    :array_1
    .array-data 0x1
        0xd9t
        0xaet
        0xfbt
        0x40t
        0x0t
        0x0t
        0x1t
        0x12t
        0x4bt
        0xbft
        0xbft
        0xeat
        0x9dt
    .end array-data

    .line 395
    nop

    :array_2
    .array-data 0x1
        0xd9t
        0xaet
        0xfbt
        0x40t
        0x0t
        0x0t
        0x6t
        0x0t
        0x1t
        0xc2t
        0x0t
        0x8t
        0x0t
        0x9t
        0xd0t
        0xbft
        0xeat
        0x9dt
    .end array-data
.end method

.method private OpenRimPort()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    .line 88
    const/4 v1, 0x0

    .line 91
    .local v1, iRetryTime:I
    :goto_0
    sget v2, Lcom/futuredial/RIMReadThread;->CancelFlag:I

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Lcom/futuredial/CancelException;

    invoke-direct {v2}, Lcom/futuredial/CancelException;-><init>()V

    throw v2

    .line 97
    :cond_0
    :try_start_0
    const-string v2, "RIMReadThread"

    const-string v3, "OpenPort"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/futuredial/RIMReadThread;->OpenPort()I

    .line 99
    const-string v2, "RIMReadThread"

    const-string v3, "succeed in opening port"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    if-lt v1, v4, :cond_1

    .line 105
    throw v0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 124
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 110
    .local v0, e:Lcom/futuredial/bluetooth/ExceptionForUI;
    if-lt v1, v4, :cond_2

    .line 112
    throw v0

    .line 114
    :cond_2
    invoke-virtual {v0}, Lcom/futuredial/bluetooth/ExceptionForUI;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v0           #e:Lcom/futuredial/bluetooth/ExceptionForUI;
    :catch_2
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private PrintByteAsHexString(Ljava/lang/String;[B)V
    .locals 13
    .parameter "strType"
    .parameter "binData"

    .prologue
    .line 834
    iget-boolean v11, p0, Lcom/futuredial/RIMReadThread;->bPrintLog:Z

    if-eqz v11, :cond_9

    .line 835
    move-object v7, p1

    .line 836
    .local v7, st:Ljava/lang/String;
    const-string v11, "Begin"

    invoke-static {v7, v11}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const/4 v0, 0x0

    .line 838
    .local v0, bFinished:Z
    const/16 v6, 0x10

    .line 839
    .local v6, nLen:I
    const/16 v11, 0x30

    new-array v9, v11, [C

    .line 840
    .local v9, szBinLine:[C
    new-array v10, v6, [C

    .line 841
    .local v10, szStrLine:[C
    const-string v8, ""

    .line 842
    .local v8, strMsg:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, m:I
    :goto_0
    array-length v11, v9

    if-ge v5, v11, :cond_0

    .line 844
    const/16 v11, 0x20

    aput-char v11, v9, v5

    .line 842
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 846
    :cond_0
    const/4 v5, 0x0

    :goto_1
    array-length v11, v10

    if-ge v5, v11, :cond_1

    .line 848
    const/16 v11, 0x20

    aput-char v11, v10, v5

    .line 846
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 851
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, p2

    if-ge v2, v11, :cond_7

    .line 853
    const/4 v0, 0x0

    .line 854
    aget-byte v11, p2, v2

    shr-int/lit8 v11, v11, 0x4

    int-to-byte v11, v11

    and-int/lit8 v1, v11, 0xf

    .line 855
    .local v1, h:I
    aget-byte v11, p2, v2

    and-int/lit8 v4, v11, 0xf

    .line 856
    .local v4, l:I
    rem-int v3, v2, v6

    .line 857
    .local v3, id:I
    const/16 v11, 0x9

    if-gt v1, v11, :cond_2

    .line 859
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v12, v1, 0x30

    int-to-char v12, v12

    aput-char v12, v9, v11

    .line 866
    :goto_3
    const/16 v11, 0x9

    if-gt v4, v11, :cond_3

    .line 868
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v4, 0x30

    int-to-char v12, v12

    aput-char v12, v9, v11

    .line 874
    :goto_4
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, 0x2

    const/16 v12, 0x20

    aput-char v12, v9, v11

    .line 876
    aget-byte v11, p2, v2

    const/16 v12, 0x1e

    if-lt v11, v12, :cond_4

    .line 878
    aget-byte v11, p2, v2

    int-to-char v11, v11

    aput-char v11, v10, v3

    .line 885
    :goto_5
    add-int/lit8 v11, v2, 0x1

    rem-int/2addr v11, v6

    if-nez v11, :cond_6

    .line 887
    const/4 v0, 0x1

    .line 888
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 889
    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v5, 0x0

    :goto_6
    array-length v11, v9

    if-ge v5, v11, :cond_5

    .line 893
    const/16 v11, 0x20

    aput-char v11, v9, v5

    .line 891
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 863
    :cond_2
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v12, v1, 0x37

    int-to-char v12, v12

    aput-char v12, v9, v11

    goto :goto_3

    .line 872
    :cond_3
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v4, 0x37

    int-to-char v12, v12

    aput-char v12, v9, v11

    goto :goto_4

    .line 882
    :cond_4
    const/16 v11, 0x2e

    aput-char v11, v10, v3

    goto :goto_5

    .line 895
    :cond_5
    const/4 v5, 0x0

    :goto_7
    array-length v11, v10

    if-ge v5, v11, :cond_6

    .line 897
    const/16 v11, 0x20

    aput-char v11, v10, v5

    .line 895
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 851
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 902
    .end local v1           #h:I
    .end local v3           #id:I
    .end local v4           #l:I
    :cond_7
    if-nez v0, :cond_8

    .line 904
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 905
    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_8
    const-string v11, "End"

    invoke-static {v7, v11}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .end local v0           #bFinished:Z
    .end local v2           #i:I
    .end local v5           #m:I
    .end local v6           #nLen:I
    .end local v7           #st:Ljava/lang/String;
    .end local v8           #strMsg:Ljava/lang/String;
    .end local v9           #szBinLine:[C
    .end local v10           #szStrLine:[C
    :cond_9
    return-void
.end method

.method private ReadPhoneData()I
    .locals 11

    .prologue
    .line 673
    const/4 v5, 0x1

    .line 675
    .local v5, iRet:I
    :try_start_0
    new-instance v7, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v7}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 681
    .local v7, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/16 v8, 0x9

    new-array v1, v8, [B

    const/4 v8, 0x0

    const/16 v9, 0x40

    aput-byte v9, v1, v8

    const/4 v8, 0x1

    iget-byte v9, p0, Lcom/futuredial/RIMReadThread;->cmdType:B

    aput-byte v9, v1, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-byte v9, v1, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    aput-byte v9, v1, v8

    const/4 v8, 0x4

    const/16 v9, 0x4f

    aput-byte v9, v1, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/futuredial/RIMReadThread;->moduleID:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    aput-byte v9, v1, v8

    const/4 v8, 0x6

    iget-object v9, p0, Lcom/futuredial/RIMReadThread;->moduleID:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    aput-byte v9, v1, v8

    const/4 v8, 0x7

    const/4 v9, 0x0

    aput-byte v9, v1, v8

    const/16 v8, 0x8

    const/4 v9, 0x0

    aput-byte v9, v1, v8

    .line 682
    .local v1, cmd1:[B
    invoke-virtual {p0, v1}, Lcom/futuredial/RIMReadThread;->FormatCommand([B)[B

    move-result-object v1

    .line 683
    invoke-direct {p0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v5

    if-eqz v5, :cond_0

    move v6, v5

    .line 729
    .end local v1           #cmd1:[B
    .end local v5           #iRet:I
    .end local v7           #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .local v6, iRet:I
    :goto_0
    return v6

    .line 691
    .end local v6           #iRet:I
    .restart local v1       #cmd1:[B
    .restart local v5       #iRet:I
    .restart local v7       #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    const/4 v3, 0x0

    .line 692
    .local v3, iHasReadCount:I
    const/4 v0, 0x0

    .local v0, bCancel:Z
    move v4, v3

    .line 693
    .end local v3           #iHasReadCount:I
    .local v4, iHasReadCount:I
    :goto_1
    add-int/lit8 v3, v4, 0x1

    .end local v4           #iHasReadCount:I
    .restart local v3       #iHasReadCount:I
    iget v8, p0, Lcom/futuredial/RIMReadThread;->iRecordCount:I

    if-ge v4, v8, :cond_2

    .line 696
    invoke-direct {p0, v7}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v5

    if-eqz v5, :cond_1

    move v6, v5

    .line 698
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 700
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_1
    sget-object v8, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    invoke-direct {p0, v8}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 703
    sget v8, Lcom/futuredial/RIMReadThread;->CancelFlag:I

    if-nez v8, :cond_4

    .line 705
    sget-object v8, Lcom/futuredial/RIMReadThread;->cmdAckCancel:[B

    invoke-direct {p0, v8}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 706
    const/4 v0, 0x1

    .line 714
    :cond_2
    invoke-direct {p0, v7}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    .line 716
    if-eqz v0, :cond_3

    .line 718
    new-instance v8, Lcom/futuredial/CancelException;

    invoke-direct {v8}, Lcom/futuredial/CancelException;-><init>()V

    throw v8
    :try_end_0
    .catch Lcom/futuredial/CancelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v0           #bCancel:Z
    .end local v1           #cmd1:[B
    .end local v3           #iHasReadCount:I
    .end local v7           #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :catch_0
    move-exception v2

    .line 725
    .local v2, e:Lcom/futuredial/CancelException;
    invoke-virtual {v2}, Lcom/futuredial/CancelException;->printStackTrace()V

    .line 726
    const/4 v5, 0x4

    .end local v2           #e:Lcom/futuredial/CancelException;
    :cond_3
    move v6, v5

    .line 729
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 710
    .end local v6           #iRet:I
    .restart local v0       #bCancel:Z
    .restart local v1       #cmd1:[B
    .restart local v3       #iHasReadCount:I
    .restart local v5       #iRet:I
    .restart local v7       #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_4
    :try_start_1
    sget-object v8, Lcom/futuredial/RIMReadThread;->cmdAck41:[B

    invoke-direct {p0, v8}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 712
    iget-object v8, v7, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v8}, Lcom/futuredial/ParseThread;->AddByteArray([B)V
    :try_end_1
    .catch Lcom/futuredial/CancelException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v3

    .end local v3           #iHasReadCount:I
    .restart local v4       #iHasReadCount:I
    goto :goto_1
.end method

.method private RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I
    .locals 17
    .parameter "recvBuffer"

    .prologue
    .line 224
    const/4 v8, 0x1

    .line 227
    .local v8, iRet:I
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v10, receivingData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v9, 0x0

    .line 229
    .local v9, iTotalLen:I
    const/4 v7, 0x3

    .line 230
    .local v7, iPos:I
    const/4 v1, 0x0

    .line 233
    .local v1, bContinue:Z
    :cond_0
    const/4 v11, 0x0

    .local v11, retryTimes:I
    move v12, v11

    .line 234
    .end local v11           #retryTimes:I
    .local v12, retryTimes:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/RIMReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v15, 0x2710

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v8

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/RIMReadThread;->lastCommand:[B

    if-eqz v14, :cond_1

    add-int/lit8 v11, v12, 0x1

    .end local v12           #retryTimes:I
    .restart local v11       #retryTimes:I
    const/4 v14, 0x3

    if-ge v12, v14, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/RIMReadThread;->lastCommand:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move v12, v11

    .end local v11           #retryTimes:I
    .restart local v12       #retryTimes:I
    goto :goto_0

    :cond_1
    move v11, v12

    .line 238
    .end local v12           #retryTimes:I
    .restart local v11       #retryTimes:I
    :cond_2
    if-eqz v8, :cond_4

    .line 240
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/futuredial/RIMReadThread;->ASSERT(II)V

    .line 290
    .end local v1           #bContinue:Z
    .end local v7           #iPos:I
    .end local v9           #iTotalLen:I
    .end local v10           #receivingData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v11           #retryTimes:I
    :cond_3
    :goto_1
    return v8

    .line 244
    .restart local v1       #bContinue:Z
    .restart local v7       #iPos:I
    .restart local v9       #iTotalLen:I
    .restart local v10       #receivingData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .restart local v11       #retryTimes:I
    :cond_4
    const-string v14, "RIMReadThread"

    const-string v15, "\nRecv"

    invoke-static {v14, v15}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v14, "RIMReadThread"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/futuredial/RIMReadThread;->PrintByteAsHexString(Ljava/lang/String;[B)V

    .line 247
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v14, v14

    const/4 v15, 0x7

    if-le v14, v15, :cond_3

    .line 252
    const/4 v7, 0x3

    .line 253
    const/4 v1, 0x0

    .line 254
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v15, 0x0

    aget-byte v14, v14, v15

    const/4 v15, 0x6

    if-ne v14, v15, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 255
    :cond_5
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v14, v14, v7

    const/16 v15, 0x60

    if-ne v14, v15, :cond_6

    .line 257
    sget-object v14, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 258
    const/4 v1, 0x1

    .line 261
    :cond_6
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v14, v14, v7

    const/16 v15, 0x60

    if-eq v14, v15, :cond_7

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v14, v14, v7

    const/16 v15, 0x40

    if-ne v14, v15, :cond_8

    .line 263
    :cond_7
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v15, v7, 0x2

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x8

    const v15, 0xff00

    and-int/2addr v14, v15

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v16, v7, 0x3

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    or-int v3, v14, v15

    .line 264
    .local v3, dataLen:I
    add-int/2addr v9, v3

    .line 265
    new-array v2, v3, [B

    .line 266
    .local v2, dataBuf:[B
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v15, v7, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v2           #dataBuf:[B
    .end local v3           #dataLen:I
    :cond_8
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v14, v14, v7

    const/16 v15, 0x40

    if-ne v14, v15, :cond_9

    .line 272
    new-array v14, v9, [B

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    .line 273
    const/4 v6, 0x0

    .line 274
    .local v6, iDestPos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_9

    .line 276
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 277
    .local v13, singleBuf:[B
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length v14, v13
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v6, v14

    .line 274
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 282
    .end local v5           #i:I
    .end local v6           #iDestPos:I
    .end local v13           #singleBuf:[B
    :cond_9
    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 283
    .end local v1           #bContinue:Z
    .end local v7           #iPos:I
    .end local v9           #iTotalLen:I
    .end local v10           #receivingData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v11           #retryTimes:I
    :catch_0
    move-exception v4

    .line 285
    .local v4, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v4}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 286
    const/4 v8, 0x1

    .line 287
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/futuredial/RIMReadThread;->ASSERT(II)V

    goto/16 :goto_1
.end method

.method private SendData([B)I
    .locals 5
    .parameter "cmdBuf"

    .prologue
    const/4 v4, 0x1

    .line 204
    const/4 v1, 0x1

    .line 206
    .local v1, iRet:I
    :try_start_0
    const-string v2, "RIMReadThread"

    const-string v3, "\nSend"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "RIMReadThread"

    invoke-direct {p0, v2, p1}, Lcom/futuredial/RIMReadThread;->PrintByteAsHexString(Ljava/lang/String;[B)V

    .line 208
    iput-object p1, p0, Lcom/futuredial/RIMReadThread;->lastCommand:[B

    .line 209
    iget-object v2, p0, Lcom/futuredial/RIMReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v3, 0x4e20

    invoke-virtual {v2, p1, v3}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/futuredial/RIMReadThread;->ASSERT(II)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v0}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 216
    const/4 v1, 0x1

    .line 217
    invoke-virtual {p0, v1, v4}, Lcom/futuredial/RIMReadThread;->ASSERT(II)V

    goto :goto_0
.end method

.method private Uninitialize()I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 734
    const/4 v2, 0x1

    .line 737
    .local v2, iRet:I
    new-instance v4, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v4}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 743
    .local v4, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/16 v5, 0x9

    new-array v0, v5, [B

    const/16 v5, 0x40

    aput-byte v5, v0, v6

    iget-byte v5, p0, Lcom/futuredial/RIMReadThread;->cmdType:B

    aput-byte v5, v0, v7

    aput-byte v6, v0, v9

    aput-byte v8, v0, v8

    const/16 v5, 0x4b

    aput-byte v5, v0, v10

    const/4 v5, 0x5

    aput-byte v7, v0, v5

    const/4 v5, 0x6

    aput-byte v6, v0, v5

    const/4 v5, 0x7

    aput-byte v6, v0, v5

    const/16 v5, 0x8

    aput-byte v6, v0, v5

    .line 744
    .local v0, cmd1:[B
    invoke-virtual {p0, v0}, Lcom/futuredial/RIMReadThread;->FormatCommand([B)[B

    move-result-object v0

    .line 745
    invoke-direct {p0, v0}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v2

    if-eqz v2, :cond_0

    move v3, v2

    .line 791
    .end local v2           #iRet:I
    .local v3, iRet:I
    :goto_0
    return v3

    .line 753
    .end local v3           #iRet:I
    .restart local v2       #iRet:I
    :cond_0
    invoke-direct {p0, v4}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v2

    .line 755
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto :goto_0

    .line 764
    .end local v3           #iRet:I
    .restart local v2       #iRet:I
    :cond_1
    const/4 v5, 0x7

    new-array v1, v5, [B

    const/16 v5, 0x40

    aput-byte v5, v1, v6

    iget-byte v5, p0, Lcom/futuredial/RIMReadThread;->cmdType:B

    aput-byte v5, v1, v7

    aput-byte v6, v1, v9

    aput-byte v7, v1, v8

    const/16 v5, 0x4d

    aput-byte v5, v1, v10

    const/4 v5, 0x5

    aput-byte v6, v1, v5

    const/4 v5, 0x6

    aput-byte v6, v1, v5

    .line 765
    .local v1, cmd2:[B
    invoke-virtual {p0, v1}, Lcom/futuredial/RIMReadThread;->FormatCommand([B)[B

    move-result-object v1

    .line 766
    invoke-direct {p0, v1}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    move-result v2

    if-eqz v2, :cond_2

    move v3, v2

    .line 768
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto :goto_0

    .line 774
    .end local v3           #iRet:I
    .restart local v2       #iRet:I
    :cond_2
    invoke-direct {p0, v4}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v2

    if-eqz v2, :cond_3

    move v3, v2

    .line 776
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto :goto_0

    .line 778
    .end local v3           #iRet:I
    .restart local v2       #iRet:I
    :cond_3
    sget-object v5, Lcom/futuredial/RIMReadThread;->cmdAck06:[B

    invoke-direct {p0, v5}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    sget-object v5, Lcom/futuredial/RIMReadThread;->cmdAck41:[B

    invoke-direct {p0, v5}, Lcom/futuredial/RIMReadThread;->SendData([B)I

    .line 780
    invoke-direct {p0, v4}, Lcom/futuredial/RIMReadThread;->RecvData(Lcom/futuredial/bluetooth/ByteArrayData;)I

    move v3, v2

    .line 791
    .end local v2           #iRet:I
    .restart local v3       #iRet:I
    goto :goto_0
.end method


# virtual methods
.method CheckSum([BI)I
    .locals 3
    .parameter "bs"
    .parameter "dataLen"

    .prologue
    .line 808
    const v0, 0xae9e

    .line 809
    .local v0, crc:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 810
    aget-byte v2, p1, v1

    invoke-virtual {p0, v0, v2}, Lcom/futuredial/RIMReadThread;->Crc16(IB)I

    move-result v0

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    :cond_0
    xor-int/lit16 v0, v0, 0x7f0

    .line 813
    return v0
.end method

.method Crc16(IB)I
    .locals 5
    .parameter "aa"
    .parameter "bb"

    .prologue
    .line 796
    move v0, p1

    .line 797
    .local v0, crcval:I
    const v2, 0x8408

    .line 798
    .local v2, poly:I
    xor-int/2addr v0, p2

    .line 800
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 801
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    shr-int/lit8 v3, v0, 0x1

    xor-int v0, v3, v2

    .line 800
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 803
    :cond_1
    return v0
.end method

.method protected DoComm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 130
    const-string v4, "RIMReadThread"

    const-string v5, "enter DoComm"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput v7, p0, Lcom/futuredial/RIMReadThread;->ThreadErrorCode:I

    .line 134
    const/4 v2, 0x0

    .line 136
    .local v2, res:I
    :try_start_0
    sget v4, Lcom/futuredial/RIMReadThread;->CancelFlag:I

    if-nez v4, :cond_1

    .line 138
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 175
    :catch_0
    move-exception v3

    .line 178
    .local v3, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    iput-boolean v7, p0, Lcom/futuredial/RIMReadThread;->bPopResume:Z

    .line 179
    invoke-virtual {p0, v7}, Lcom/futuredial/RIMReadThread;->ASSERT(I)V

    .line 180
    const/16 v4, 0x67

    iput v4, p0, Lcom/futuredial/RIMReadThread;->ThreadErrorCode:I

    .line 194
    .end local v3           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :cond_0
    :goto_0
    const-string v4, "RIMReadThread"

    const-string v5, "Close port"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/futuredial/RIMReadThread;->Close(Ljava/lang/Boolean;)V

    .line 197
    const-string v4, "RIMReadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ThreadErrorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/futuredial/RIMReadThread;->ThreadErrorCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v4, "RIMReadThread"

    const-string v5, "exit DoComm"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 141
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/futuredial/RIMReadThread;->OpenRimPort()V

    .line 143
    invoke-virtual {p0}, Lcom/futuredial/RIMReadThread;->SetIsCompleted()V

    .line 144
    invoke-virtual {p0}, Lcom/futuredial/RIMReadThread;->GetExitDotask()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4
    :try_end_1
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 182
    :catch_1
    move-exception v0

    .line 183
    .local v0, ce:Lcom/futuredial/CancelException;
    const-string v4, "RIMReadThread"

    const-string v5, "Cancel Msg!!!"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v4, 0x4

    iput v4, p0, Lcom/futuredial/RIMReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 149
    .end local v0           #ce:Lcom/futuredial/CancelException;
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    iput v4, p0, Lcom/futuredial/RIMReadThread;->ThreadErrorCode:I

    .line 152
    const-string v4, "RIMReadThread"

    const-string v5, "begin to initialize rim connection"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/futuredial/RIMReadThread;->Initialize()I

    move-result v2

    .line 154
    iput v2, p0, Lcom/futuredial/RIMReadThread;->ThreadErrorCode:I

    .line 155
    const-string v4, "RIMReadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-nez v2, :cond_3

    .line 160
    const-string v4, "RIMReadThread"

    const-string v5, "begin to read phone data"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/futuredial/RIMReadThread;->ReadPhoneData()I

    move-result v2

    .line 162
    iput v2, p0, Lcom/futuredial/RIMReadThread;->ThreadErrorCode:I

    .line 163
    const-string v4, "RIMReadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_3
    if-nez v2, :cond_0

    .line 169
    const-string v4, "RIMReadThread"

    const-string v5, "begin to disconnect rim connection"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/futuredial/RIMReadThread;->Uninitialize()I

    move-result v2

    .line 171
    const-string v4, "RIMReadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 186
    :catch_2
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    invoke-virtual {p0, v7}, Lcom/futuredial/RIMReadThread;->ASSERT(I)V

    .line 190
    iput v7, p0, Lcom/futuredial/RIMReadThread;->ThreadErrorCode:I

    goto/16 :goto_0
.end method

.method FormatCommand([B)[B
    .locals 5
    .parameter "bs"

    .prologue
    const/4 v4, 0x0

    .line 818
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, p1, v2}, Lcom/futuredial/RIMReadThread;->CheckSum([BI)I

    move-result v0

    .line 819
    .local v0, checkSum:I
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 820
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 821
    array-length v2, p1

    add-int/lit8 v2, v2, 0x6

    new-array v1, v2, [B

    .line 822
    .local v1, command:[B
    const/16 v2, -0x27

    aput-byte v2, v1, v4

    .line 823
    const/4 v2, 0x1

    const/16 v3, -0x52

    aput-byte v3, v1, v2

    .line 824
    const/4 v2, 0x2

    const/4 v3, -0x5

    aput-byte v3, v1, v2

    .line 825
    const/4 v2, 0x3

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 826
    array-length v2, p1

    add-int/lit8 v2, v2, 0x3

    const/16 v3, -0x41

    aput-byte v3, v1, v2

    .line 827
    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    const/16 v3, -0x16

    aput-byte v3, v1, v2

    .line 828
    array-length v2, p1

    add-int/lit8 v2, v2, 0x5

    const/16 v3, -0x63

    aput-byte v3, v1, v2

    .line 829
    return-object v1
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/futuredial/RIMReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/RIMReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/RIMReadThread$1;-><init>(Lcom/futuredial/RIMReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 84
    return-void
.end method
