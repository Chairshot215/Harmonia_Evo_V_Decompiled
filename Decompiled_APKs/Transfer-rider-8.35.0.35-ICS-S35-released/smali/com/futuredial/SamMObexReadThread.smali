.class public Lcom/futuredial/SamMObexReadThread;
.super Lcom/futuredial/ReadThread;
.source "SamMObexReadThread.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SamMObexReadThread"


# instance fields
.field private bNobodyField:Z

.field private bPrintLog:Z

.field private leftDataBuf:[B

.field private m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

.field private m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 2
    .parameter "tParam"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 32
    iput-boolean v1, p0, Lcom/futuredial/SamMObexReadThread;->bPrintLog:Z

    .line 34
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 35
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 38
    iput-boolean v1, p0, Lcom/futuredial/SamMObexReadThread;->bNobodyField:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/SamMObexReadThread;->leftDataBuf:[B

    .line 30
    return-void
.end method

.method private DataToParser([B)V
    .locals 14
    .parameter "recvBuffer"

    .prologue
    .line 930
    iget v10, p0, Lcom/futuredial/SamMObexReadThread;->contentType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 932
    invoke-static {p1}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    array-length v6, p1

    .line 937
    .local v6, recvBufLen:I
    iget-object v10, p0, Lcom/futuredial/SamMObexReadThread;->leftDataBuf:[B

    if-eqz v10, :cond_2

    .line 939
    iget-object v10, p0, Lcom/futuredial/SamMObexReadThread;->leftDataBuf:[B

    array-length v10, v10

    add-int v4, v10, v6

    .line 940
    .local v4, len:I
    new-array v9, v4, [B

    .line 941
    .local v9, tempBuf:[B
    iget-object v10, p0, Lcom/futuredial/SamMObexReadThread;->leftDataBuf:[B

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/futuredial/SamMObexReadThread;->leftDataBuf:[B

    array-length v13, v13

    invoke-static {v10, v11, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/futuredial/SamMObexReadThread;->leftDataBuf:[B

    array-length v11, v11

    invoke-static {p1, v10, v9, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 943
    move-object p1, v9

    .line 944
    move v6, v4

    .line 945
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/futuredial/SamMObexReadThread;->leftDataBuf:[B

    .line 948
    .end local v4           #len:I
    .end local v9           #tempBuf:[B
    :cond_2
    iget v10, p0, Lcom/futuredial/SamMObexReadThread;->contentType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string v7, "BEGIN:VCALENDAR"

    .line 949
    .local v7, strBegin:Ljava/lang/String;
    :goto_1
    iget v10, p0, Lcom/futuredial/SamMObexReadThread;->contentType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const-string v8, "\nEND:VCALENDAR"

    .line 951
    .local v8, strEnd:Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    .line 952
    .local v3, iStartPos:I
    :goto_3
    if-ge v3, v6, :cond_0

    .line 954
    invoke-direct {p0, p1, v6, v7, v3}, Lcom/futuredial/SamMObexReadThread;->FindString([BILjava/lang/String;I)I

    move-result v1

    .line 955
    .local v1, iFindBegin:I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_5

    .line 957
    invoke-direct {p0, p1, v3, v6}, Lcom/futuredial/SamMObexReadThread;->SaveLeftData([BII)V

    goto :goto_0

    .line 948
    .end local v1           #iFindBegin:I
    .end local v3           #iStartPos:I
    .end local v7           #strBegin:Ljava/lang/String;
    .end local v8           #strEnd:Ljava/lang/String;
    :cond_3
    const-string v7, "BEGIN:VCARD"

    goto :goto_1

    .line 949
    .restart local v7       #strBegin:Ljava/lang/String;
    :cond_4
    const-string v8, "\nEND:VCARD"

    goto :goto_2

    .line 960
    .restart local v1       #iFindBegin:I
    .restart local v3       #iStartPos:I
    .restart local v8       #strEnd:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v1

    invoke-direct {p0, p1, v6, v8, v10}, Lcom/futuredial/SamMObexReadThread;->FindString([BILjava/lang/String;I)I

    move-result v2

    .line 961
    .local v2, iFindEnd:I
    const/4 v10, -0x1

    if-ne v2, v10, :cond_6

    .line 963
    invoke-direct {p0, p1, v3, v6}, Lcom/futuredial/SamMObexReadThread;->SaveLeftData([BII)V

    goto :goto_0

    .line 966
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int v3, v2, v10

    .line 967
    sub-int v0, v3, v1

    .line 968
    .local v0, entryLen:I
    new-array v5, v0, [B

    .line 969
    .local v5, oneEntry:[B
    const/4 v10, 0x0

    invoke-static {p1, v1, v5, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 970
    invoke-static {v5}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    goto :goto_3
.end method

.method private FindString([BILjava/lang/String;I)I
    .locals 7
    .parameter "bytebuffer"
    .parameter "bufferlen"
    .parameter "destStr"
    .parameter "iStart"

    .prologue
    .line 893
    const/4 v3, -0x1

    .line 895
    .local v3, iRet:I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 918
    .end local v3           #iRet:I
    :cond_0
    :goto_0
    return v3

    .line 900
    .restart local v3       #iRet:I
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 901
    .local v1, destCharBuf:[B
    move v2, p4

    .local v2, i:I
    :goto_1
    array-length v5, v1

    add-int/2addr v5, v2

    if-gt v5, p2, :cond_0

    .line 903
    const/4 v0, 0x1

    .line 904
    .local v0, bFind:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 906
    add-int v5, v2, v4

    aget-byte v5, p1, v5

    aget-byte v6, v1, v4

    if-eq v5, v6, :cond_3

    .line 908
    const/4 v0, 0x0

    .line 912
    :cond_2
    if-eqz v0, :cond_4

    move v3, v2

    .line 914
    goto :goto_0

    .line 904
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 901
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "strTarget"
    .parameter "strWho"

    .prologue
    const/4 v6, 0x1

    .line 544
    const-string v7, "SamMObexReadThread"

    const-string v8, "enter function Obex_Connect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    move v4, v6

    .line 589
    :cond_0
    :goto_0
    return v4

    .line 549
    :cond_1
    const/4 v4, 0x0

    .line 551
    .local v4, iRet:I
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 552
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, -0x80

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_CON_PKG;->setCommand(B)V

    .line 553
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 554
    .local v1, byteTarget:[B
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x46

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 555
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 557
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 558
    .local v2, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 561
    .end local v2           #byteWho:[B
    :cond_2
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v6}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v0

    .line 562
    .local v0, byteConnection:[B
    if-eqz v0, :cond_3

    array-length v7, v0

    if-gtz v7, :cond_4

    .line 564
    :cond_3
    const-string v7, "SamMObexReadThread"

    const-string v8, "exit function Obex_Connect, function getObexPkgStream fails"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 565
    goto :goto_0

    .line 567
    :cond_4
    new-instance v5, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v5}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 569
    .local v5, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    const-string v6, "SamMObexReadThread"

    invoke-virtual {p0, v6, v0}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 570
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v7, 0x4e20

    invoke-virtual {v6, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-nez v4, :cond_0

    .line 571
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v7, 0x4e20

    invoke-virtual {v6, v5, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 572
    const-string v6, "SamMObexReadThread"

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {p0, v6, v7}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v6, v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->setObexPkgStream([B)Z

    move-result v6

    if-nez v6, :cond_5

    .line 583
    const-string v6, "SamMObexReadThread"

    const-string v7, "received data is incorrect"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/4 v4, 0x1

    .line 585
    goto :goto_0

    .line 573
    :catch_0
    move-exception v3

    .line 575
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 576
    const-string v6, "SamMObexReadThread"

    const-string v7, "exit function Obex_Connect, fail in sending or receiving data"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v4, 0x1

    .line 578
    goto/16 :goto_0

    .line 588
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_5
    const-string v6, "SamMObexReadThread"

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

    goto/16 :goto_0
.end method

.method private Obex_Get(Ljava/lang/String;[BZLcom/futuredial/bluetooth/ByteArrayData;)I
    .locals 24
    .parameter "strType"
    .parameter "devType"
    .parameter "bReturnData"
    .parameter "outputBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 638
    const-string v20, "SamMObexReadThread"

    const-string v21, "enter function Obex_Get"

    invoke-static/range {v20 .. v21}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const/4 v15, 0x0

    .line 640
    .local v15, iRet:I
    new-instance v19, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v19 .. v19}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 641
    .local v19, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v20, v0

    const/16 v21, -0x35

    invoke-virtual/range {v20 .. v21}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v20

    check-cast v20, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object/from16 v11, v20

    check-cast v11, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 644
    .local v11, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, -0x35

    invoke-virtual {v11}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 646
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 647
    .local v10, byteType:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x42

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x4c

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v9

    .line 652
    .local v9, byteGetCommand:[B
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v20, v0

    if-gtz v20, :cond_1

    .line 654
    :cond_0
    const/4 v15, 0x1

    move/from16 v16, v15

    .line 767
    .end local v15           #iRet:I
    .local v16, iRet:I
    :goto_0
    return v16

    .line 657
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v5, arrRecvBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :cond_2
    sget v20, Lcom/futuredial/SamMObexReadThread;->CancelFlag:I

    if-nez v20, :cond_3

    .line 663
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    .line 664
    new-instance v20, Lcom/futuredial/CancelException;

    invoke-direct/range {v20 .. v20}, Lcom/futuredial/CancelException;-><init>()V

    throw v20

    .line 668
    :cond_3
    :try_start_0
    const-string v20, "SamMObexReadThread"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v20, v0

    const/16 v21, 0x4e20

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v15

    if-eqz v15, :cond_4

    move/from16 v16, v15

    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto :goto_0

    .line 670
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v20, v0

    const/16 v21, 0x4e20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v15

    if-eqz v15, :cond_5

    move/from16 v16, v15

    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto :goto_0

    .line 671
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_5
    const-string v20, "SamMObexReadThread"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v20

    if-nez v20, :cond_6

    .line 680
    const/4 v15, 0x1

    move/from16 v16, v15

    .line 681
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto :goto_0

    .line 672
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :catch_0
    move-exception v12

    .line 674
    .local v12, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v12}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 675
    const/4 v15, 0x1

    move/from16 v16, v15

    .line 676
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto :goto_0

    .line 683
    .end local v12           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v8

    .line 684
    .local v8, byteErrCode:B
    const/4 v6, 0x0

    .line 685
    .local v6, bObexFinished:Z
    and-int/lit8 v20, v8, 0x7f

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 687
    const/4 v6, 0x1

    .line 700
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x48

    invoke-virtual/range {v20 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v20

    check-cast v20, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v7, v20

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 701
    .local v7, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v7, :cond_7

    .line 703
    if-eqz p3, :cond_c

    .line 705
    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x49

    invoke-virtual/range {v20 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v20

    check-cast v20, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v13, v20

    check-cast v13, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 713
    .local v13, endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v13, :cond_8

    .line 715
    if-eqz p3, :cond_d

    .line 717
    invoke-virtual {v13}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_8
    :goto_3
    if-eqz v6, :cond_e

    .line 727
    if-nez v13, :cond_9

    .line 729
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/SamMObexReadThread;->bNobodyField:Z

    .line 748
    :cond_9
    if-eqz p3, :cond_12

    .line 750
    const/16 v18, 0x0

    .line 751
    .local v18, nLen:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 752
    .local v17, nCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    move/from16 v0, v17

    if-ge v14, v0, :cond_10

    .line 754
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v18, v18, v20

    .line 752
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 689
    .end local v7           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v13           #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v14           #i:I
    .end local v17           #nCount:I
    .end local v18           #nLen:I
    :cond_a
    and-int/lit8 v20, v8, 0x7f

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 691
    const/4 v6, 0x0

    goto :goto_1

    .line 695
    :cond_b
    const-string v20, "SamMObexReadThread"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "byteErrCode = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const/4 v15, 0x1

    move/from16 v16, v15

    .line 697
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 709
    .end local v16           #iRet:I
    .restart local v7       #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v15       #iRet:I
    :cond_c
    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/futuredial/SamMObexReadThread;->DataToParser([B)V

    goto :goto_2

    .line 721
    .restart local v13       #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    :cond_d
    invoke-virtual {v13}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/futuredial/SamMObexReadThread;->DataToParser([B)V

    goto :goto_3

    .line 736
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v9

    .line 740
    if-eqz v9, :cond_f

    array-length v0, v9

    move/from16 v20, v0

    if-gtz v20, :cond_2

    .line 742
    :cond_f
    const-string v20, "SamMObexReadThread"

    const-string v21, "fail in packing getting command"

    invoke-static/range {v20 .. v21}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const/4 v15, 0x1

    move/from16 v16, v15

    .line 744
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 756
    .end local v16           #iRet:I
    .restart local v14       #i:I
    .restart local v15       #iRet:I
    .restart local v17       #nCount:I
    .restart local v18       #nLen:I
    :cond_10
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    .line 757
    const/16 v18, 0x0

    .line 758
    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v14, v0, :cond_11

    .line 760
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v23, v0

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v18

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v18, v18, v20

    .line 758
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 763
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 766
    .end local v14           #i:I
    .end local v17           #nCount:I
    .end local v18           #nLen:I
    :cond_12
    const-string v20, "SamMObexReadThread"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "exit function Obex_Get, iRet = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v15

    .line 767
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0
.end method

.method private Obex_PutType(Ljava/lang/String;)I
    .locals 11
    .parameter "strType"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/16 v9, -0x35

    .line 594
    const-string v6, "SamMObexReadThread"

    const-string v8, "enter function Obex_PutType"

    invoke-static {v6, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v4, 0x0

    .line 596
    .local v4, iRet:I
    new-instance v5, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v5}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 597
    .local v5, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 598
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 599
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v6, v9}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v6

    check-cast v6, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v6

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 600
    .local v2, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v8

    invoke-virtual {v6, v9, v8}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 602
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 603
    .local v1, byteType:[B
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, 0x42

    invoke-virtual {v6, v8, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 605
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6, v10, v7}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 606
    .local v0, bytePutType:[B
    if-eqz v0, :cond_0

    array-length v6, v0

    if-gtz v6, :cond_1

    .line 608
    :cond_0
    const-string v6, "SamMObexReadThread"

    const-string v8, "exit function Obex_PutType, function getObexPkgStream fails"

    invoke-static {v6, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 633
    :goto_0
    return v6

    .line 613
    :cond_1
    :try_start_0
    const-string v6, "SamMObexReadThread"

    invoke-virtual {p0, v6, v0}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 614
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v7, 0x4e20

    invoke-virtual {v6, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_2

    move v6, v4

    goto :goto_0

    .line 615
    :cond_2
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v7, 0x4e20

    invoke-virtual {v6, v5, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v6, v4

    goto :goto_0

    .line 616
    :cond_3
    const-string v6, "SamMObexReadThread"

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {p0, v6, v7}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    iget-object v6, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v6, v7, v10}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v6

    if-nez v6, :cond_4

    .line 627
    const-string v6, "SamMObexReadThread"

    const-string v7, "received data is incorrect"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v4, 0x1

    move v6, v4

    .line 629
    goto :goto_0

    .line 617
    :catch_0
    move-exception v3

    .line 619
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 620
    const-string v6, "SamMObexReadThread"

    const-string v7, "exit function Obex_PutType, fail in sending or receiving data"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/4 v4, 0x1

    move v6, v4

    .line 622
    goto :goto_0

    .line 632
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_4
    const-string v6, "SamMObexReadThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exit function Obex_PutType, iRet = "

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

    .line 633
    goto :goto_0
.end method

.method private ReadCalendar()I
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 382
    const-string v26, "SamMObexReadThread"

    const-string v27, "enter function ReadCalendar"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/16 v20, 0x0

    .line 384
    .local v20, iRet:I
    new-instance v25, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v25 .. v25}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 386
    .local v25, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/4 v10, 0x0

    .local v10, iAppointmentCap:I
    const/4 v11, 0x0

    .line 387
    .local v11, iAppointmentCount:I
    const/4 v8, 0x0

    .local v8, iAnniversaryCap:I
    const/4 v9, 0x0

    .line 388
    .local v9, iAnniversaryCount:I
    const/4 v12, 0x0

    .local v12, iHolidayCap:I
    const/4 v13, 0x0

    .line 389
    .local v13, iHolidayCount:I
    const/4 v14, 0x0

    .local v14, iImportantCap:I
    const/4 v15, 0x0

    .line 390
    .local v15, iImportantCount:I
    const/16 v18, 0x0

    .local v18, iPrivateCap:I
    const/16 v19, 0x0

    .line 391
    .local v19, iPrivateCount:I
    const/16 v22, 0x0

    .local v22, iTaskCap:I
    const/16 v23, 0x0

    .line 392
    .local v23, iTaskCount:I
    const/16 v16, 0x0

    .local v16, iMemoCap:I
    const/16 v17, 0x0

    .line 395
    .local v17, iMemoCount:I
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v5, v0, [B

    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v5, v26

    .line 396
    .local v5, devType:[B
    const-string v26, "m-obex/calendar/count"

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/futuredial/SamMObexReadThread;->Obex_Get(Ljava/lang/String;[BZLcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v20

    .line 397
    if-eqz v20, :cond_0

    move/from16 v21, v20

    .line 475
    .end local v20           #iRet:I
    .local v21, iRet:I
    :goto_0
    return v21

    .line 401
    .end local v21           #iRet:I
    .restart local v20       #iRet:I
    :cond_0
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1

    .line 403
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v10, v26, v27

    .line 404
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v11, v26, v27

    .line 407
    :cond_1
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2

    .line 409
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x4

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x5

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v8, v26, v27

    .line 410
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x6

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x7

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v9, v26, v27

    .line 413
    :cond_2
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    .line 415
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x8

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x9

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v12, v26, v27

    .line 416
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0xa

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0xb

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v13, v26, v27

    .line 419
    :cond_3
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_4

    .line 421
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0xc

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0xd

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v14, v26, v27

    .line 422
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0xe

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0xf

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v15, v26, v27

    .line 425
    :cond_4
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x14

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    .line 427
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x10

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x11

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v18, v26, v27

    .line 428
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x12

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x13

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v19, v26, v27

    .line 431
    :cond_5
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x18

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    .line 433
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x14

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x15

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v22, v26, v27

    .line 434
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x16

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x17

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v23, v26, v27

    .line 437
    :cond_6
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1c

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    .line 439
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x18

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x19

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v16, v26, v27

    .line 440
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    const/16 v27, 0x1a

    aget-byte v26, v26, v27

    shl-int/lit8 v26, v26, 0x8

    const v27, 0xff00

    and-int v26, v26, v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v27, v0

    const/16 v28, 0x1b

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v17, v26, v27

    .line 444
    :cond_7
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v6, v0, [I

    const/16 v26, 0x0

    aput v11, v6, v26

    const/16 v26, 0x1

    aput v9, v6, v26

    const/16 v26, 0x2

    aput v13, v6, v26

    const/16 v26, 0x3

    aput v15, v6, v26

    const/16 v26, 0x4

    aput v19, v6, v26

    const/16 v26, 0x5

    const/16 v27, 0x0

    aput v27, v6, v26

    const/16 v26, 0x6

    aput v23, v6, v26

    const/16 v26, 0x7

    aput v17, v6, v26

    .line 447
    .local v6, entryCount:[I
    const/4 v4, 0x1

    .local v4, category:B
    :goto_1
    const/16 v26, 0x8

    move/from16 v0, v26

    if-gt v4, v0, :cond_c

    .line 449
    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v0, v4, :cond_9

    .line 447
    :cond_8
    add-int/lit8 v26, v4, 0x1

    move/from16 v0, v26

    int-to-byte v4, v0

    goto :goto_1

    .line 454
    :cond_9
    add-int/lit8 v26, v4, -0x1

    aget v26, v6, v26

    if-lez v26, :cond_8

    .line 456
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v5, v0, [B

    .end local v5           #devType:[B
    fill-array-data v5, :array_0

    .line 457
    .restart local v5       #devType:[B
    const/16 v26, 0x0

    aput-byte v4, v5, v26

    .line 459
    add-int/lit8 v26, v4, -0x1

    aget v26, v6, v26

    rem-int/lit8 v26, v26, 0xa

    if-nez v26, :cond_a

    add-int/lit8 v26, v4, -0x1

    aget v26, v6, v26

    div-int/lit8 v24, v26, 0xa

    .line 461
    .local v24, max:I
    :goto_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move/from16 v0, v24

    if-ge v7, v0, :cond_8

    .line 463
    const/16 v26, 0x2

    and-int/lit16 v0, v7, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v5, v26

    .line 464
    const/16 v26, 0x1

    shr-int/lit8 v27, v7, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v5, v26

    .line 465
    const-string v26, "m-obex/calendar/load"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/futuredial/SamMObexReadThread;->Obex_Get(Ljava/lang/String;[BZLcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v20

    .line 466
    if-eqz v20, :cond_b

    move/from16 v21, v20

    .line 468
    .end local v20           #iRet:I
    .restart local v21       #iRet:I
    goto/16 :goto_0

    .line 459
    .end local v7           #i:I
    .end local v21           #iRet:I
    .end local v24           #max:I
    .restart local v20       #iRet:I
    :cond_a
    add-int/lit8 v26, v4, -0x1

    aget v26, v6, v26

    div-int/lit8 v26, v26, 0xa

    add-int/lit8 v24, v26, 0x1

    goto :goto_2

    .line 461
    .restart local v7       #i:I
    .restart local v24       #max:I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 474
    .end local v7           #i:I
    .end local v24           #max:I
    :cond_c
    const-string v26, "SamMObexReadThread"

    const-string v27, "exit function ReadCalendar"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v21, v20

    .line 475
    .end local v20           #iRet:I
    .restart local v21       #iRet:I
    goto/16 :goto_0

    .line 456
    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private ReadContact()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    const v14, 0xff00

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 288
    const-string v8, "SamMObexReadThread"

    const-string v9, "enter function ReadContact"

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v3, 0x0

    .line 292
    .local v3, iRet:I
    new-instance v7, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v7}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 295
    .local v7, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/4 v5, 0x0

    .line 296
    .local v5, nMemCap:I
    const/4 v6, 0x0

    .line 298
    .local v6, nMemCount:I
    new-array v0, v10, [B

    aput-byte v10, v0, v11

    .line 299
    .local v0, devType:[B
    const-string v8, "m-obex/contacts/count"

    invoke-direct {p0, v8, v0, v10, v7}, Lcom/futuredial/SamMObexReadThread;->Obex_Get(Ljava/lang/String;[BZLcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v3

    .line 300
    if-eqz v3, :cond_0

    move v4, v3

    .line 377
    .end local v3           #iRet:I
    .local v4, iRet:I
    :goto_0
    return v4

    .line 304
    .end local v4           #iRet:I
    .restart local v3       #iRet:I
    :cond_0
    iget-object v8, v7, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v8, v8, v11

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v14

    iget-object v9, v7, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    or-int v5, v8, v9

    .line 305
    iget-object v8, v7, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v8, v8, v12

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v14

    iget-object v9, v7, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v9, v9, v13

    and-int/lit16 v9, v9, 0xff

    or-int v6, v8, v9

    .line 322
    if-lez v6, :cond_3

    .line 324
    new-array v0, v13, [B

    .end local v0           #devType:[B
    fill-array-data v0, :array_0

    .line 325
    .restart local v0       #devType:[B
    const/4 v2, 0x0

    .line 326
    .local v2, i:I
    iput-boolean v11, p0, Lcom/futuredial/SamMObexReadThread;->bNobodyField:Z

    .line 327
    :goto_1
    sget v8, Lcom/futuredial/vxx/VxxParser;->entryCount:I

    if-ge v8, v6, :cond_3

    const v8, 0xffff

    if-gt v2, v8, :cond_3

    .line 329
    and-int/lit16 v8, v2, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v12

    .line 330
    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v10

    .line 331
    const-string v8, "m-obex/contacts/load"

    const/4 v9, 0x0

    invoke-direct {p0, v8, v0, v11, v9}, Lcom/futuredial/SamMObexReadThread;->Obex_Get(Ljava/lang/String;[BZLcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v3

    .line 332
    if-eqz v3, :cond_1

    move v4, v3

    .line 334
    .end local v3           #iRet:I
    .restart local v4       #iRet:I
    goto :goto_0

    .line 336
    .end local v4           #iRet:I
    .restart local v3       #iRet:I
    :cond_1
    iget-boolean v8, p0, Lcom/futuredial/SamMObexReadThread;->bNobodyField:Z

    if-nez v8, :cond_2

    .line 339
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 340
    :catch_0
    move-exception v1

    .line 342
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 376
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #i:I
    :cond_3
    const-string v8, "SamMObexReadThread"

    const-string v9, "exit function ReadContact"

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 377
    .end local v3           #iRet:I
    .restart local v4       #iRet:I
    goto :goto_0

    .line 324
    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private ReadSms()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 480
    const-string v13, "SamMObexReadThread"

    const-string v14, "enter function ReadSms"

    invoke-static {v13, v14}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v7, 0x0

    .line 482
    .local v7, iRet:I
    new-instance v9, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v9}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 484
    .local v9, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const-string v13, "FDSAMMOBEXSMSBEG"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 485
    .local v1, beginFlag:[B
    const-string v13, "FDSAMMOBEXSMSEND"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 486
    .local v6, endFlag:[B
    const/4 v13, 0x4

    new-array v3, v13, [I

    fill-array-data v3, :array_0

    .line 490
    .local v3, boxType:[I
    const/4 v2, 0x0

    .local v2, boxIndex:B
    :goto_0
    const/4 v13, 0x4

    if-ge v2, v13, :cond_3

    .line 492
    const/16 v13, 0x8

    new-array v4, v13, [B

    fill-array-data v4, :array_1

    .line 493
    .local v4, devType:[B
    const/4 v13, 0x7

    const/4 v14, 0x1

    shl-int/2addr v14, v2

    int-to-byte v14, v14

    aput-byte v14, v4, v13

    .line 495
    const-string v13, "m-obex/sms/count"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14, v9}, Lcom/futuredial/SamMObexReadThread;->Obex_Get(Ljava/lang/String;[BZLcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v7

    .line 496
    if-eqz v7, :cond_0

    move v8, v7

    .line 539
    .end local v4           #devType:[B
    .end local v7           #iRet:I
    .local v8, iRet:I
    :goto_1
    return v8

    .line 500
    .end local v8           #iRet:I
    .restart local v4       #devType:[B
    .restart local v7       #iRet:I
    :cond_0
    iget-object v13, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v14, 0x14

    aget-byte v13, v13, v14

    int-to-long v13, v13

    const/16 v15, 0x18

    shl-long/2addr v13, v15

    const-wide v15, 0xff000000L

    and-long/2addr v13, v15

    iget-object v15, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v16, 0x15

    aget-byte v15, v15, v16

    int-to-long v15, v15

    const/16 v17, 0x10

    shl-long v15, v15, v17

    const-wide/32 v17, 0xff0000

    and-long v15, v15, v17

    or-long/2addr v13, v15

    iget-object v15, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v16, 0x16

    aget-byte v15, v15, v16

    int-to-long v15, v15

    const/16 v17, 0x8

    shl-long v15, v15, v17

    const-wide/32 v17, 0xff00

    and-long v15, v15, v17

    or-long/2addr v13, v15

    iget-object v15, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v16, 0x17

    aget-byte v15, v15, v16

    int-to-long v15, v15

    const-wide/16 v17, 0xff

    and-long v15, v15, v17

    or-long v10, v13, v15

    .line 505
    .local v10, smsCount:J
    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-lez v13, :cond_2

    .line 509
    const/16 v13, 0x17

    new-array v12, v13, [B

    .line 510
    .local v12, start:[B
    const/4 v13, 0x0

    const/16 v14, 0x16

    const/4 v15, -0x3

    aput-byte v15, v12, v14

    aput-byte v15, v12, v13

    .line 511
    const/16 v13, 0x11

    aget v14, v3, v2

    add-int/lit16 v14, v14, 0x90

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 512
    iget-object v13, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v14, 0x14

    const/16 v15, 0x12

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x10

    invoke-static {v1, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    invoke-static {v12}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 519
    const-string v13, "m-obex/sms/load"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14, v15}, Lcom/futuredial/SamMObexReadThread;->Obex_Get(Ljava/lang/String;[BZLcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v7

    .line 520
    if-eqz v7, :cond_1

    move v8, v7

    .line 522
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto :goto_1

    .line 528
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_1
    const/16 v13, 0x17

    new-array v5, v13, [B

    .line 529
    .local v5, end:[B
    const/4 v13, 0x0

    const/16 v14, 0x16

    const/4 v15, -0x3

    aput-byte v15, v5, v14

    aput-byte v15, v5, v13

    .line 530
    const/16 v13, 0x11

    aget v14, v3, v2

    add-int/lit16 v14, v14, 0x90

    int-to-byte v14, v14

    aput-byte v14, v5, v13

    .line 531
    iget-object v13, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/16 v14, 0x14

    const/16 v15, 0x12

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v5, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x10

    invoke-static {v6, v13, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    invoke-static {v5}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 490
    .end local v5           #end:[B
    .end local v12           #start:[B
    :cond_2
    add-int/lit8 v13, v2, 0x1

    int-to-byte v2, v13

    goto/16 :goto_0

    .line 538
    .end local v4           #devType:[B
    .end local v10           #smsCount:J
    :cond_3
    const-string v13, "SamMObexReadThread"

    const-string v14, "exit function ReadSms"

    invoke-static {v13, v14}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 539
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto/16 :goto_1

    .line 486
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 492
    :array_1
    .array-data 0x1
        0x81t
        0x8t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private SaveLeftData([BII)V
    .locals 3
    .parameter "result"
    .parameter "iStart"
    .parameter "iEnd"

    .prologue
    .line 923
    sub-int v0, p3, p2

    .line 924
    .local v0, leftDataLen:I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/futuredial/SamMObexReadThread;->leftDataBuf:[B

    .line 925
    iget-object v1, p0, Lcom/futuredial/SamMObexReadThread;->leftDataBuf:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    return-void
.end method

.method private Send_Recv([BLcom/futuredial/bluetooth/ByteArrayData;II)I
    .locals 5
    .parameter "sendBuffer"
    .parameter "recvBuffer"
    .parameter "iTimeOut"
    .parameter "iRetry"

    .prologue
    .line 175
    const/4 v1, 0x1

    .local v1, iRet:I
    move v2, p4

    .line 178
    .end local p4
    .local v2, iRetry:I
    :goto_0
    add-int/lit8 p4, v2, -0x1

    .end local v2           #iRetry:I
    .restart local p4
    if-lez v2, :cond_2

    .line 180
    :try_start_0
    const-string v3, "SamMObexReadThread"

    invoke-virtual {p0, v3, p1}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 181
    iget-object v3, p0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v3, p1, p3}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v1

    if-eqz v1, :cond_0

    move v2, p4

    .end local p4
    .restart local v2       #iRetry:I
    goto :goto_0

    .line 182
    .end local v2           #iRetry:I
    .restart local p4
    :cond_0
    iget-object v3, p0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v3, p2, p3}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, p4

    .end local p4
    .restart local v2       #iRetry:I
    goto :goto_0

    .line 183
    .end local v2           #iRetry:I
    .restart local p4
    :cond_1
    const-string v3, "SamMObexReadThread"

    iget-object v4, p2, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {p0, v3, v4}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_2
    :goto_1
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v0}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 189
    const-string v3, "SamMObexReadThread"

    const-string v4, "Exception during calling Send_Recv"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private SetPhoneMode()I
    .locals 19

    .prologue
    .line 198
    const/4 v5, 0x1

    .line 200
    .local v5, iRet:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    new-instance v18, Lcom/futuredial/SamMObexReadThread$2;

    invoke-direct/range {v18 .. v19}, Lcom/futuredial/SamMObexReadThread$2;-><init>(Lcom/futuredial/SamMObexReadThread;)V

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 218
    new-instance v10, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v10}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 219
    .local v10, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/4 v3, 0x0

    .line 222
    .local v3, byteSetModeCmd:[B
    const-string v11, "AT\r\n"

    .line 223
    .local v11, strCom0:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 224
    const/16 v17, 0x1388

    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v10, v1, v2}, Lcom/futuredial/SamMObexReadThread;->Send_Recv([BLcom/futuredial/bluetooth/ByteArrayData;II)I

    move-result v5

    if-eqz v5, :cond_0

    move v6, v5

    .line 283
    .end local v5           #iRet:I
    .local v6, iRet:I
    :goto_0
    return v6

    .line 230
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_0
    const-string v12, "ATZ\r\n"

    .line 231
    .local v12, strCom1:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 232
    const/16 v17, 0x1388

    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v10, v1, v2}, Lcom/futuredial/SamMObexReadThread;->Send_Recv([BLcom/futuredial/bluetooth/ByteArrayData;II)I

    move-result v5

    if-eqz v5, :cond_1

    move v6, v5

    .line 234
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 237
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_1
    const-string v13, "AT+CGMM\r"

    .line 238
    .local v13, strCom2:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 239
    const/16 v17, 0x4e20

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v10, v1, v2}, Lcom/futuredial/SamMObexReadThread;->Send_Recv([BLcom/futuredial/bluetooth/ByteArrayData;II)I

    move-result v5

    if-eqz v5, :cond_2

    move v6, v5

    .line 241
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 245
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_2
    const-string v14, "AT+CGSN\r"

    .line 246
    .local v14, strCom3:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 247
    const/16 v17, 0x4e20

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v10, v1, v2}, Lcom/futuredial/SamMObexReadThread;->Send_Recv([BLcom/futuredial/bluetooth/ByteArrayData;II)I

    move-result v5

    if-eqz v5, :cond_3

    move v6, v5

    .line 249
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 254
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_3
    const-string v16, "AT+SYNCML=MOBEXSTART\r\n"

    .line 255
    .local v16, strSetModeCmd:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 256
    const/16 v7, 0x14

    .local v7, iRetry:I
    move v8, v7

    .line 257
    .end local v7           #iRetry:I
    .local v8, iRetry:I
    :goto_1
    add-int/lit8 v7, v8, -0x1

    .end local v8           #iRetry:I
    .restart local v7       #iRetry:I
    if-lez v8, :cond_5

    .line 259
    const/16 v17, 0x4e20

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v10, v1, v2}, Lcom/futuredial/SamMObexReadThread;->Send_Recv([BLcom/futuredial/bluetooth/ByteArrayData;II)I

    move-result v5

    if-eqz v5, :cond_4

    move v6, v5

    .line 261
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 264
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_4
    new-instance v15, Ljava/lang/String;

    iget-object v0, v10, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    .line 265
    .local v15, strRet:Ljava/lang/String;
    const-string v17, "OK\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 266
    .local v9, indexOK:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_6

    .line 268
    const/4 v5, 0x0

    .end local v9           #indexOK:I
    .end local v15           #strRet:Ljava/lang/String;
    :cond_5
    move v6, v5

    .line 283
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto/16 :goto_0

    .line 273
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    .restart local v9       #indexOK:I
    .restart local v15       #strRet:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x1

    .line 276
    const-wide/16 v17, 0x3e8

    :try_start_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v8, v7

    .line 281
    .end local v7           #iRetry:I
    .restart local v8       #iRetry:I
    goto :goto_1

    .line 277
    .end local v8           #iRetry:I
    .restart local v7       #iRetry:I
    :catch_0
    move-exception v4

    .line 279
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method protected DoComm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 66
    iput v8, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    .line 69
    :try_start_0
    const-string v4, "SamMObexReadThread"

    const-string v5, "Enter function DoComm"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x1

    .line 73
    .local v2, iRet:I
    sget v4, Lcom/futuredial/SamMObexReadThread;->CancelFlag:I

    if-nez v4, :cond_0

    .line 75
    const/4 v4, 0x4

    iput v4, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    .line 76
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 151
    .end local v2           #iRet:I
    :catch_0
    move-exception v3

    .line 154
    .local v3, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    iput-boolean v6, p0, Lcom/futuredial/SamMObexReadThread;->bPopResume:Z

    .line 155
    invoke-virtual {p0, v6}, Lcom/futuredial/SamMObexReadThread;->ASSERT(I)V

    .line 156
    const/16 v4, 0x67

    iput v4, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    .line 170
    .end local v3           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/futuredial/SamMObexReadThread;->Close(Ljava/lang/Boolean;)V

    .line 171
    :goto_1
    return-void

    .line 79
    .restart local v2       #iRet:I
    :cond_0
    :try_start_1
    const-string v4, "SamMObexReadThread"

    const-string v5, "OpenPort"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/futuredial/SamMObexReadThread;->OpenPort()I

    .line 83
    invoke-direct {p0}, Lcom/futuredial/SamMObexReadThread;->SetPhoneMode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iput v2, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    .line 86
    const-string v4, "SamMObexReadThread"

    const-string v5, "Fail in setting phone mode."

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 158
    .end local v2           #iRet:I
    :catch_1
    move-exception v0

    .line 159
    .local v0, ce:Lcom/futuredial/CancelException;
    const-string v4, "SamMObexReadThread"

    const-string v5, "Cancel Msg!!!"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iput v7, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 90
    .end local v0           #ce:Lcom/futuredial/CancelException;
    .restart local v2       #iRet:I
    :cond_1
    :try_start_2
    const-string v4, "SamMObexReadThread"

    const-string v5, "SetIsCompleted"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/futuredial/SamMObexReadThread;->SetIsCompleted()V

    .line 94
    const-string v4, "MOBEX"

    const-string v5, ""

    invoke-direct {p0, v4, v5}, Lcom/futuredial/SamMObexReadThread;->Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 95
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/futuredial/SamMObexReadThread;->ASSERT(II)V

    .line 96
    if-eqz v2, :cond_2

    .line 98
    iput v2, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    .line 99
    const-string v4, "SamMObexReadThread"

    const-string v5, "fail in connecting obex server"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 162
    .end local v2           #iRet:I
    :catch_2
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    invoke-virtual {p0, v6}, Lcom/futuredial/SamMObexReadThread;->ASSERT(I)V

    .line 167
    iput v6, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 103
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #iRet:I
    :cond_2
    :try_start_3
    sget v4, Lcom/futuredial/SamMObexReadThread;->CancelFlag:I

    if-nez v4, :cond_3

    .line 105
    const/4 v4, 0x4

    iput v4, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    .line 106
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4

    .line 110
    :cond_3
    const-string v4, "m-obex/connection_packet"

    invoke-direct {p0, v4}, Lcom/futuredial/SamMObexReadThread;->Obex_PutType(Ljava/lang/String;)I

    move-result v2

    .line 111
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/futuredial/SamMObexReadThread;->ASSERT(II)V

    .line 112
    if-eqz v2, :cond_4

    .line 114
    iput v2, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    .line 115
    const-string v4, "SamMObexReadThread"

    const-string v5, "Fail in setting phone mode"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_4
    sget v4, Lcom/futuredial/SamMObexReadThread;->CancelFlag:I

    if-nez v4, :cond_5

    .line 121
    const/4 v4, 0x4

    iput v4, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    .line 122
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4

    .line 127
    :cond_5
    iget v4, p0, Lcom/futuredial/SamMObexReadThread;->contentType:I

    packed-switch v4, :pswitch_data_0

    .line 142
    const/4 v2, 0x1

    .line 143
    const-string v4, "SamMObexReadThread"

    const-string v5, "wrong moudle type"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_2
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/futuredial/SamMObexReadThread;->Obex_DisConnect(Ljava/lang/String;)I

    .line 149
    const-string v4, "SamMObexReadThread"

    const-string v5, "Exit function DoComm"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :pswitch_0
    invoke-direct {p0}, Lcom/futuredial/SamMObexReadThread;->ReadContact()I

    move-result v2

    .line 131
    iput v2, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    goto :goto_2

    .line 134
    :pswitch_1
    invoke-direct {p0}, Lcom/futuredial/SamMObexReadThread;->ReadCalendar()I

    move-result v2

    .line 135
    iput v2, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I

    goto :goto_2

    .line 138
    :pswitch_2
    invoke-direct {p0}, Lcom/futuredial/SamMObexReadThread;->ReadSms()I

    move-result v2

    .line 139
    iput v2, p0, Lcom/futuredial/SamMObexReadThread;->ThreadErrorCode:I
    :try_end_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public LogBinData(Ljava/lang/String;[B)V
    .locals 13
    .parameter "strType"
    .parameter "binData"

    .prologue
    .line 813
    iget-boolean v11, p0, Lcom/futuredial/SamMObexReadThread;->bPrintLog:Z

    if-eqz v11, :cond_9

    .line 815
    move-object v7, p1

    .line 816
    .local v7, st:Ljava/lang/String;
    const-string v11, "Begin"

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, bFinished:Z
    const/16 v6, 0x10

    .line 819
    .local v6, nLen:I
    const/16 v11, 0x30

    new-array v9, v11, [C

    .line 820
    .local v9, szBinLine:[C
    new-array v10, v6, [C

    .line 821
    .local v10, szStrLine:[C
    const-string v8, ""

    .line 822
    .local v8, strMsg:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, m:I
    :goto_0
    array-length v11, v9

    if-ge v5, v11, :cond_0

    .line 824
    const/16 v11, 0x20

    aput-char v11, v9, v5

    .line 822
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 826
    :cond_0
    const/4 v5, 0x0

    :goto_1
    array-length v11, v10

    if-ge v5, v11, :cond_1

    .line 828
    const/16 v11, 0x20

    aput-char v11, v10, v5

    .line 826
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 831
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, p2

    if-ge v2, v11, :cond_7

    .line 833
    const/4 v0, 0x0

    .line 834
    aget-byte v11, p2, v2

    shr-int/lit8 v11, v11, 0x4

    int-to-byte v11, v11

    and-int/lit8 v1, v11, 0xf

    .line 835
    .local v1, h:I
    aget-byte v11, p2, v2

    and-int/lit8 v4, v11, 0xf

    .line 836
    .local v4, l:I
    rem-int v3, v2, v6

    .line 837
    .local v3, id:I
    const/16 v11, 0x9

    if-gt v1, v11, :cond_2

    .line 839
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v12, v1, 0x30

    int-to-char v12, v12

    aput-char v12, v9, v11

    .line 846
    :goto_3
    const/16 v11, 0x9

    if-gt v4, v11, :cond_3

    .line 848
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v4, 0x30

    int-to-char v12, v12

    aput-char v12, v9, v11

    .line 854
    :goto_4
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, 0x2

    const/16 v12, 0x20

    aput-char v12, v9, v11

    .line 856
    aget-byte v11, p2, v2

    const/16 v12, 0x1e

    if-lt v11, v12, :cond_4

    .line 858
    aget-byte v11, p2, v2

    int-to-char v11, v11

    aput-char v11, v10, v3

    .line 865
    :goto_5
    add-int/lit8 v11, v2, 0x1

    rem-int/2addr v11, v6

    if-nez v11, :cond_6

    .line 867
    const/4 v0, 0x1

    .line 868
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

    .line 869
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v5, 0x0

    :goto_6
    array-length v11, v9

    if-ge v5, v11, :cond_5

    .line 873
    const/16 v11, 0x20

    aput-char v11, v9, v5

    .line 871
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 843
    :cond_2
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v12, v1, 0x37

    int-to-char v12, v12

    aput-char v12, v9, v11

    goto :goto_3

    .line 852
    :cond_3
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v4, 0x37

    int-to-char v12, v12

    aput-char v12, v9, v11

    goto :goto_4

    .line 862
    :cond_4
    const/16 v11, 0x2e

    aput-char v11, v10, v3

    goto :goto_5

    .line 875
    :cond_5
    const/4 v5, 0x0

    :goto_7
    array-length v11, v10

    if-ge v5, v11, :cond_6

    .line 877
    const/16 v11, 0x20

    aput-char v11, v10, v5

    .line 875
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 831
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 882
    .end local v1           #h:I
    .end local v3           #id:I
    .end local v4           #l:I
    :cond_7
    if-nez v0, :cond_8

    .line 884
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

    .line 885
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_8
    const-string v11, "End"

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
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

.method protected Obex_DisConnect(Ljava/lang/String;)I
    .locals 11
    .parameter "strWho"

    .prologue
    const/4 v10, 0x0

    const/16 v9, -0x35

    .line 772
    const-string v7, "SamMObexReadThread"

    const-string v8, "enter function Obex_DisConnect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const/4 v4, 0x0

    .line 774
    .local v4, iRet:I
    new-instance v6, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v6}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 775
    .local v6, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 776
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, -0x7f

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 777
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v9}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v7

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v7

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 778
    .local v2, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 779
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 781
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 782
    .local v1, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 784
    .end local v1           #byteWho:[B
    :cond_0
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v8, 0x1

    invoke-virtual {v7, v10, v8}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 785
    .local v0, byteDisConnection:[B
    if-eqz v0, :cond_1

    array-length v7, v0

    if-gtz v7, :cond_2

    .line 787
    :cond_1
    const/4 v4, 0x1

    move v5, v4

    .line 808
    .end local v4           #iRet:I
    .local v5, iRet:I
    :goto_0
    return v5

    .line 791
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_2
    :try_start_0
    const-string v7, "SamMObexReadThread"

    invoke-virtual {p0, v7, v0}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 792
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v8, 0x4e20

    invoke-virtual {v7, v0, v8}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_3

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 793
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_3
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v8, 0x4e20

    invoke-virtual {v7, v6, v8}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 794
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_4
    const-string v7, "SamMObexReadThread"

    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {p0, v7, v8}, Lcom/futuredial/SamMObexReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    iget-object v7, p0, Lcom/futuredial/SamMObexReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v7, v8, v10}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v7

    if-nez v7, :cond_5

    .line 803
    const/4 v4, 0x1

    move v5, v4

    .line 804
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 795
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :catch_0
    move-exception v3

    .line 797
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 798
    const/4 v4, 0x1

    move v5, v4

    .line 799
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 807
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_5
    const-string v7, "SamMObexReadThread"

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

    .line 808
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/futuredial/SamMObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/SamMObexReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/SamMObexReadThread$1;-><init>(Lcom/futuredial/SamMObexReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 61
    return-void
.end method
