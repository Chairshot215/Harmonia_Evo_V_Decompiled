.class public Lcom/futuredial/vxx/VxxParser;
.super Ljava/lang/Object;
.source "VxxParser.java"

# interfaces
.implements Lcom/futuredial/IParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/vxx/VxxParser$SwitchPos;,
        Lcom/futuredial/vxx/VxxParser$StringPos;
    }
.end annotation


# static fields
.field public static bQPBWBlank:Z

.field public static entryCount:I


# instance fields
.field public final LOGTAG:Ljava/lang/String;

.field public final VXXTYPE_TASK:I

.field public final VXXTYPE_VCALENDAR:I

.field public final VXXTYPE_VCARD:I

.field public final VXXTYPE_VMSG:I

.field private bFirstPackage:Z

.field private bIncludeMultiEntities:Z

.field private iPimType:I

.field private leftDataBuf:[B

.field private m_objApp:Landroid/content/Context;

.field private miBufferCursor:I

.field private objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

.field private strCalenderProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/futuredial/vxx/VxxParser;->bQPBWBlank:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "VxxParser"

    iput-object v0, p0, Lcom/futuredial/vxx/VxxParser;->LOGTAG:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/futuredial/vxx/VxxParser;->VXXTYPE_VCARD:I

    .line 50
    iput v2, p0, Lcom/futuredial/vxx/VxxParser;->VXXTYPE_VCALENDAR:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/futuredial/vxx/VxxParser;->VXXTYPE_VMSG:I

    .line 52
    const/4 v0, 0x6

    iput v0, p0, Lcom/futuredial/vxx/VxxParser;->VXXTYPE_TASK:I

    .line 56
    iput v1, p0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    .line 65
    iput-boolean v2, p0, Lcom/futuredial/vxx/VxxParser;->bFirstPackage:Z

    .line 40
    new-instance v0, Lcom/futuredial/vxx/VxxConfig;

    invoke-direct {v0}, Lcom/futuredial/vxx/VxxConfig;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    .line 41
    iput v1, p0, Lcom/futuredial/vxx/VxxParser;->iPimType:I

    .line 42
    iput v1, p0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/VxxParser;->strCalenderProperty:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/futuredial/vxx/VxxParser;->bIncludeMultiEntities:Z

    .line 45
    return-void
.end method

.method private FilterCRLF([BIILcom/futuredial/bluetooth/ByteArrayData;)I
    .locals 14
    .parameter "data"
    .parameter "start"
    .parameter "end"
    .parameter "retBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v4, 0x0

    .line 459
    .local v4, iCursor:I
    sub-int v12, p3, p2

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x2

    new-array v12, v12, [B

    move-object/from16 v0, p4

    iput-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    .line 461
    move/from16 v6, p2

    .line 462
    .local v6, iLineHead:I
    move/from16 v8, p2

    .line 464
    .local v8, iLineTail:I
    const/4 v2, 0x0

    .line 465
    .local v2, bQuotedPrintable:Z
    const/4 v1, 0x0

    .line 467
    .local v1, bEndByEqual:Z
    const/4 v9, 0x1

    .local v9, iStep:I
    move v5, v4

    .line 468
    .end local v4           #iCursor:I
    .local v5, iCursor:I
    :goto_0
    move/from16 v0, p3

    if-ge v6, v0, :cond_11

    .line 470
    const-string v12, "\n"

    move/from16 v0, p3

    invoke-direct {p0, p1, v0, v12, v6}, Lcom/futuredial/vxx/VxxParser;->FindString([BILjava/lang/String;I)I

    move-result v3

    .line 471
    .local v3, iCRLFIndex:I
    const/4 v12, -0x1

    if-ne v3, v12, :cond_0

    .line 473
    move/from16 v8, p3

    .line 474
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    sub-int v13, v8, v6

    invoke-static {p1, v6, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    sub-int v12, v8, v6

    add-int v4, v5, v12

    .line 476
    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    const/16 v13, 0xd

    aput-byte v13, v12, v4

    .line 477
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    const/16 v13, 0xa

    aput-byte v13, v12, v5

    .line 577
    .end local v3           #iCRLFIndex:I
    :goto_1
    return v4

    .line 482
    .end local v4           #iCursor:I
    .restart local v3       #iCRLFIndex:I
    .restart local v5       #iCursor:I
    :cond_0
    if-le v3, v6, :cond_1

    add-int/lit8 v12, v3, -0x1

    aget-byte v12, p1, v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_1

    .line 484
    add-int/lit8 v3, v3, -0x1

    .line 485
    const/4 v9, 0x2

    .line 496
    :goto_2
    if-ne v6, v3, :cond_3

    .line 498
    if-eqz v2, :cond_10

    if-eqz v1, :cond_10

    .line 500
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    const/16 v13, 0xd

    aput-byte v13, v12, v5

    .line 501
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    const/16 v13, 0xa

    aput-byte v13, v12, v4

    .line 502
    const/4 v2, 0x0

    .line 503
    const/4 v1, 0x0

    move v4, v5

    .line 506
    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    :goto_3
    add-int v6, v3, v9

    move v5, v4

    .line 507
    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    goto :goto_0

    .line 487
    :cond_1
    add-int/lit8 v12, v3, 0x1

    move/from16 v0, p3

    if-ge v12, v0, :cond_2

    add-int/lit8 v12, v3, 0x1

    aget-byte v12, p1, v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_2

    .line 489
    const/4 v9, 0x2

    goto :goto_2

    .line 493
    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    .line 510
    :cond_3
    move v8, v3

    .line 511
    new-instance v11, Ljava/lang/String;

    sub-int v12, v8, v6

    iget-object v13, p0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    iget-object v13, v13, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCard:Ljava/lang/String;

    invoke-direct {v11, p1, v6, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 512
    .local v11, strLine:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 514
    .local v7, iLineLen:I
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 516
    if-lez v7, :cond_5

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_5

    .line 518
    add-int/lit8 v8, v8, -0x1

    .line 519
    const/4 v12, 0x1

    if-le v7, v12, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_4

    sget-boolean v12, Lcom/futuredial/vxx/VxxParser;->bQPBWBlank:Z

    if-eqz v12, :cond_4

    .line 520
    add-int/lit8 v6, v6, 0x1

    .line 521
    :cond_4
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    sub-int v13, v8, v6

    invoke-static {p1, v6, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    sub-int v12, v8, v6

    add-int v4, v5, v12

    .line 537
    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    :goto_4
    add-int v6, v3, v9

    move v5, v4

    .line 538
    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    goto/16 :goto_0

    .line 526
    :cond_5
    if-lez v7, :cond_6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_6

    sget-boolean v12, Lcom/futuredial/vxx/VxxParser;->bQPBWBlank:Z

    if-eqz v12, :cond_6

    .line 527
    add-int/lit8 v6, v6, 0x1

    .line 528
    :cond_6
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    sub-int v13, v8, v6

    invoke-static {p1, v6, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    sub-int v12, v8, v6

    add-int v4, v5, v12

    .line 530
    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    const/16 v13, 0xd

    aput-byte v13, v12, v4

    .line 531
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    const/16 v13, 0xa

    aput-byte v13, v12, v5

    .line 533
    const/4 v2, 0x0

    .line 534
    const/4 v1, 0x0

    goto :goto_4

    .line 541
    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    :cond_7
    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_8

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_a

    .line 542
    :cond_8
    if-lez v7, :cond_f

    .line 544
    add-int/lit8 v4, v5, -0x2

    .line 545
    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_9

    add-int/lit8 v6, v6, 0x1

    .line 547
    :cond_9
    :goto_5
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    sub-int v13, v8, v6

    invoke-static {p1, v6, v12, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    sub-int v12, v8, v6

    add-int/2addr v4, v12

    .line 549
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    const/16 v13, 0xd

    aput-byte v13, v12, v4

    .line 550
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    const/16 v13, 0xa

    aput-byte v13, v12, v5

    .line 574
    :goto_6
    add-int v6, v3, v9

    move v5, v4

    .line 575
    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    goto/16 :goto_0

    .line 552
    :cond_a
    const/4 v12, 0x0

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 553
    .local v10, sPropNameAndParam:Ljava/lang/String;
    const-string v12, "QUOTED-PRINTABLE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_c

    const/4 v2, 0x0

    .line 554
    :goto_7
    if-eqz v2, :cond_b

    .line 556
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_d

    const/4 v1, 0x1

    .line 559
    :cond_b
    :goto_8
    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    .line 561
    add-int/lit8 v8, v8, -0x1

    .line 562
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    sub-int v13, v8, v6

    invoke-static {p1, v6, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    sub-int v12, v8, v6

    add-int v4, v5, v12

    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    goto :goto_6

    .line 553
    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    :cond_c
    const/4 v2, 0x1

    goto :goto_7

    .line 556
    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 567
    :cond_e
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    sub-int v13, v8, v6

    invoke-static {p1, v6, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    sub-int v12, v8, v6

    add-int v4, v5, v12

    .line 569
    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    const/16 v13, 0xd

    aput-byte v13, v12, v4

    .line 570
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    const/16 v13, 0xa

    aput-byte v13, v12, v5

    goto :goto_6

    .end local v4           #iCursor:I
    .end local v10           #sPropNameAndParam:Ljava/lang/String;
    .restart local v5       #iCursor:I
    :cond_f
    move v4, v5

    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    goto/16 :goto_5

    .end local v4           #iCursor:I
    .end local v7           #iLineLen:I
    .end local v11           #strLine:Ljava/lang/String;
    .restart local v5       #iCursor:I
    :cond_10
    move v4, v5

    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    goto/16 :goto_3

    .end local v3           #iCRLFIndex:I
    .end local v4           #iCursor:I
    .restart local v5       #iCursor:I
    :cond_11
    move v4, v5

    .end local v5           #iCursor:I
    .restart local v4       #iCursor:I
    goto/16 :goto_1
.end method

.method private FindString([BILjava/lang/String;I)I
    .locals 7
    .parameter "bytebuffer"
    .parameter "bufferlen"
    .parameter "destStr"
    .parameter "iStart"

    .prologue
    .line 582
    const/4 v3, -0x1

    .line 584
    .local v3, iRet:I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 607
    .end local v3           #iRet:I
    :cond_0
    :goto_0
    return v3

    .line 589
    .restart local v3       #iRet:I
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 590
    .local v1, destCharBuf:[B
    move v2, p4

    .local v2, i:I
    :goto_1
    array-length v5, v1

    add-int/2addr v5, v2

    if-gt v5, p2, :cond_0

    .line 592
    const/4 v0, 0x1

    .line 593
    .local v0, bFind:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 595
    add-int v5, v2, v4

    aget-byte v5, p1, v5

    aget-byte v6, v1, v4

    if-eq v5, v6, :cond_3

    .line 597
    const/4 v0, 0x0

    .line 601
    :cond_2
    if-eqz v0, :cond_4

    move v3, v2

    .line 603
    goto :goto_0

    .line 593
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 590
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I
    .locals 12
    .parameter "bytebuffer"
    .parameter "bufferlen"
    .parameter "destStr"
    .parameter "iStart"
    .parameter "strPos"

    .prologue
    .line 238
    const/4 v4, -0x1

    .line 240
    .local v4, iRet:I
    invoke-virtual/range {p5 .. p5}, Lcom/futuredial/vxx/VxxParser$StringPos;->ResetStrPos()V

    .line 242
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    move v5, v4

    .line 284
    .end local v4           #iRet:I
    .local v5, iRet:I
    :goto_0
    return v5

    .line 247
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_0
    move/from16 v3, p4

    .line 248
    .local v3, iPartialIndex:I
    const/16 v6, 0x200

    .line 249
    .local v6, iStep:I
    new-instance v7, Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 250
    .local v7, strLocal:Ljava/lang/String;
    :goto_1
    if-ge v3, p2, :cond_2

    .line 252
    add-int v9, v3, v6

    if-le v9, p2, :cond_1

    .line 254
    sub-int v6, p2, v3

    .line 257
    :cond_1
    const-string v8, ""

    .line 260
    .local v8, strStep:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/String;

    .end local v8           #strStep:Ljava/lang/String;
    const-string v9, "ISO-8859-1"

    invoke-direct {v8, p1, v3, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .restart local v8       #strStep:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 269
    invoke-virtual {v7, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 270
    .local v2, iIndex:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    .line 272
    add-int v9, p4, v2

    move-object/from16 v0, p5

    iput v9, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    .line 273
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, p5

    iput v9, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrLen:I

    .line 274
    move-object/from16 v0, p5

    iget v9, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    move-object/from16 v0, p5

    iput v9, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    .line 275
    const/4 v4, 0x0

    .end local v2           #iIndex:I
    .end local v8           #strStep:Ljava/lang/String;
    :cond_2
    move v5, v4

    .line 284
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 262
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :catch_0
    move-exception v1

    .line 264
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v9, "FindStringInByteArray"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v4

    .line 265
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 280
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v5           #iRet:I
    .restart local v2       #iIndex:I
    .restart local v4       #iRet:I
    .restart local v8       #strStep:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v6

    .line 282
    goto :goto_1
.end method

.method private FindStringInByteArrayUnicode([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;Lcom/futuredial/vxx/VxxParser$SwitchPos;)I
    .locals 13
    .parameter "bytebuffer"
    .parameter "bufferlen"
    .parameter "destStr"
    .parameter "iStart"
    .parameter "strPos"
    .parameter "switchPos"

    .prologue
    .line 295
    const/4 v5, -0x1

    .line 297
    .local v5, iRet:I
    invoke-virtual/range {p5 .. p5}, Lcom/futuredial/vxx/VxxParser$StringPos;->ResetStrPos()V

    .line 299
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    move v6, v5

    .line 347
    .end local v5           #iRet:I
    .local v6, iRet:I
    :goto_0
    return v6

    .line 304
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_0
    move/from16 v4, p4

    .line 305
    .local v4, iPartialIndex:I
    const/16 v7, 0x200

    .line 306
    .local v7, iStep:I
    new-instance v8, Ljava/lang/String;

    const-string v10, ""

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 307
    .local v8, strLocal:Ljava/lang/String;
    :goto_1
    if-ge v4, p2, :cond_3

    .line 309
    add-int v10, v4, v7

    if-le v10, p2, :cond_1

    .line 311
    sub-int v7, p2, v4

    .line 314
    :cond_1
    const-string v9, ""

    .line 317
    .local v9, strStep:Ljava/lang/String;
    add-int v10, v4, v7

    :try_start_0
    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/futuredial/vxx/VxxParser$SwitchPos;->m_iSwitchPos:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_2

    .line 319
    add-int v2, v4, v7

    .line 320
    .local v2, iEnd:I
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/futuredial/vxx/VxxParser$SwitchPos;->m_iSwitchPos:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, p1, v10, v2}, Lcom/futuredial/vxx/VxxParser;->SwitchByte([BII)V

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p6

    iput-object v10, v0, Lcom/futuredial/vxx/VxxParser$SwitchPos;->m_iSwitchPos:Ljava/lang/Integer;

    .line 323
    .end local v2           #iEnd:I
    :cond_2
    new-instance v9, Ljava/lang/String;

    .end local v9           #strStep:Ljava/lang/String;
    const-string v10, "UNICODE"

    invoke-direct {v9, p1, v4, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .restart local v9       #strStep:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 332
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 333
    .local v3, iIndex:I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_4

    .line 335
    mul-int/lit8 v10, v3, 0x2

    add-int v10, v10, p4

    move-object/from16 v0, p5

    iput v10, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    .line 336
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p5

    iput v10, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrLen:I

    .line 337
    move-object/from16 v0, p5

    iget v10, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    move-object/from16 v0, p5

    iput v10, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    .line 338
    const/4 v5, 0x0

    .end local v3           #iIndex:I
    .end local v9           #strStep:Ljava/lang/String;
    :cond_3
    move v6, v5

    .line 347
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 325
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "FindStringInByteArrayUnicode"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v5

    .line 328
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto/16 :goto_0

    .line 343
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v6           #iRet:I
    .restart local v3       #iIndex:I
    .restart local v5       #iRet:I
    .restart local v9       #strStep:Ljava/lang/String;
    :cond_4
    add-int/2addr v4, v7

    .line 345
    goto/16 :goto_1
.end method

.method private IncludeMultiEntities([BI)I
    .locals 48
    .parameter "vxxbuffer"
    .parameter "bufferlen"

    .prologue
    .line 913
    const/16 v47, 0x0

    .line 915
    .local v47, iRet:I
    const/16 v45, -0x1

    .line 916
    .local v45, iCalendarPropertyBegin:I
    const/16 v46, -0x1

    .line 918
    .local v46, iCalendarPropertyEnd:I
    const-string v5, "BEGIN:VCALENDAR"

    .line 919
    .local v5, strBeingVCal:Ljava/lang/String;
    const-string v41, "\nEND:VCALENDAR"

    .line 920
    .local v41, strEndVCal:Ljava/lang/String;
    const-string v11, "BEGIN:VEVENT"

    .line 921
    .local v11, strBeginVEvent:Ljava/lang/String;
    const-string v23, "\nEND:VEVENT"

    .line 922
    .local v23, strEndVEvent:Ljava/lang/String;
    const-string v17, "BEGIN:VTODO"

    .line 923
    .local v17, strBeginVTodo:Ljava/lang/String;
    const-string v29, "\nEND:VTODO"

    .line 925
    .local v29, strEndVTodo:Ljava/lang/String;
    new-instance v7, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 926
    .local v7, BeginVCalendarPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    new-instance v43, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 927
    .local v43, EndVCalendarPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    new-instance v13, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 928
    .local v13, BeginVEventPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    new-instance v25, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 929
    .local v25, EndVEventPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    new-instance v19, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 930
    .local v19, BeginVTodoPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    new-instance v31, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 933
    .local v31, EndVTodoPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 934
    iget v2, v7, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 936
    const-string v2, "IncludeMultiCalendarEntities"

    const-string v3, "can not find BEGIN:VCALENDAR, return 1 for that Sharp GX40 returns EVENT and TODO without VCALENDAR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const-string v2, "\r\nVERSION:1.0\r\n"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/futuredial/vxx/VxxParser;->strCalenderProperty:Ljava/lang/String;

    .line 938
    const/4 v2, 0x1

    .line 1021
    :goto_0
    return v2

    .line 940
    :cond_0
    iget v0, v7, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    move/from16 v45, v0

    .line 941
    iget v2, v7, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    add-int/lit16 v2, v2, 0xc8

    move/from16 v0, p2

    if-lt v2, v0, :cond_1

    move/from16 v10, p2

    .line 942
    .local v10, templen:I
    :goto_1
    iget v12, v7, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    .local v12, tempstart:I
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 944
    invoke-direct/range {v8 .. v13}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, v10

    move/from16 v18, v12

    .line 946
    invoke-direct/range {v14 .. v19}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 947
    iget v2, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    move-object/from16 v0, v19

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 949
    const-string v2, "IncludeMultiCalendarEntities"

    const-string v3, "can not find BEGIN:VEVENT or BEGIN:VTODO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move/from16 v22, v10

    move/from16 v24, v12

    .line 952
    invoke-direct/range {v20 .. v25}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    move-object/from16 v26, p0

    move-object/from16 v27, p1

    move/from16 v28, v10

    move/from16 v30, v12

    .line 954
    invoke-direct/range {v26 .. v31}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 955
    move-object/from16 v0, v25

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, v31

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 957
    const-string v2, "IncludeMultiCalendarEntities"

    const-string v3, "can not find END:VEVENT or END:VTODO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v2, 0x2

    goto :goto_0

    .line 941
    .end local v10           #templen:I
    .end local v12           #tempstart:I
    :cond_1
    iget v2, v7, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    add-int/lit16 v10, v2, 0xc8

    goto :goto_1

    .line 961
    .restart local v10       #templen:I
    .restart local v12       #tempstart:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    .line 963
    :cond_3
    const/16 v44, 0x1

    .line 964
    .local v44, bEvent:Z
    move-object/from16 v35, v23

    .line 965
    .local v35, strTempEnd:Ljava/lang/String;
    iget v12, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    .line 966
    iget v0, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    move/from16 v46, v0

    .line 967
    iget v2, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    move-object/from16 v0, v19

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget v2, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    move-object/from16 v0, v19

    iget v3, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    if-gt v2, v3, :cond_5

    :cond_4
    iget v2, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, v19

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 970
    :cond_5
    const/16 v44, 0x0

    .line 971
    move-object/from16 v35, v29

    .line 972
    move-object/from16 v0, v19

    iget v12, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    .line 973
    move-object/from16 v0, v19

    iget v0, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    move/from16 v46, v0

    .line 977
    :cond_6
    new-instance v37, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .local v37, TempEndPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    move-object/from16 v32, p0

    move-object/from16 v33, p1

    move/from16 v34, p2

    move/from16 v36, v12

    .line 978
    invoke-direct/range {v32 .. v37}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 979
    move-object/from16 v0, v37

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 981
    const-string v2, "IncludeMultiCalendarEntities"

    const-string v3, "can not find the end of the first calendar entity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 986
    :cond_7
    move-object/from16 v0, v37

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    add-int/lit16 v2, v2, 0xc8

    move/from16 v0, p2

    if-lt v2, v0, :cond_8

    move/from16 v10, p2

    .line 987
    :goto_2
    move-object/from16 v0, v37

    iget v12, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 989
    invoke-direct/range {v8 .. v13}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, v10

    move/from16 v18, v12

    .line 991
    invoke-direct/range {v14 .. v19}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 993
    iget v2, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    move-object/from16 v0, v19

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    move-object/from16 v38, p0

    move-object/from16 v39, p1

    move/from16 v40, v10

    move/from16 v42, v12

    .line 996
    invoke-direct/range {v38 .. v43}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 997
    move-object/from16 v0, v43

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 999
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 986
    :cond_8
    move-object/from16 v0, v37

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    add-int/lit16 v10, v2, 0xc8

    goto :goto_2

    .line 1001
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1003
    :cond_a
    iget v10, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    .line 1004
    iget v2, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    move-object/from16 v0, v19

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    move-object/from16 v0, v19

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    iget v3, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    if-lt v2, v3, :cond_c

    :cond_b
    iget v2, v13, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    move-object/from16 v0, v19

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    .line 1007
    :cond_c
    move-object/from16 v0, v19

    iget v10, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    :cond_d
    move-object/from16 v38, p0

    move-object/from16 v39, p1

    move/from16 v40, v10

    move/from16 v42, v12

    .line 1010
    invoke-direct/range {v38 .. v43}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 1011
    move-object/from16 v0, v43

    iget v2, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    .line 1013
    const/16 v47, 0x1

    .line 1014
    new-instance v2, Ljava/lang/String;

    sub-int v3, v46, v45

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/futuredial/vxx/VxxParser;->strCalenderProperty:Ljava/lang/String;

    :goto_3
    move/from16 v2, v47

    .line 1021
    goto/16 :goto_0

    .line 1018
    :cond_e
    const/16 v47, 0x0

    goto :goto_3
.end method

.method private ParseVBookMark(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 13
    .parameter "strVBKM"
    .parameter "itemarray"

    .prologue
    .line 1334
    const/4 v9, 0x0

    .line 1336
    .local v9, iRet:I
    :try_start_0
    new-instance v12, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v4, "UTF_8"

    invoke-direct {v12, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    .local v12, strTemp:Ljava/lang/String;
    move-object p1, v12

    .line 1342
    .end local v12           #strTemp:Ljava/lang/String;
    :goto_0
    const-string v10, "BEGIN:VBKM"

    .line 1343
    .local v10, strBeginVBKM:Ljava/lang/String;
    const-string v11, "\nEND:VBKM"

    .line 1345
    .local v11, strEndVBKM:Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1346
    .local v7, iBeginVBKM:I
    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 1347
    .local v8, iEndVBKM:I
    const/4 v1, -0x1

    if-eq v7, v1, :cond_0

    const/4 v1, -0x1

    if-ne v8, v1, :cond_1

    .line 1349
    :cond_0
    const-string v1, "VxxParser::ParseVBookMark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VBKM is not whole:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const/4 v1, 0x1

    .line 1372
    :goto_1
    return v1

    .line 1338
    .end local v7           #iBeginVBKM:I
    .end local v8           #iEndVBKM:I
    .end local v10           #strBeginVBKM:Ljava/lang/String;
    .end local v11           #strEndVBKM:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1340
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1352
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v7       #iBeginVBKM:I
    .restart local v8       #iEndVBKM:I
    .restart local v10       #strBeginVBKM:Ljava/lang/String;
    .restart local v11       #strEndVBKM:Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v7, v1

    .line 1353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BEGIN:VCARD"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\nEND:VCARD"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1354
    .local v2, sVCard:Ljava/lang/String;
    const-string v1, "BEGIN:ENV"

    const-string v4, ""

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\nEND:ENV"

    const-string v5, "\n"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1356
    new-instance v0, Lcom/futuredial/vxx/vcard/VCardParser;

    invoke-direct {v0}, Lcom/futuredial/vxx/vcard/VCardParser;-><init>()V

    .line 1357
    .local v0, vcardParser:Lcom/futuredial/vxx/vcard/VCardParser;
    new-instance v3, Lcom/futuredial/publicobj/Item;

    invoke-direct {v3}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 1359
    .local v3, item:Lcom/futuredial/publicobj/Item;
    iget-object v1, p0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/futuredial/vxx/vcard/VCardParser;->ParseOneVCard(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1361
    const/4 v9, 0x0

    .line 1362
    invoke-virtual {p2, v3}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 1364
    sget v1, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    :goto_2
    move v1, v9

    .line 1372
    goto :goto_1

    .line 1368
    :cond_2
    const-string v1, "VxxParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail in parsing VBKM - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const/4 v9, 0x1

    goto :goto_2
.end method

.method private ParseVCalendar(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 22
    .parameter "strVCalendar"
    .parameter "itemarray"

    .prologue
    .line 859
    const-string v19, "ParseVCalendar(SingleEntity)"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "There are "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes in vcalendar string."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v9, 0x0

    .line 863
    .local v9, iRet:I
    const-string v12, "BEGIN:VCALENDAR"

    .line 864
    .local v12, strBeginVCal:Ljava/lang/String;
    const-string v15, "\nEND:VCALENDAR"

    .line 865
    .local v15, strEndVCal:Ljava/lang/String;
    const-string v13, "BEGIN:VEVENT"

    .line 866
    .local v13, strBeginVEvent:Ljava/lang/String;
    const-string v16, "\nEND:VEVENT"

    .line 867
    .local v16, strEndVEvent:Ljava/lang/String;
    const-string v14, "BEGIN:VTODO"

    .line 868
    .local v14, strBeginVTodo:Ljava/lang/String;
    const-string v17, "\nEND:VTODO"

    .line 870
    .local v17, strEndVTodo:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 871
    .local v3, iBeginVCal:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 872
    .local v6, iEndVCal:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_0

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_1

    .line 874
    :cond_0
    const-string v19, "VxxParser::ParseVCalendar"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "VCalendar is not whole:  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/16 v19, 0x1

    .line 905
    :goto_0
    return v19

    .line 877
    :cond_1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    add-int v6, v6, v19

    .line 879
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 882
    .local v11, sVCalEntity:Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 883
    .local v4, iBeginVEvent:I
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 884
    .local v7, iEndVEvent:I
    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 885
    .local v5, iBeginVTodo:I
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 886
    .local v8, iEndVTodo:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_2

    .line 888
    const/16 v19, 0x0

    goto :goto_0

    .line 891
    :cond_2
    new-instance v18, Lcom/futuredial/vxx/vcalendar/VCalParser;

    invoke-direct/range {v18 .. v18}, Lcom/futuredial/vxx/vcalendar/VCalParser;-><init>()V

    .line 892
    .local v18, vcalParser:Lcom/futuredial/vxx/vcalendar/VCalParser;
    new-instance v10, Lcom/futuredial/publicobj/Item;

    invoke-direct {v10}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 893
    .local v10, item:Lcom/futuredial/publicobj/Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v11, v10, v2}, Lcom/futuredial/vxx/vcalendar/VCalParser;->ParseOneVCalendar(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;Z)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 895
    const/4 v9, 0x0

    .line 896
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 898
    sget v19, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    add-int/lit8 v19, v19, 0x1

    sput v19, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    :goto_1
    move/from16 v19, v9

    .line 905
    goto :goto_0

    .line 902
    :cond_3
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private ParseVCalendar([BILcom/futuredial/publicobj/ItemArray;Z)I
    .locals 46
    .parameter "vxxbuffer"
    .parameter "bufferlen"
    .parameter "itemarray"
    .parameter "bSingleEntity"

    .prologue
    .line 650
    const-string v4, "ParseVCalendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There are "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " bytes in vcalendar buffer."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v38, 0x0

    .line 654
    .local v38, iRet:I
    const-string v25, "BEGIN:VCALENDAR"

    .line 655
    .local v25, strBeginVCal:Ljava/lang/String;
    const-string v31, "\nEND:VCALENDAR"

    .line 656
    .local v31, strEndVCal:Ljava/lang/String;
    const-string v7, "BEGIN:VEVENT"

    .line 657
    .local v7, strBeginVEvent:Ljava/lang/String;
    const-string v41, "\nEND:VEVENT"

    .line 658
    .local v41, strEndVEvent:Ljava/lang/String;
    const-string v13, "BEGIN:VTODO"

    .line 659
    .local v13, strBeginVTodo:Ljava/lang/String;
    const-string v42, "\nEND:VTODO"

    .line 660
    .local v42, strEndVTodo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_0

    .line 662
    const/16 v4, 0x2718

    .line 853
    :goto_0
    return v4

    .line 664
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    move/from16 v0, p2

    if-le v4, v0, :cond_1

    .line 666
    const/16 v4, 0x2717

    goto :goto_0

    .line 669
    :cond_1
    const-string v40, ""

    .line 709
    .local v40, sVCalEntity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/futuredial/vxx/VxxParser;->bFirstPackage:Z

    if-eqz v4, :cond_6

    .line 711
    const-string v4, "BEGIN:VCALENDAR"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, p2

    if-ge v0, v4, :cond_2

    .line 713
    const/16 v4, 0x2717

    goto :goto_0

    .line 715
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/futuredial/vxx/VxxParser;->bFirstPackage:Z

    .line 716
    invoke-direct/range {p0 .. p2}, Lcom/futuredial/vxx/VxxParser;->IncludeMultiEntities([BI)I

    move-result v35

    .line 717
    .local v35, iIncludeMultiEntities:I
    const/4 v4, -0x1

    move/from16 v0, v35

    if-ne v4, v0, :cond_3

    .line 719
    const/4 v4, 0x1

    goto :goto_0

    .line 721
    :cond_3
    const/4 v4, 0x3

    move/from16 v0, v35

    if-ne v4, v0, :cond_4

    .line 723
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/futuredial/vxx/VxxParser;->bFirstPackage:Z

    .line 724
    const/16 v4, 0x2717

    goto :goto_0

    .line 726
    :cond_4
    const/4 v4, 0x2

    move/from16 v0, v35

    if-ne v4, v0, :cond_5

    .line 728
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 729
    const/16 v4, 0x2718

    goto :goto_0

    .line 731
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, v35

    if-ne v4, v0, :cond_6

    .line 733
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/futuredial/vxx/VxxParser;->bIncludeMultiEntities:Z

    .line 737
    .end local v35           #iIncludeMultiEntities:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/futuredial/vxx/VxxParser;->bIncludeMultiEntities:Z

    if-eqz v4, :cond_e

    .line 740
    new-instance v9, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 741
    .local v9, BeginVEventPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    add-int/lit16 v4, v4, 0xc8

    move/from16 v0, p2

    if-le v4, v0, :cond_7

    move/from16 v6, p2

    .line 742
    .local v6, tempBufferLen:I
    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 744
    new-instance v15, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 745
    .local v15, BeginVTodoPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v12, v6

    invoke-direct/range {v10 .. v15}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 747
    iget v4, v9, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    iget v4, v15, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 749
    const-string v4, "ParseVCalendar"

    const-string v5, "can not find BEGIN:VEVENT or BEGIN:VTODO, reach the end of vcalendar"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 741
    .end local v6           #tempBufferLen:I
    .end local v15           #BeginVTodoPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    add-int/lit16 v6, v4, 0xc8

    goto :goto_1

    .line 753
    .restart local v6       #tempBufferLen:I
    .restart local v15       #BeginVTodoPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    :cond_8
    iget v4, v9, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 754
    move-object/from16 v19, v41

    .line 755
    .local v19, strTempEnd:Ljava/lang/String;
    iget v4, v9, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    iget v4, v15, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    iget v4, v9, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    iget v5, v15, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    if-gt v4, v5, :cond_a

    :cond_9
    iget v4, v9, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    iget v4, v15, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    .line 758
    :cond_a
    iget v4, v15, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 759
    move-object/from16 v19, v42

    .line 762
    :cond_b
    new-instance v21, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 763
    .local v21, tempEndPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move/from16 v20, v0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v18, p2

    invoke-direct/range {v16 .. v21}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    .line 764
    const/4 v4, -0x1

    move-object/from16 v0, v21

    iget v5, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    if-ne v4, v5, :cond_c

    .line 766
    const-string v4, "ParseVCalendar"

    const-string v5, "can not find the end of current entity"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/16 v4, 0x2717

    goto/16 :goto_0

    .line 769
    :cond_c
    const-string v43, ""

    .line 772
    .local v43, strEntity:Ljava/lang/String;
    :try_start_0
    new-instance v44, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v44 .. v44}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 773
    .local v44, vcalBuf:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move-object/from16 v0, v21

    iget v5, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/futuredial/vxx/VxxParser;->FilterCRLF([BIILcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v36

    .line 774
    .local v36, iLen:I
    if-lez v36, :cond_d

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    if-eqz v4, :cond_d

    .line 776
    new-instance v43, Ljava/lang/String;

    .end local v43           #strEntity:Ljava/lang/String;
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    iget-object v8, v8, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCal:Ljava/lang/String;

    move-object/from16 v0, v43

    move/from16 v1, v36

    invoke-direct {v0, v4, v5, v1, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .restart local v43       #strEntity:Ljava/lang/String;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BEGIN:VCALENDAR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/futuredial/vxx/VxxParser;->strCalenderProperty:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "END:VCALENDAR\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 839
    .end local v6           #tempBufferLen:I
    .end local v9           #BeginVEventPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .end local v15           #BeginVTodoPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .end local v19           #strTempEnd:Ljava/lang/String;
    .end local v21           #tempEndPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .end local v43           #strEntity:Ljava/lang/String;
    :goto_2
    new-instance v45, Lcom/futuredial/vxx/vcalendar/VCalParser;

    invoke-direct/range {v45 .. v45}, Lcom/futuredial/vxx/vcalendar/VCalParser;-><init>()V

    .line 840
    .local v45, vcalParser:Lcom/futuredial/vxx/vcalendar/VCalParser;
    new-instance v39, Lcom/futuredial/publicobj/Item;

    invoke-direct/range {v39 .. v39}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 841
    .local v39, item:Lcom/futuredial/publicobj/Item;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    const/4 v5, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser;->ParseOneVCalendar(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 843
    const/16 v38, 0x0

    .line 844
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 846
    sget v4, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    :goto_3
    move/from16 v4, v38

    .line 853
    goto/16 :goto_0

    .line 780
    .end local v39           #item:Lcom/futuredial/publicobj/Item;
    .end local v45           #vcalParser:Lcom/futuredial/vxx/vcalendar/VCalParser;
    .restart local v6       #tempBufferLen:I
    .restart local v9       #BeginVEventPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .restart local v15       #BeginVTodoPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .restart local v19       #strTempEnd:Ljava/lang/String;
    .restart local v21       #tempEndPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .restart local v43       #strEntity:Ljava/lang/String;
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 785
    .end local v36           #iLen:I
    .end local v43           #strEntity:Ljava/lang/String;
    .end local v44           #vcalBuf:Lcom/futuredial/bluetooth/ByteArrayData;
    :catch_0
    move-exception v34

    .line 787
    .local v34, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "ParseVCalendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode: charset="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    iget-object v8, v8, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCal:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 797
    .end local v6           #tempBufferLen:I
    .end local v9           #BeginVEventPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .end local v15           #BeginVTodoPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .end local v19           #strTempEnd:Ljava/lang/String;
    .end local v21           #tempEndPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .end local v34           #e:Ljava/io/UnsupportedEncodingException;
    :cond_e
    new-instance v27, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 798
    .local v27, vcalBeginPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move/from16 v26, v0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move/from16 v24, p2

    invoke-direct/range {v22 .. v27}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    move-result v4

    if-eqz v4, :cond_f

    .line 800
    const-string v4, "ParseVCalendar"

    const-string v5, "fail in searching BEGIN:VCALENDAR, reach the end of vcalendar"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 803
    :cond_f
    move-object/from16 v0, v27

    iget v4, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 806
    new-instance v33, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 807
    .local v33, vcalEndPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move/from16 v32, v0

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v30, p2

    invoke-direct/range {v28 .. v33}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    move-result v4

    if-eqz v4, :cond_10

    .line 809
    const-string v4, "ParseVCalendar"

    const-string v5, "fail in searching \nEND:VCALENDAR"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/16 v4, 0x2717

    goto/16 :goto_0

    .line 812
    :cond_10
    move-object/from16 v0, v33

    iget v0, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    move/from16 v37, v0

    .line 817
    .local v37, iNextVCalEntity:I
    :try_start_1
    new-instance v44, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v44 .. v44}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 818
    .restart local v44       #vcalBuf:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v37

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/futuredial/vxx/VxxParser;->FilterCRLF([BIILcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v36

    .line 819
    .restart local v36       #iLen:I
    if-lez v36, :cond_11

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    if-eqz v4, :cond_11

    .line 821
    new-instance v40, Ljava/lang/String;

    .end local v40           #sVCalEntity:Ljava/lang/String;
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    iget-object v8, v8, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCal:Ljava/lang/String;

    move-object/from16 v0, v40

    move/from16 v1, v36

    invoke-direct {v0, v4, v5, v1, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 835
    .restart local v40       #sVCalEntity:Ljava/lang/String;
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    goto/16 :goto_2

    .line 825
    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 830
    .end local v36           #iLen:I
    .end local v40           #sVCalEntity:Ljava/lang/String;
    .end local v44           #vcalBuf:Lcom/futuredial/bluetooth/ByteArrayData;
    :catch_1
    move-exception v34

    .line 832
    .restart local v34       #e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "ParseVCalendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode: charset="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    iget-object v8, v8, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCal:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 850
    .end local v27           #vcalBeginPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .end local v33           #vcalEndPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    .end local v34           #e:Ljava/io/UnsupportedEncodingException;
    .end local v37           #iNextVCalEntity:I
    .restart local v36       #iLen:I
    .restart local v39       #item:Lcom/futuredial/publicobj/Item;
    .restart local v40       #sVCalEntity:Ljava/lang/String;
    .restart local v44       #vcalBuf:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v45       #vcalParser:Lcom/futuredial/vxx/vcalendar/VCalParser;
    :cond_12
    const/16 v38, 0x1

    goto/16 :goto_3
.end method

.method private ParseVCard(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 13
    .parameter "strVCard"
    .parameter "itemarray"

    .prologue
    const/4 v12, -0x1

    const/4 v4, 0x1

    .line 613
    const-string v1, "ParseVCard(SingleEntity)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There are "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " bytes in vcard string."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v8, 0x0

    .line 616
    .local v8, iRet:I
    const-string v9, "BEGIN:VCARD"

    .line 617
    .local v9, strBeginVCard:Ljava/lang/String;
    const-string v10, "\nEND:VCARD"

    .line 619
    .local v10, strEndVCard:Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 620
    .local v6, iBeginVCard:I
    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 621
    .local v7, iEndVCard:I
    if-eq v6, v12, :cond_0

    if-ne v7, v12, :cond_1

    .line 623
    :cond_0
    const-string v1, "VxxParser::ParseVCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VCard is not whole:  "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_0
    return v4

    .line 626
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v7, v1

    .line 627
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, sVCard:Ljava/lang/String;
    new-instance v0, Lcom/futuredial/vxx/vcard/VCardParser;

    invoke-direct {v0}, Lcom/futuredial/vxx/vcard/VCardParser;-><init>()V

    .line 630
    .local v0, vcardParser:Lcom/futuredial/vxx/vcard/VCardParser;
    new-instance v3, Lcom/futuredial/publicobj/Item;

    invoke-direct {v3}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 631
    .local v3, item:Lcom/futuredial/publicobj/Item;
    iget-object v1, p0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/futuredial/vxx/vcard/VCardParser;->ParseOneVCard(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    const/4 v8, 0x0

    .line 634
    invoke-virtual {p2, v3}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 636
    sget v1, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    :goto_1
    move v4, v8

    .line 643
    goto :goto_0

    .line 640
    :cond_2
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private ParseVCard([BILcom/futuredial/publicobj/ItemArray;Z)I
    .locals 27
    .parameter "vxxbuffer"
    .parameter "bufferlen"
    .parameter "itemarray"
    .parameter "bSingleEntity"

    .prologue
    .line 352
    const-string v4, "ParseVCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes in vcard buffer."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/16 v25, 0x0

    .line 355
    .local v25, iRet:I
    const-string v7, "BEGIN:VCARD"

    .line 356
    .local v7, strBeginVCard:Ljava/lang/String;
    const-string v13, "\nEND:VCARD"

    .line 358
    .local v13, strEndVCard:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_0

    .line 360
    const/16 v4, 0x2718

    .line 453
    :goto_0
    return v4

    .line 362
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    move/from16 v0, p2

    if-le v4, v0, :cond_1

    .line 364
    const/16 v4, 0x2717

    goto :goto_0

    .line 367
    :cond_1
    new-instance v18, Ljava/lang/String;

    const-string v4, ""

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 399
    .local v18, sVCard:Ljava/lang/String;
    new-instance v9, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 400
    .local v9, vcardbeingPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    const-string v4, "ParseVCard"

    const-string v5, "fail in searching BEGIN:VCARD"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v4, 0x1

    goto :goto_0

    .line 405
    :cond_2
    iget v4, v9, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 408
    new-instance v15, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 409
    .local v15, vcardendPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v10 .. v15}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArray([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 411
    const-string v4, "ParseVCard"

    const-string v5, "fail in searching \nEND:VCARD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/16 v4, 0x2717

    goto :goto_0

    .line 414
    :cond_3
    iget v4, v15, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    iget v5, v15, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrLen:I

    add-int v24, v4, v5

    .line 419
    .local v24, iNextVCardHead:I
    :try_start_0
    new-instance v26, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v26 .. v26}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 420
    .local v26, vcardBuf:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/futuredial/vxx/VxxParser;->FilterCRLF([BIILcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v23

    .line 421
    .local v23, iLen:I
    if-lez v23, :cond_4

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    if-eqz v4, :cond_4

    .line 423
    new-instance v18, Ljava/lang/String;

    .end local v18           #sVCard:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    iget-object v6, v6, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCard:Ljava/lang/String;

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .restart local v18       #sVCard:Ljava/lang/String;
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 439
    new-instance v16, Lcom/futuredial/vxx/vcard/VCardParser;

    invoke-direct/range {v16 .. v16}, Lcom/futuredial/vxx/vcard/VCardParser;-><init>()V

    .line 440
    .local v16, vcardParser:Lcom/futuredial/vxx/vcard/VCardParser;
    new-instance v19, Lcom/futuredial/publicobj/Item;

    invoke-direct/range {v19 .. v19}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 441
    .local v19, item:Lcom/futuredial/publicobj/Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v16 .. v21}, Lcom/futuredial/vxx/vcard/VCardParser;->ParseOneVCard(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 443
    const/16 v25, 0x0

    .line 444
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 446
    sget v4, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    :goto_1
    move/from16 v4, v25

    .line 453
    goto/16 :goto_0

    .line 427
    .end local v16           #vcardParser:Lcom/futuredial/vxx/vcard/VCardParser;
    .end local v19           #item:Lcom/futuredial/publicobj/Item;
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 431
    .end local v18           #sVCard:Ljava/lang/String;
    .end local v23           #iLen:I
    .end local v26           #vcardBuf:Lcom/futuredial/bluetooth/ByteArrayData;
    :catch_0
    move-exception v22

    .line 433
    .local v22, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "ParseVCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to encode: charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    iget-object v6, v6, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCard:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 450
    .end local v22           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v16       #vcardParser:Lcom/futuredial/vxx/vcard/VCardParser;
    .restart local v18       #sVCard:Ljava/lang/String;
    .restart local v19       #item:Lcom/futuredial/publicobj/Item;
    .restart local v23       #iLen:I
    .restart local v26       #vcardBuf:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_5
    const/16 v25, 0x1

    goto :goto_1
.end method

.method private ParseVMsg(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 13
    .parameter "strVMsg"
    .parameter "itemarray"

    .prologue
    const/4 v12, -0x1

    .line 1151
    const-string v9, "ParseVMsg(SingleEntity)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes in vmsg string."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v2, 0x0

    .line 1154
    .local v2, iRet:I
    const-string v5, "BEGIN:VMSG"

    .line 1155
    .local v5, strBeginVMsg:Ljava/lang/String;
    const-string v6, "\nEND:VBODY"

    .line 1156
    .local v6, strEndVBody:Ljava/lang/String;
    const-string v7, "\nEND:VMSG"

    .line 1158
    .local v7, strEndVMsg:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1159
    .local v0, iBeginVMsg:I
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1160
    .local v1, iEndVMsg:I
    if-eq v0, v12, :cond_0

    if-ne v1, v12, :cond_1

    .line 1162
    :cond_0
    const-string v9, "VxxParser::ParseVMsg"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VMsg is not whole:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v9, 0x1

    .line 1182
    :goto_0
    return v9

    .line 1165
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v1, v9

    .line 1166
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1168
    .local v4, sVMsg:Ljava/lang/String;
    new-instance v8, Lcom/futuredial/vxx/vmessage/VMsgParser;

    invoke-direct {v8}, Lcom/futuredial/vxx/vmessage/VMsgParser;-><init>()V

    .line 1169
    .local v8, vmsgParser:Lcom/futuredial/vxx/vmessage/VMsgParser;
    new-instance v3, Lcom/futuredial/publicobj/Item;

    invoke-direct {v3}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 1170
    .local v3, item:Lcom/futuredial/publicobj/Item;
    iget-object v9, p0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    invoke-virtual {v8, v9, v4, v3}, Lcom/futuredial/vxx/vmessage/VMsgParser;->ParseOneVMsg(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1172
    const/4 v2, 0x0

    .line 1173
    invoke-virtual {p2, v3}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 1175
    sget v9, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    :goto_1
    move v9, v2

    .line 1182
    goto :goto_0

    .line 1179
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private ParseVMsg([BILcom/futuredial/publicobj/ItemArray;Z)I
    .locals 29
    .parameter "vxxbuffer"
    .parameter "bufferlen"
    .parameter "itemarray"
    .parameter "bSingleEntity"

    .prologue
    .line 1044
    const-string v3, "ParseVMsg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes in vmsg buffer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/16 v25, 0x0

    .line 1047
    .local v25, iRet:I
    const-string v6, "BEGIN:VMSG"

    .line 1048
    .local v6, strBeginVMsg:Ljava/lang/String;
    const-string v13, "\nEND:VBODY"

    .line 1049
    .local v13, strEndVBody:Ljava/lang/String;
    const-string v19, "\nEND:VMSG"

    .line 1051
    .local v19, strEndVMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_0

    .line 1053
    const/16 v3, 0x2718

    .line 1146
    :goto_0
    return v3

    .line 1055
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    move/from16 v0, p2

    if-le v3, v0, :cond_1

    .line 1057
    const/16 v3, 0x2717

    goto :goto_0

    .line 1060
    :cond_1
    const-string v27, ""

    .line 1093
    .local v27, sVMsg:Ljava/lang/String;
    new-instance v9, Lcom/futuredial/vxx/VxxParser$SwitchPos;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/futuredial/vxx/VxxParser$SwitchPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 1094
    .local v9, switchPos:Lcom/futuredial/vxx/VxxParser$SwitchPos;
    new-instance v8, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 1095
    .local v8, vmsgbeginPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArrayUnicode([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;Lcom/futuredial/vxx/VxxParser$SwitchPos;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1097
    const-string v3, "ParseVMsg"

    const-string v4, "fail in searching BEGIN:VMSG"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v3, 0x1

    goto :goto_0

    .line 1100
    :cond_2
    iget v3, v8, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 1103
    new-instance v15, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 1104
    .local v15, vbodyendPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    iget v14, v8, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArrayUnicode([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;Lcom/futuredial/vxx/VxxParser$SwitchPos;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1106
    const-string v3, "ParseVMsg"

    const-string v4, "fail in searching \nEND:VBODY"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/16 v3, 0x2717

    goto :goto_0

    .line 1111
    :cond_3
    new-instance v21, Lcom/futuredial/vxx/VxxParser$StringPos;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/VxxParser$StringPos;-><init>(Lcom/futuredial/vxx/VxxParser;)V

    .line 1112
    .local v21, vmsgendPos:Lcom/futuredial/vxx/VxxParser$StringPos;
    iget v0, v15, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    move/from16 v20, v0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v22, v9

    invoke-direct/range {v16 .. v22}, Lcom/futuredial/vxx/VxxParser;->FindStringInByteArrayUnicode([BILjava/lang/String;ILcom/futuredial/vxx/VxxParser$StringPos;Lcom/futuredial/vxx/VxxParser$SwitchPos;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 1114
    const-string v3, "ParseVMsg"

    const-string v4, "fail in searching \nEND:VMSG"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/16 v3, 0x2717

    goto/16 :goto_0

    .line 1117
    :cond_4
    move-object/from16 v0, v21

    iget v0, v0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    move/from16 v24, v0

    .line 1122
    .local v24, iNextVMsgHead:I
    :try_start_0
    new-instance v27, Ljava/lang/String;

    .end local v27           #sVMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    sub-int v4, v24, v4

    const-string v5, "UNICODE"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    .restart local v27       #sVMsg:Ljava/lang/String;
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 1132
    new-instance v28, Lcom/futuredial/vxx/vmessage/VMsgParser;

    invoke-direct/range {v28 .. v28}, Lcom/futuredial/vxx/vmessage/VMsgParser;-><init>()V

    .line 1133
    .local v28, vmsgParser:Lcom/futuredial/vxx/vmessage/VMsgParser;
    new-instance v26, Lcom/futuredial/publicobj/Item;

    invoke-direct/range {v26 .. v26}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 1134
    .local v26, item:Lcom/futuredial/publicobj/Item;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v3, v1, v2}, Lcom/futuredial/vxx/vmessage/VMsgParser;->ParseOneVMsg(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1136
    const/16 v25, 0x0

    .line 1137
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 1139
    sget v3, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    :goto_1
    move/from16 v3, v25

    .line 1146
    goto/16 :goto_0

    .line 1124
    .end local v26           #item:Lcom/futuredial/publicobj/Item;
    .end local v27           #sVMsg:Ljava/lang/String;
    .end local v28           #vmsgParser:Lcom/futuredial/vxx/vmessage/VMsgParser;
    :catch_0
    move-exception v23

    .line 1126
    .local v23, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "ParseVMsg"

    invoke-virtual/range {v23 .. v23}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1127
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1143
    .end local v23           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v26       #item:Lcom/futuredial/publicobj/Item;
    .restart local v27       #sVMsg:Ljava/lang/String;
    .restart local v28       #vmsgParser:Lcom/futuredial/vxx/vmessage/VMsgParser;
    :cond_5
    const/16 v25, 0x1

    goto :goto_1
.end method

.method public static SaveItemArrayAsXML(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 28
    .parameter "itemarray"

    .prologue
    .line 1187
    new-instance v3, Lcom/futuredial/xmlbuild/XmlDoc;

    invoke-direct {v3}, Lcom/futuredial/xmlbuild/XmlDoc;-><init>()V

    .line 1188
    .local v3, doc:Lcom/futuredial/xmlbuild/XmlDoc;
    const-string v24, "UTF-8"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/futuredial/xmlbuild/XmlDoc;->setFormat(Ljava/lang/String;)V

    .line 1189
    new-instance v20, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct/range {v20 .. v20}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 1190
    .local v20, root:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v24, "root"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 1191
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/futuredial/xmlbuild/XmlDoc;->setRootElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 1193
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_3

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/futuredial/publicobj/Item;

    .line 1196
    .local v12, item:Lcom/futuredial/publicobj/Item;
    new-instance v23, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct/range {v23 .. v23}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 1197
    .local v23, vcard:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v24, "vcard"

    invoke-virtual/range {v23 .. v24}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 1205
    iget-object v0, v12, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 1206
    .local v16, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, v12, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Hashtable;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v2, v0, [Ljava/lang/Integer;

    .line 1207
    .local v2, arkeys:[Ljava/lang/Integer;
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1208
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    array-length v0, v2

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v13, v0, :cond_2

    .line 1210
    aget-object v24, v2, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1211
    .local v15, key:I
    iget-object v0, v12, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1213
    .local v8, fieldlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v14, 0x0

    .local v14, k:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_1

    .line 1215
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/futuredial/publicobj/Field;

    .line 1216
    .local v7, field:Lcom/futuredial/publicobj/Field;
    const-string v24, "%05d  ---->  %s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v7, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    iget-object v0, v7, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 1217
    .local v21, stritem:Ljava/lang/String;
    new-instance v5, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v5}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 1218
    .local v5, elementfield:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v24, "field"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/futuredial/xmlbuild/XmlElement;->setValue(Ljava/lang/String;)V

    .line 1220
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 1223
    const/16 v17, 0x0

    .local v17, m:I
    :goto_3
    iget-object v0, v7, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 1225
    iget-object v0, v7, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/futuredial/publicobj/Field;

    .line 1226
    .local v18, propfield:Lcom/futuredial/publicobj/Field;
    const-string v24, "%05d  ---->  %s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 1227
    .local v22, strprop:Ljava/lang/String;
    new-instance v6, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v6}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 1228
    .local v6, elemprop:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v24, "property"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/futuredial/xmlbuild/XmlElement;->setValue(Ljava/lang/String;)V

    .line 1230
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 1223
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1213
    .end local v6           #elemprop:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v18           #propfield:Lcom/futuredial/publicobj/Field;
    .end local v22           #strprop:Ljava/lang/String;
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1208
    .end local v5           #elementfield:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v7           #field:Lcom/futuredial/publicobj/Field;
    .end local v17           #m:I
    .end local v21           #stritem:Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1234
    .end local v8           #fieldlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v14           #k:I
    .end local v15           #key:I
    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 1193
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1237
    .end local v2           #arkeys:[Ljava/lang/Integer;
    .end local v12           #item:Lcom/futuredial/publicobj/Item;
    .end local v13           #j:I
    .end local v16           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v23           #vcard:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlDoc;->getXmlString()Ljava/lang/String;

    move-result-object v19

    .line 1241
    .local v19, resultxml:Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/io/File;

    const-string v24, "/data/data/com.futuredial/vxxresult.xml"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v9, file:Ljava/io/File;
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1243
    .local v10, filew:Ljava/io/FileWriter;
    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlDoc;->getXmlString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    .end local v9           #file:Ljava/io/File;
    .end local v10           #filew:Ljava/io/FileWriter;
    :goto_4
    return-void

    .line 1246
    :catch_0
    move-exception v4

    .line 1248
    .local v4, e:Ljava/io/IOException;
    const-string v24, "SaveItemArrayAsXML"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private SwitchByte([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "iStart"
    .parameter "iEnd"

    .prologue
    .line 1026
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lt p2, v2, :cond_1

    .line 1040
    :cond_0
    return-void

    .line 1030
    :cond_1
    array-length v2, p1

    if-le p3, v2, :cond_2

    .line 1032
    array-length p3, p1

    .line 1034
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int/lit8 v2, p3, -0x1

    if-ge v0, v2, :cond_0

    .line 1036
    aget-byte v1, p1, v0

    .line 1037
    .local v1, temp:B
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    .line 1038
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v2

    .line 1034
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 0
    .parameter "iaUnCompleted"

    .prologue
    .line 216
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 4
    .parameter "application"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, iRet:I
    sput-object p1, Lcom/futuredial/vxx/vcard/VCardParser;->mContext:Landroid/content/Context;

    .line 82
    iput v1, p0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 83
    iput-boolean v1, p0, Lcom/futuredial/vxx/VxxParser;->bIncludeMultiEntities:Z

    .line 84
    iget-object v3, p0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    invoke-virtual {v3, p1, p2, p3}, Lcom/futuredial/vxx/VxxConfig;->LoadConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 86
    :goto_0
    if-nez p2, :cond_2

    .line 88
    iget-object v3, p0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    iget-boolean v3, v3, Lcom/futuredial/vxx/VxxConfig;->bQPBWBlankVCard:Z

    sput-boolean v3, Lcom/futuredial/vxx/VxxParser;->bQPBWBlank:Z

    .line 95
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/futuredial/vxx/VxxParser;->m_objApp:Landroid/content/Context;

    .line 96
    sget-object v3, Lcom/futuredial/publicobj/ItemSerializable;->m_arStrFileName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    .line 99
    iput-boolean v2, p0, Lcom/futuredial/vxx/VxxParser;->bFirstPackage:Z

    .line 101
    sput v1, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    .line 103
    return v0

    :cond_1
    move v0, v2

    .line 84
    goto :goto_0

    .line 90
    :cond_2
    if-eq v2, p2, :cond_3

    const/4 v3, 0x6

    if-ne v3, p2, :cond_0

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/futuredial/vxx/VxxParser;->objVxxConfig:Lcom/futuredial/vxx/VxxConfig;

    iget-boolean v3, v3, Lcom/futuredial/vxx/VxxConfig;->bQPBWBlankVCal:Z

    sput-boolean v3, Lcom/futuredial/vxx/VxxParser;->bQPBWBlank:Z

    goto :goto_1
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 5
    .parameter "contentType"
    .parameter "strVxxData"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    const/4 v1, 0x1

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, iRet:I
    iput p1, p0, Lcom/futuredial/vxx/VxxParser;->iPimType:I

    .line 179
    if-nez p1, :cond_0

    .line 181
    invoke-direct {p0, p2, p3}, Lcom/futuredial/vxx/VxxParser;->ParseVCard(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v0

    :goto_0
    move v1, v0

    .line 212
    :goto_1
    return v1

    .line 183
    :cond_0
    if-eq v1, p1, :cond_1

    const/4 v2, 0x6

    if-ne v2, p1, :cond_2

    .line 185
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/futuredial/vxx/VxxParser;->ParseVCalendar(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v0

    goto :goto_0

    .line 187
    :cond_2
    const/4 v2, 0x2

    if-ne v2, p1, :cond_3

    .line 189
    invoke-direct {p0, p2, p3}, Lcom/futuredial/vxx/VxxParser;->ParseVMsg(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v0

    goto :goto_0

    .line 191
    :cond_3
    const/4 v2, 0x3

    if-ne v2, p1, :cond_4

    .line 193
    invoke-direct {p0, p2, p3}, Lcom/futuredial/vxx/VxxParser;->ParseVBookMark(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v0

    goto :goto_0

    .line 197
    :cond_4
    const-string v2, "VxxParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Does not support module - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 8
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, iRet:I
    iput p1, p0, Lcom/futuredial/vxx/VxxParser;->iPimType:I

    .line 117
    iput v7, p0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    .line 118
    iget-object v5, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    if-eqz v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    array-length v5, v5

    add-int v2, v5, p3

    .line 121
    .local v2, len:I
    new-array v3, v2, [B

    .line 122
    .local v3, tempBuf:[B
    iget-object v5, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    iget-object v6, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    array-length v6, v6

    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object v5, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    array-length v5, v5

    invoke-static {p2, v7, v3, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    move-object p2, v3

    .line 125
    move p3, v2

    .line 126
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    .line 130
    .end local v2           #len:I
    .end local v3           #tempBuf:[B
    :cond_0
    if-nez p1, :cond_4

    .line 132
    invoke-direct {p0, p2, p3, p4, v7}, Lcom/futuredial/vxx/VxxParser;->ParseVCard([BILcom/futuredial/publicobj/ItemArray;Z)I

    move-result v0

    .line 148
    :goto_0
    if-eqz v0, :cond_0

    .line 150
    const/16 v4, 0x2717

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2718

    if-ne v0, v4, :cond_3

    .line 153
    :cond_1
    iget v4, p0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    if-ge v4, p3, :cond_2

    .line 155
    iget v4, p0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    sub-int v1, p3, v4

    .line 156
    .local v1, leftDataLen:I
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    .line 157
    iget v4, p0, Lcom/futuredial/vxx/VxxParser;->miBufferCursor:I

    iget-object v5, p0, Lcom/futuredial/vxx/VxxParser;->leftDataBuf:[B

    invoke-static {p2, v4, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    .end local v1           #leftDataLen:I
    :cond_2
    const/4 v0, 0x0

    :cond_3
    move v4, v0

    .line 172
    :goto_1
    return v4

    .line 134
    :cond_4
    if-eq v4, p1, :cond_5

    const/4 v5, 0x6

    if-ne v5, p1, :cond_6

    .line 136
    :cond_5
    invoke-direct {p0, p2, p3, p4, v7}, Lcom/futuredial/vxx/VxxParser;->ParseVCalendar([BILcom/futuredial/publicobj/ItemArray;Z)I

    move-result v0

    goto :goto_0

    .line 138
    :cond_6
    const/4 v5, 0x2

    if-ne v5, p1, :cond_7

    .line 140
    invoke-direct {p0, p2, p3, p4, v7}, Lcom/futuredial/vxx/VxxParser;->ParseVMsg([BILcom/futuredial/publicobj/ItemArray;Z)I

    move-result v0

    goto :goto_0

    .line 144
    :cond_7
    const-string v5, "VxxParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Does not support module - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
