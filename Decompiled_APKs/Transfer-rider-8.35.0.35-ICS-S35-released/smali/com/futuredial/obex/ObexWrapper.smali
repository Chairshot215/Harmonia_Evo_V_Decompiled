.class public Lcom/futuredial/obex/ObexWrapper;
.super Ljava/lang/Object;
.source "ObexWrapper.java"


# instance fields
.field private BLUETOOTH_TIMEOUT:I

.field private LOGTAG:Ljava/lang/String;

.field private bPrintLog:Z

.field private btHelper:Lcom/futuredial/bluetooth/btcommhelper;

.field private m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

.field private m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/futuredial/bluetooth/btcommhelper;I)V
    .locals 1
    .parameter "logtag"
    .parameter "btch"
    .parameter "bttimeout"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "ObexWrapper"

    iput-object v0, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    .line 19
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 20
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    .line 23
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    .line 27
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    .line 32
    :cond_0
    iput-object p2, p0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    .line 33
    iput p3, p0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    .line 34
    return-void
.end method

.method public static LogBinData(ZLjava/lang/String;[BII)V
    .locals 16
    .parameter "bPrint"
    .parameter "logTag"
    .parameter "binData"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 596
    if-nez p0, :cond_0

    .line 683
    :goto_0
    return-void

    .line 601
    :cond_0
    const-string v14, "Begin"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v14, v0

    move/from16 v0, p4

    if-le v0, v14, :cond_3

    .line 605
    :cond_1
    if-nez p2, :cond_2

    const-string v2, "binData == null"

    .line 606
    .local v2, error:Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Printing data is invalid, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v14, "End"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 605
    .end local v2           #error:Ljava/lang/String;
    :cond_2
    const-string v2, "end > binData.length"

    goto :goto_1

    .line 611
    :cond_3
    const/4 v1, 0x0

    .line 612
    .local v1, bFinished:Z
    const/16 v8, 0x10

    .line 613
    .local v8, nLen:I
    const/16 v14, 0x30

    new-array v12, v14, [C

    .line 614
    .local v12, szBinLine:[C
    new-array v13, v8, [C

    .line 615
    .local v13, szStrLine:[C
    const-string v11, ""

    .line 616
    .local v11, strMsg:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, m:I
    :goto_2
    array-length v14, v12

    if-ge v7, v14, :cond_4

    .line 618
    const/16 v14, 0x20

    aput-char v14, v12, v7

    .line 616
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 620
    :cond_4
    const/4 v7, 0x0

    :goto_3
    array-length v14, v13

    if-ge v7, v14, :cond_5

    .line 622
    const/16 v14, 0x20

    aput-char v14, v13, v7

    .line 620
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 624
    :cond_5
    const/4 v9, 0x0

    .line 625
    .local v9, pos:I
    move/from16 v4, p3

    .local v4, i:I
    move v10, v9

    .end local v9           #pos:I
    .local v10, pos:I
    :goto_4
    move/from16 v0, p4

    if-ge v4, v0, :cond_b

    .line 627
    const/4 v1, 0x0

    .line 628
    aget-byte v14, p2, v4

    shr-int/lit8 v14, v14, 0x4

    int-to-byte v14, v14

    and-int/lit8 v3, v14, 0xf

    .line 629
    .local v3, h:I
    aget-byte v14, p2, v4

    and-int/lit8 v6, v14, 0xf

    .line 630
    .local v6, l:I
    add-int/lit8 v9, v10, 0x1

    .end local v10           #pos:I
    .restart local v9       #pos:I
    rem-int v5, v10, v8

    .line 631
    .local v5, id:I
    const/16 v14, 0x9

    if-gt v3, v14, :cond_6

    .line 633
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v15, v3, 0x30

    int-to-char v15, v15

    aput-char v15, v12, v14

    .line 640
    :goto_5
    const/16 v14, 0x9

    if-gt v6, v14, :cond_7

    .line 642
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v6, 0x30

    int-to-char v15, v15

    aput-char v15, v12, v14

    .line 648
    :goto_6
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v14, v14, 0x2

    const/16 v15, 0x20

    aput-char v15, v12, v14

    .line 650
    aget-byte v14, p2, v4

    const/16 v15, 0x1e

    if-lt v14, v15, :cond_8

    .line 652
    aget-byte v14, p2, v4

    int-to-char v14, v14

    aput-char v14, v13, v5

    .line 659
    :goto_7
    rem-int v14, v9, v8

    if-nez v14, :cond_a

    .line 661
    const/4 v1, 0x1

    .line 662
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 663
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/4 v7, 0x0

    :goto_8
    array-length v14, v12

    if-ge v7, v14, :cond_9

    .line 667
    const/16 v14, 0x20

    aput-char v14, v12, v7

    .line 665
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 637
    :cond_6
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v15, v3, 0x37

    int-to-char v15, v15

    aput-char v15, v12, v14

    goto :goto_5

    .line 646
    :cond_7
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v6, 0x37

    int-to-char v15, v15

    aput-char v15, v12, v14

    goto :goto_6

    .line 656
    :cond_8
    const/16 v14, 0x2e

    aput-char v14, v13, v5

    goto :goto_7

    .line 669
    :cond_9
    const/4 v7, 0x0

    :goto_9
    array-length v14, v13

    if-ge v7, v14, :cond_a

    .line 671
    const/16 v14, 0x20

    aput-char v14, v13, v7

    .line 669
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 625
    :cond_a
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_4

    .line 676
    .end local v3           #h:I
    .end local v5           #id:I
    .end local v6           #l:I
    :cond_b
    if-nez v1, :cond_c

    .line 678
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 679
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_c
    const-string v14, "End"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private Str2UnicodeByte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 563
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 565
    new-array v0, v7, [B

    .line 590
    :goto_0
    return-object v0

    .line 569
    :cond_0
    :try_start_0
    const-string v6, "UNICODE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 570
    .local v2, byteTempBuffer:[B
    array-length v6, v2

    if-gt v6, v8, :cond_1

    move-object v0, v5

    .line 572
    goto :goto_0

    .line 574
    :cond_1
    array-length v6, v2

    new-array v0, v6, [B

    .line 575
    .local v0, byteDataBuffer:[B
    const/4 v6, 0x2

    const/4 v7, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    invoke-static {v2, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_2

    .line 578
    aget-byte v1, v0, v4

    .line 579
    .local v1, byteTemp:B
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v0, v4

    .line 580
    add-int/lit8 v6, v4, 0x1

    aput-byte v1, v0, v6

    .line 581
    add-int/lit8 v4, v4, 0x1

    .line 576
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 583
    .end local v1           #byteTemp:B
    :cond_2
    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x0

    aput-byte v7, v0, v6

    .line 584
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    .end local v0           #byteDataBuffer:[B
    .end local v2           #byteTempBuffer:[B
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 589
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    iget-object v6, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 590
    goto :goto_0
.end method

.method private binHex2byte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/16 v8, 0x66

    const/16 v7, 0x46

    const/16 v6, 0x39

    .line 526
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 527
    .local v3, ret:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 529
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 530
    .local v0, c1:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 531
    .local v1, c2:I
    if-gt v0, v6, :cond_2

    .line 533
    add-int/lit8 v0, v0, -0x30

    .line 543
    :cond_0
    :goto_1
    if-gt v1, v6, :cond_4

    .line 545
    add-int/lit8 v1, v1, -0x30

    .line 555
    :cond_1
    :goto_2
    div-int/lit8 v4, v2, 0x2

    shl-int/lit8 v5, v0, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 556
    add-int/lit8 v2, v2, 0x2

    .line 557
    goto :goto_0

    .line 535
    :cond_2
    if-gt v0, v7, :cond_3

    .line 537
    add-int/lit8 v0, v0, -0x37

    goto :goto_1

    .line 539
    :cond_3
    if-gt v0, v8, :cond_0

    .line 541
    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    .line 547
    :cond_4
    if-gt v0, v7, :cond_5

    .line 549
    add-int/lit8 v1, v1, -0x37

    goto :goto_2

    .line 551
    :cond_5
    if-gt v0, v8, :cond_1

    .line 553
    add-int/lit8 v1, v1, -0x57

    goto :goto_2

    .line 558
    .end local v0           #c1:I
    .end local v1           #c2:I
    :cond_6
    return-object v3
.end method


# virtual methods
.method public GetObexPkgObj()Lcom/futuredial/obex/OBEX_PKG;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    return-object v0
.end method

.method public Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "strTarget"
    .parameter "strWho"

    .prologue
    const/4 v6, 0x1

    .line 43
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    const-string v8, "enter function Obex_Connect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x0

    .line 46
    .local v4, iRet:I
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 47
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, -0x80

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_CON_PKG;->setCommand(B)V

    .line 48
    invoke-direct {p0, p1}, Lcom/futuredial/obex/ObexWrapper;->binHex2byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 49
    .local v1, byteTarget:[B
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x46

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 53
    .local v2, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 55
    .end local v2           #byteWho:[B
    :cond_0
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v6}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v0

    .line 56
    .local v0, byteConnection:[B
    if-eqz v0, :cond_1

    array-length v7, v0

    if-gtz v7, :cond_2

    .line 58
    :cond_1
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    const-string v8, "exit function Obex_Connect, function getObexPkgStream fails"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return v6

    .line 61
    :cond_2
    new-instance v5, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v5}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 63
    .local v5, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    iget-boolean v6, p0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v6, v7, v0, v8, v9}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V

    .line 64
    iget-object v6, p0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    iget v7, p0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    mul-int/lit8 v7, v7, 0x6

    invoke-virtual {v6, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_3

    move v6, v4

    goto :goto_0

    .line 65
    :cond_3
    iget-object v6, p0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    iget v7, p0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    mul-int/lit8 v7, v7, 0x6

    invoke-virtual {v6, v5, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v6, v4

    goto :goto_0

    .line 66
    :cond_4
    iget-boolean v6, p0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    iget-object v8, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iget-object v6, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v6, v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->setObexPkgStream([B)Z

    move-result v6

    if-nez v6, :cond_5

    .line 77
    iget-object v6, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    const-string v7, "received data is incorrect"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v4, 0x1

    move v6, v4

    .line 79
    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    .line 69
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 70
    iget-object v6, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    const-string v7, "exit function Obex_Connect, fail in sending or receiving data"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v4, 0x1

    move v6, v4

    .line 72
    goto :goto_0

    .line 82
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_5
    iget-object v6, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exit function Obex_Connect, iRet = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v4

    .line 83
    goto :goto_0
.end method

.method public Obex_DisConnect(Ljava/lang/String;)I
    .locals 13
    .parameter "strWho"

    .prologue
    const/16 v9, -0x35

    const/4 v12, 0x0

    .line 488
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    const-string v8, "enter function Obex_DisConnect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v4, 0x0

    .line 490
    .local v4, iRet:I
    new-instance v6, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v6}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 491
    .local v6, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 492
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, -0x7f

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 493
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v9}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v7

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v7

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 494
    .local v2, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 496
    .local v1, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 497
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v8, 0x1

    invoke-virtual {v7, v12, v8}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 498
    .local v0, byteDisConnection:[B
    if-eqz v0, :cond_0

    array-length v7, v0

    if-gtz v7, :cond_1

    .line 500
    :cond_0
    const/4 v4, 0x1

    move v5, v4

    .line 521
    .end local v4           #iRet:I
    .local v5, iRet:I
    :goto_0
    return v5

    .line 504
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_1
    :try_start_0
    iget-boolean v7, p0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    iget-object v8, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v7, v8, v0, v9, v10}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V

    .line 505
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    iget v8, p0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    mul-int/lit8 v8, v8, 0x6

    invoke-virtual {v7, v0, v8}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_2

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 506
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_2
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    iget v8, p0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    mul-int/lit8 v8, v8, 0x6

    invoke-virtual {v7, v6, v8}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 507
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_3
    iget-boolean v7, p0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    iget-object v8, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    iget-object v9, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v10, 0x0

    iget-object v11, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v7, v8, v12}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v7

    if-nez v7, :cond_4

    .line 516
    const/4 v4, 0x1

    move v5, v4

    .line 517
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 508
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :catch_0
    move-exception v3

    .line 510
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 511
    const/4 v4, 0x1

    move v5, v4

    .line 512
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 520
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_4
    iget-object v7, p0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exit function Obex_DisConnect, iRet = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 521
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0
.end method

.method public Obex_Get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/obex/ICallBackObexWrapper;)I
    .locals 29
    .parameter "bClearHeader"
    .parameter "strName"
    .parameter "strType"
    .parameter "strWho"
    .parameter "outputBuffer"
    .parameter "getCallBack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "enter function Obex_Get"

    invoke-static/range {v24 .. v25}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/16 v19, 0x0

    .line 208
    .local v19, iRet:I
    new-instance v23, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v23 .. v23}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 209
    .local v23, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    if-eqz p1, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 213
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v24, v0

    const/16 v25, -0x35

    invoke-virtual/range {v24 .. v25}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v24

    check-cast v24, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object/from16 v15, v24

    check-cast v15, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 215
    .local v15, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, -0x35

    invoke-virtual {v15}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 217
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_2

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/futuredial/obex/ObexWrapper;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v11

    .line 220
    .local v11, byteName:[B
    if-nez v11, :cond_1

    .line 222
    const/16 v19, 0x1

    move/from16 v20, v19

    .line 363
    .end local v11           #byteName:[B
    .end local v19           #iRet:I
    .local v20, iRet:I
    :goto_0
    return v20

    .line 225
    .end local v20           #iRet:I
    .restart local v11       #byteName:[B
    .restart local v19       #iRet:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 227
    .end local v11           #byteName:[B
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    .line 229
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 230
    .local v12, byteTemp:[B
    array-length v0, v12

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    new-array v13, v0, [B

    .line 231
    .local v13, byteType:[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    array-length v0, v12

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v12, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    array-length v0, v12

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-byte v25, v13, v24

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, 0x42

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 235
    .end local v12           #byteTemp:[B
    .end local v13           #byteType:[B
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_4

    .line 237
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 238
    .local v14, byteWho:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, 0x4a

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 240
    .end local v14           #byteWho:[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v10

    .line 241
    .local v10, byteGetCommand:[B
    if-eqz v10, :cond_5

    array-length v0, v10

    move/from16 v24, v0

    if-gtz v24, :cond_6

    .line 243
    :cond_5
    const/16 v19, 0x1

    move/from16 v20, v19

    .line 244
    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto :goto_0

    .line 246
    .end local v20           #iRet:I
    .restart local v19       #iRet:I
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v5, arrRecvBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x1

    .line 251
    .local v6, bFirstPackage:Z
    :cond_7
    sget v24, Lcom/futuredial/BaseThread;->CancelFlag:I

    if-nez v24, :cond_8

    .line 253
    new-instance v24, Lcom/futuredial/CancelException;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/CancelException;-><init>()V

    throw v24

    .line 257
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    array-length v0, v10

    move/from16 v27, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v10, v2, v3}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x6

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v10, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v19

    if-eqz v19, :cond_9

    move/from16 v20, v19

    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto/16 :goto_0

    .line 259
    .end local v20           #iRet:I
    .restart local v19       #iRet:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x6

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v20, v19

    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto/16 :goto_0

    .line 260
    .end local v20           #iRet:I
    .restart local v19       #iRet:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    invoke-static/range {v24 .. v28}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v24

    if-nez v24, :cond_b

    .line 269
    const/16 v19, 0x1

    move/from16 v20, v19

    .line 270
    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto/16 :goto_0

    .line 261
    .end local v20           #iRet:I
    .restart local v19       #iRet:I
    :catch_0
    move-exception v16

    .line 263
    .local v16, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 264
    const/16 v19, 0x1

    move/from16 v20, v19

    .line 265
    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto/16 :goto_0

    .line 272
    .end local v16           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v20           #iRet:I
    .restart local v19       #iRet:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v9

    .line 273
    .local v9, byteErrCode:B
    const/4 v7, 0x0

    .line 274
    .local v7, bObexFinished:Z
    and-int/lit8 v24, v9, 0x7f

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 276
    const/4 v7, 0x1

    .line 289
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, 0x48

    invoke-virtual/range {v24 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v24

    check-cast v24, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v8, v24

    check-cast v8, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 290
    .local v8, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v8, :cond_10

    .line 292
    if-eqz p6, :cond_f

    .line 294
    invoke-virtual {v8}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v24

    move-object/from16 v0, p6

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v7, v1}, Lcom/futuredial/obex/ICallBackObexWrapper;->ObexWraaperGetData(ZZ[B)I

    move-result v19

    .line 295
    const/16 v24, 0x4

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    new-instance v24, Lcom/futuredial/CancelException;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/CancelException;-><init>()V

    throw v24

    .line 278
    .end local v8           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    :cond_c
    and-int/lit8 v24, v9, 0x7f

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 280
    const/4 v7, 0x0

    goto :goto_1

    .line 284
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "byteErrCode = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/16 v19, 0x1

    move/from16 v20, v19

    .line 286
    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto/16 :goto_0

    .line 296
    .end local v20           #iRet:I
    .restart local v8       #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v19       #iRet:I
    :cond_e
    if-eqz v19, :cond_10

    move/from16 v20, v19

    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto/16 :goto_0

    .line 300
    .end local v20           #iRet:I
    .restart local v19       #iRet:I
    :cond_f
    invoke-virtual {v8}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, 0x49

    invoke-virtual/range {v24 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v24

    check-cast v24, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v17, v24

    check-cast v17, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 304
    .local v17, endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v17, :cond_13

    .line 306
    if-eqz p6, :cond_12

    .line 308
    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v24

    move-object/from16 v0, p6

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v7, v1}, Lcom/futuredial/obex/ICallBackObexWrapper;->ObexWraaperGetData(ZZ[B)I

    move-result v19

    .line 309
    const/16 v24, 0x4

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    new-instance v24, Lcom/futuredial/CancelException;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/CancelException;-><init>()V

    throw v24

    .line 310
    :cond_11
    if-eqz v19, :cond_13

    move/from16 v20, v19

    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto/16 :goto_0

    .line 314
    .end local v20           #iRet:I
    .restart local v19       #iRet:I
    :cond_12
    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_13
    const/4 v6, 0x0

    .line 320
    if-eqz v7, :cond_14

    .line 344
    if-nez p6, :cond_19

    .line 346
    const/16 v22, 0x0

    .line 347
    .local v22, nLen:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 348
    .local v21, nCount:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    .line 350
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v22, v22, v24

    .line 348
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 326
    .end local v18           #i:I
    .end local v21           #nCount:I
    .end local v22           #nLen:I
    :cond_14
    sget v24, Lcom/futuredial/BaseThread;->CancelFlag:I

    if-nez v24, :cond_15

    .line 328
    new-instance v24, Lcom/futuredial/CancelException;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/CancelException;-><init>()V

    throw v24

    .line 332
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, -0x35

    invoke-virtual {v15}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v10

    .line 336
    if-eqz v10, :cond_16

    array-length v0, v10

    move/from16 v24, v0

    if-gtz v24, :cond_7

    .line 338
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "fail in packing getting command"

    invoke-static/range {v24 .. v25}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/16 v19, 0x1

    move/from16 v20, v19

    .line 340
    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto/16 :goto_0

    .line 352
    .end local v20           #iRet:I
    .restart local v18       #i:I
    .restart local v19       #iRet:I
    .restart local v21       #nCount:I
    .restart local v22       #nLen:I
    :cond_17
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    .line 353
    const/16 v22, 0x0

    .line 354
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    .line 356
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v22, v22, v24

    .line 354
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 359
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 362
    .end local v18           #i:I
    .end local v21           #nCount:I
    .end local v22           #nLen:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "exit function Obex_Get, iRet = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v20, v19

    .line 363
    .end local v19           #iRet:I
    .restart local v20       #iRet:I
    goto/16 :goto_0
.end method

.method public Obex_Put(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;I)I
    .locals 25
    .parameter "bClearHeader"
    .parameter "strName"
    .parameter "strType"
    .parameter "strWho"
    .parameter "inputBuffer"
    .parameter "startPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "enter function Obex_Put"

    invoke-static/range {v20 .. v21}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/16 v16, 0x0

    .line 371
    .local v16, iRet:I
    new-instance v19, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v19 .. v19}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 373
    .local v19, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    if-eqz p1, :cond_0

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 377
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v20, v0

    const/16 v21, -0x35

    invoke-virtual/range {v20 .. v21}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v20

    check-cast v20, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object/from16 v12, v20

    check-cast v12, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 379
    .local v12, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, -0x35

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 381
    const/16 v15, 0x8

    .line 383
    .local v15, headLen:I
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_2

    .line 385
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/futuredial/obex/ObexWrapper;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v8

    .line 386
    .local v8, byteName:[B
    if-nez v8, :cond_1

    .line 388
    const/16 v16, 0x1

    move/from16 v17, v16

    .line 483
    .end local v8           #byteName:[B
    .end local v16           #iRet:I
    .local v17, iRet:I
    :goto_0
    return v17

    .line 391
    .end local v17           #iRet:I
    .restart local v8       #byteName:[B
    .restart local v16       #iRet:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 392
    array-length v0, v8

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x3

    add-int v15, v15, v20

    .line 395
    .end local v8           #byteName:[B
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_3

    .line 397
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 398
    .local v9, byteTemp:[B
    array-length v0, v9

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v10, v0, [B

    .line 399
    .local v10, byteType:[B
    const/16 v20, 0x0

    const/16 v21, 0x0

    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v9, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    array-length v0, v9

    move/from16 v20, v0

    const/16 v21, 0x0

    aput-byte v21, v10, v20

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x42

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 402
    array-length v0, v10

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x3

    add-int v15, v15, v20

    .line 405
    .end local v9           #byteTemp:[B
    .end local v10           #byteType:[B
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_4

    .line 407
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 408
    .local v11, byteWho:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x4a

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 409
    array-length v0, v11

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x3

    add-int v15, v15, v20

    .line 413
    .end local v11           #byteWho:[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, -0x3d

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 414
    add-int/lit8 v15, v15, 0x5

    .line 416
    const/4 v4, 0x1

    .line 417
    .local v4, bFirstPackage:Z
    move/from16 v18, p6

    .line 421
    .local v18, index:I
    :cond_5
    sget v20, Lcom/futuredial/BaseThread;->CancelFlag:I

    if-nez v20, :cond_6

    .line 423
    new-instance v20, Lcom/futuredial/CancelException;

    invoke-direct/range {v20 .. v20}, Lcom/futuredial/CancelException;-><init>()V

    throw v20

    .line 426
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/obex/OBEX_CON_PKG;->getMaxPkgSize()I

    move-result v20

    add-int/lit8 v13, v20, -0x6

    .line 427
    .local v13, dataLen:I
    if-eqz v4, :cond_7

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/obex/OBEX_CON_PKG;->getMaxPkgSize()I

    move-result v20

    sub-int v20, v20, v15

    add-int/lit8 v13, v20, -0x3

    .line 430
    const/4 v4, 0x0

    .line 432
    :cond_7
    add-int v20, v13, v18

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 434
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v13, v20, v18

    .line 437
    :cond_8
    new-array v5, v13, [B

    .line 438
    .local v5, byteBodyBuffer:[B
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v0, v1, v5, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    const/16 v6, 0x48

    .line 441
    .local v6, byteBodyType:B
    add-int v18, v18, v13

    .line 442
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    .line 444
    const/16 v6, 0x49

    .line 447
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v5}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v20, 0x49

    move/from16 v0, v20

    if-ne v6, v0, :cond_b

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v7

    .line 450
    .local v7, byteGetCommand:[B
    if-eqz v7, :cond_a

    array-length v0, v7

    move/from16 v20, v0

    if-gtz v20, :cond_c

    .line 452
    :cond_a
    const/16 v16, 0x1

    move/from16 v17, v16

    .line 453
    .end local v16           #iRet:I
    .restart local v17       #iRet:I
    goto/16 :goto_0

    .line 449
    .end local v7           #byteGetCommand:[B
    .end local v17           #iRet:I
    .restart local v16       #iRet:I
    :cond_b
    const/16 v20, 0x0

    goto :goto_1

    .line 457
    .restart local v7       #byteGetCommand:[B
    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v7, v2, v3}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v17, v16

    .end local v16           #iRet:I
    .restart local v17       #iRet:I
    goto/16 :goto_0

    .line 459
    .end local v17           #iRet:I
    .restart local v16       #iRet:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x6

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v16

    if-eqz v16, :cond_e

    move/from16 v17, v16

    .end local v16           #iRet:I
    .restart local v17       #iRet:I
    goto/16 :goto_0

    .line 460
    .end local v17           #iRet:I
    .restart local v16       #iRet:I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v20 .. v24}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v20

    if-nez v20, :cond_f

    .line 469
    const/16 v16, 0x1

    move/from16 v17, v16

    .line 470
    .end local v16           #iRet:I
    .restart local v17       #iRet:I
    goto/16 :goto_0

    .line 461
    .end local v17           #iRet:I
    .restart local v16       #iRet:I
    :catch_0
    move-exception v14

    .line 463
    .local v14, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v14}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 464
    const/16 v16, 0x1

    move/from16 v17, v16

    .line 465
    .end local v16           #iRet:I
    .restart local v17       #iRet:I
    goto/16 :goto_0

    .line 473
    .end local v14           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v17           #iRet:I
    .restart local v16       #iRet:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 476
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 480
    const/16 v16, 0x0

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "exit function Obex_Put, iRet = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v16

    .line 483
    .end local v16           #iRet:I
    .restart local v17       #iRet:I
    goto/16 :goto_0
.end method

.method public Obex_SetPath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 22
    .parameter "strPath"
    .parameter "strWho"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "enter function Obex_SetPath"

    invoke-static/range {v17 .. v18}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v13, 0x0

    .line 90
    .local v13, iRet:I
    new-instance v15, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v15}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 91
    .local v15, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v17, v0

    const/16 v18, -0x35

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v17

    check-cast v17, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object/from16 v10, v17

    check-cast v10, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 93
    .local v10, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, -0x7b

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, -0x35

    invoke-virtual {v10}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 96
    const-string v17, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 97
    .local v4, byteName:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 100
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 101
    .local v9, byteWho:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, 0x4a

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 104
    .end local v9           #byteWho:[B
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v8

    .line 105
    .local v8, byteSetRootPathTemp:[B
    if-eqz v8, :cond_1

    array-length v0, v8

    move/from16 v17, v0

    if-gtz v17, :cond_2

    .line 107
    :cond_1
    const/4 v13, 0x1

    move/from16 v17, v13

    .line 201
    :goto_0
    return v17

    .line 110
    :cond_2
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v7, v0, [B

    .line 111
    .local v7, byteSetRootPath:[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    const/16 v17, 0x3

    const/16 v18, 0x5

    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    const/16 v17, 0x1

    array-length v0, v7

    move/from16 v18, v0

    const v19, 0xff00

    and-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v7, v17

    .line 114
    const/16 v17, 0x2

    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v7, v17

    .line 115
    const/16 v17, 0x3

    const/16 v18, 0x2

    aput-byte v18, v7, v17

    .line 116
    const/16 v17, 0x4

    const/16 v18, 0x0

    aput-byte v18, v7, v17

    .line 118
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v7, v2, v3}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v13

    if-eqz v13, :cond_3

    move/from16 v17, v13

    goto/16 :goto_0

    .line 120
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v13

    if-eqz v13, :cond_4

    move/from16 v17, v13

    goto/16 :goto_0

    .line 121
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v15, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v17 .. v21}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v17

    if-nez v17, :cond_5

    .line 130
    const/4 v13, 0x1

    move/from16 v17, v13

    .line 131
    goto/16 :goto_0

    .line 122
    :catch_0
    move-exception v11

    .line 124
    .local v11, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v11}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 125
    const/4 v13, 0x1

    move/from16 v17, v13

    .line 126
    goto/16 :goto_0

    .line 136
    .end local v11           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_5
    sget v17, Lcom/futuredial/BaseThread;->CancelFlag:I

    if-nez v17, :cond_6

    .line 138
    new-instance v17, Lcom/futuredial/CancelException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/CancelException;-><init>()V

    throw v17

    .line 141
    :cond_6
    const-string v17, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 142
    .local v16, subPaths:[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_f

    .line 144
    aget-object v14, v16, v12

    .line 145
    .local v14, path:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_8

    .line 142
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 147
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, -0x7b

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, -0x35

    invoke-virtual {v10}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 150
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/futuredial/obex/ObexWrapper;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v4

    .line 159
    if-nez v4, :cond_9

    .line 161
    const/4 v13, 0x1

    move/from16 v17, v13

    .line 162
    goto/16 :goto_0

    .line 164
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a

    .line 167
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 168
    .restart local v9       #byteWho:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, 0x4a

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 170
    .end local v9           #byteWho:[B
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v6

    .line 171
    .local v6, byteSetPathTemp:[B
    if-eqz v6, :cond_b

    array-length v0, v6

    move/from16 v17, v0

    if-gtz v17, :cond_c

    .line 173
    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 175
    :cond_c
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 176
    .local v5, byteSetPath:[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v6, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    const/16 v17, 0x3

    const/16 v18, 0x5

    array-length v0, v6

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v6, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    const/16 v17, 0x1

    array-length v0, v5

    move/from16 v18, v0

    const v19, 0xff00

    and-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v5, v17

    .line 179
    const/16 v17, 0x2

    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v5, v17

    .line 180
    const/16 v17, 0x3

    const/16 v18, 0x2

    aput-byte v18, v5, v17

    .line 181
    const/16 v17, 0x4

    const/16 v18, 0x0

    aput-byte v18, v5, v17

    .line 183
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v5, v2, v3}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v13

    if-eqz v13, :cond_d

    move/from16 v17, v13

    goto/16 :goto_0

    .line 185
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/obex/ObexWrapper;->BLUETOOTH_TIMEOUT:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v13

    if-eqz v13, :cond_e

    move/from16 v17, v13

    goto/16 :goto_0

    .line 186
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/obex/ObexWrapper;->bPrintLog:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v15, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v17 .. v21}, Lcom/futuredial/obex/ObexWrapper;->LogBinData(ZLjava/lang/String;[BII)V
    :try_end_1
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v17

    if-nez v17, :cond_7

    .line 195
    const/4 v13, 0x1

    move/from16 v17, v13

    .line 196
    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v11

    .line 189
    .restart local v11       #e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v11}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 190
    const/4 v13, 0x1

    move/from16 v17, v13

    .line 191
    goto/16 :goto_0

    .line 200
    .end local v5           #byteSetPath:[B
    .end local v6           #byteSetPathTemp:[B
    .end local v11           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v14           #path:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/obex/ObexWrapper;->LOGTAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exit function Obex_SetPath, iRet = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v13

    .line 201
    goto/16 :goto_0
.end method
