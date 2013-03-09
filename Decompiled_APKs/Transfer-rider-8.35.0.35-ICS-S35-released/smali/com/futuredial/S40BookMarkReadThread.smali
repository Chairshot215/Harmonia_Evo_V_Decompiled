.class public Lcom/futuredial/S40BookMarkReadThread;
.super Lcom/futuredial/ReadThread;
.source "S40BookMarkReadThread.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "S40BkmReadThd"


# instance fields
.field private m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

.field private m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

.field private m_strBkmPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 38
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 39
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/S40BookMarkReadThread;->m_strBkmPath:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private GetBookMarkList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 27
    .parameter "strName"
    .parameter "strType"
    .parameter "strWho"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 524
    .local p4, arBkmName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, arFolderName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v24, "S40BkmReadThd"

    const-string v25, "enter function GetBookMarkList"

    invoke-static/range {v24 .. v25}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v11, 0x0

    .line 527
    .local v11, iRet:I
    new-instance v18, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v18 .. v18}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 529
    .local v18, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/futuredial/S40BookMarkReadThread;->Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v11

    .line 530
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/futuredial/S40BookMarkReadThread;->ASSERT(II)V

    .line 531
    if-eqz v11, :cond_0

    .line 533
    const-string v24, "S40BkmReadThd"

    const-string v25, "fail in getting bookmark list"

    invoke-static/range {v24 .. v25}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .line 588
    .end local v11           #iRet:I
    .local v12, iRet:I
    :goto_0
    return v12

    .line 539
    .end local v12           #iRet:I
    .restart local v11       #iRet:I
    :cond_0
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 540
    .local v13, ins:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v23

    .line 541
    .local v23, xpath:Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 543
    .local v5, doc:Lorg/w3c/dom/Document;
    const-string v24, "/folder-listing/file"

    sget-object v25, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v5, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/NodeList;

    .line 544
    .local v14, nlFile:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 545
    .local v16, nlfSize:I
    const/4 v9, 0x0

    .local v9, fIndex:I
    :goto_1
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 547
    invoke-interface {v14, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 548
    .local v7, eleFile:Lorg/w3c/dom/Element;
    const-string v24, "name"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 549
    .local v19, strFileName:Ljava/lang/String;
    const-string v24, "user-perm"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 550
    .local v20, strFilePerm:Ljava/lang/String;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_2

    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_2

    const-string v24, "R"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    const-string v24, "r"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 555
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 560
    .end local v7           #eleFile:Lorg/w3c/dom/Element;
    .end local v19           #strFileName:Ljava/lang/String;
    .end local v20           #strFilePerm:Ljava/lang/String;
    :cond_3
    const-string v24, "/folder-listing/folder"

    sget-object v25, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v5, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/NodeList;

    .line 561
    .local v15, nlFolder:Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    .line 562
    .local v17, nlfoSize:I
    const/4 v10, 0x0

    .local v10, foIndex:I
    :goto_2
    move/from16 v0, v17

    if-ge v10, v0, :cond_6

    .line 564
    invoke-interface {v15, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 565
    .local v8, eleFolder:Lorg/w3c/dom/Element;
    const-string v24, "name"

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 566
    .local v21, strFolderName:Ljava/lang/String;
    const-string v24, "user-perm"

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 567
    .local v22, strFolderPerm:Ljava/lang/String;
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_5

    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_5

    const-string v24, "R"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const-string v24, "r"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 572
    :cond_4
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 577
    .end local v8           #eleFolder:Lorg/w3c/dom/Element;
    .end local v21           #strFolderName:Ljava/lang/String;
    .end local v22           #strFolderPerm:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 585
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v9           #fIndex:I
    .end local v10           #foIndex:I
    .end local v13           #ins:Ljava/io/ByteArrayInputStream;
    .end local v14           #nlFile:Lorg/w3c/dom/NodeList;
    .end local v15           #nlFolder:Lorg/w3c/dom/NodeList;
    .end local v16           #nlfSize:I
    .end local v17           #nlfoSize:I
    .end local v23           #xpath:Ljavax/xml/xpath/XPath;
    :goto_3
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/futuredial/S40BookMarkReadThread;->ASSERT(II)V

    .line 587
    const-string v24, "S40BkmReadThd"

    const-string v25, "exit function GetBookMarkList"

    invoke-static/range {v24 .. v25}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .line 588
    .end local v11           #iRet:I
    .restart local v12       #iRet:I
    goto/16 :goto_0

    .line 579
    .end local v12           #iRet:I
    .restart local v11       #iRet:I
    :catch_0
    move-exception v6

    .line 581
    .local v6, e:Ljava/lang/Exception;
    const-string v24, "S40BkmReadThd"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    const/4 v11, 0x1

    goto :goto_3
.end method

.method private GetBookMarks(Ljava/lang/String;)I
    .locals 13
    .parameter "strPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 433
    const/4 v7, 0x1

    .line 436
    .local v7, iRet:I
    sget v0, Lcom/futuredial/S40BookMarkReadThread;->CancelFlag:I

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 439
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 442
    :cond_0
    const-string v0, "PC Suite"

    invoke-direct {p0, p1, v0}, Lcom/futuredial/S40BookMarkReadThread;->Obex_SetPath(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/futuredial/S40BookMarkReadThread;->ASSERT(II)V

    .line 444
    if-eqz v7, :cond_1

    .line 446
    iput v7, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 447
    const-string v0, "S40BkmReadThd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail in setting obex path while reading bookmark, path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 519
    .end local v7           #iRet:I
    .local v8, iRet:I
    :goto_0
    return v8

    .line 452
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_1
    sget v0, Lcom/futuredial/S40BookMarkReadThread;->CancelFlag:I

    if-nez v0, :cond_2

    .line 454
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 455
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 459
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v4, arBkmName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v5, arFolderName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 462
    const-string v1, ""

    const-string v2, "x-obex/folder-listing"

    const-string v3, "PC Suite"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/futuredial/S40BookMarkReadThread;->GetBookMarkList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v7

    .line 463
    if-eqz v7, :cond_3

    .line 465
    iput v7, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 466
    const-string v0, "S40BkmReadThd"

    const-string v1, "fail in getting bookmark listing"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 467
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto :goto_0

    .line 472
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, itbkm:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 475
    sget v0, Lcom/futuredial/S40BookMarkReadThread;->CancelFlag:I

    if-nez v0, :cond_4

    .line 477
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 478
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 481
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 483
    .local v11, strBkmName:Ljava/lang/String;
    new-instance v6, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v6}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 484
    .local v6, bkmBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const-string v0, ""

    const-string v1, "PC Suite"

    invoke-direct {p0, v11, v0, v1, v6}, Lcom/futuredial/S40BookMarkReadThread;->Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v7

    .line 485
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/futuredial/S40BookMarkReadThread;->ASSERT(II)V

    .line 486
    if-eqz v7, :cond_5

    .line 488
    iput v7, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 489
    const-string v0, "S40BkmReadThd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail in reading bookmark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 490
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto :goto_0

    .line 494
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_5
    sget v0, Lcom/futuredial/S40BookMarkReadThread;->CancelFlag:I

    if-nez v0, :cond_6

    .line 496
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 497
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 501
    :cond_6
    iget-object v0, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-static {v0}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    goto :goto_1

    .line 505
    .end local v6           #bkmBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v11           #strBkmName:Ljava/lang/String;
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, itfolder:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 509
    .local v12, strSubFolderPath:Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/futuredial/S40BookMarkReadThread;->GetBookMarks(Ljava/lang/String;)I

    move-result v7

    .line 510
    if-eqz v7, :cond_8

    .line 512
    iput v7, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 513
    const-string v0, "S40BkmReadThd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail in reading bookmark from sub-folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 514
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto/16 :goto_0

    .end local v8           #iRet:I
    .end local v12           #strSubFolderPath:Ljava/lang/String;
    .restart local v7       #iRet:I
    :cond_9
    move v8, v7

    .line 519
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto/16 :goto_0
.end method

.method private GetCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 29
    .parameter "strName"
    .parameter "strType"
    .parameter "strWho"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 236
    const-string v26, "S40BkmReadThd"

    const-string v27, "enter function GetCapability"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v9, 0x1

    .line 239
    .local v9, iRet:I
    new-instance v21, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v21 .. v21}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 241
    .local v21, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/futuredial/S40BookMarkReadThread;->Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v9

    .line 242
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/futuredial/S40BookMarkReadThread;->ASSERT(II)V

    .line 243
    if-eqz v9, :cond_0

    .line 245
    const-string v26, "S40BkmReadThd"

    const-string v27, "fail in getting x-obex/capability"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v26, v9

    .line 302
    :goto_0
    return v26

    .line 250
    :cond_0
    :try_start_0
    new-instance v11, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 251
    .local v11, ins:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v24

    .line 252
    .local v24, xpath:Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 253
    .local v5, doc:Lorg/w3c/dom/Document;
    const-string v26, "/Capability/Service"

    sget-object v27, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v5, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/NodeList;

    .line 254
    .local v13, nlService:Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 255
    .local v16, nlsSize:I
    const/16 v22, 0x0

    .local v22, sIndex:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 257
    move/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 258
    .local v19, nodeService:Lorg/w3c/dom/Node;
    const-string v26, "Ext"

    sget-object v27, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/NodeList;

    .line 260
    .local v12, nlExt:Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    .line 261
    .local v15, nleSize:I
    const/4 v7, 0x0

    .local v7, eIndex:I
    :goto_2
    if-ge v7, v15, :cond_3

    .line 263
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 264
    .local v18, nodeExt:Lorg/w3c/dom/Node;
    const-string v26, "XNam"

    sget-object v27, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Node;

    .line 266
    .local v20, nodeXNam:Lorg/w3c/dom/Node;
    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v26

    const-string v27, "Bookmarks"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 268
    const-string v26, "XVal"

    sget-object v27, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/NodeList;

    .line 269
    .local v14, nlXVal:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    .line 270
    .local v17, nlxvSize:I
    const/16 v25, 0x0

    .local v25, xvIndex:I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 272
    move/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 273
    .local v8, eleXVal:Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v23

    .line 275
    .local v23, strXVal:Ljava/lang/String;
    const-string v26, "Folder="

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 276
    .local v10, index:I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v10, v0, :cond_1

    .line 278
    const-string v26, "Folder="

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v26, v26, v10

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/S40BookMarkReadThread;->m_strBkmPath:Ljava/lang/String;

    .line 280
    const-string v26, "S40BkmReadThd"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "succeed in getting bookmark path: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_strBkmPath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 270
    :cond_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 261
    .end local v8           #eleXVal:Lorg/w3c/dom/Node;
    .end local v10           #index:I
    .end local v14           #nlXVal:Lorg/w3c/dom/NodeList;
    .end local v17           #nlxvSize:I
    .end local v23           #strXVal:Ljava/lang/String;
    .end local v25           #xvIndex:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 255
    .end local v18           #nodeExt:Lorg/w3c/dom/Node;
    .end local v20           #nodeXNam:Lorg/w3c/dom/Node;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 289
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v7           #eIndex:I
    .end local v11           #ins:Ljava/io/ByteArrayInputStream;
    .end local v12           #nlExt:Lorg/w3c/dom/NodeList;
    .end local v13           #nlService:Lorg/w3c/dom/NodeList;
    .end local v15           #nleSize:I
    .end local v16           #nlsSize:I
    .end local v19           #nodeService:Lorg/w3c/dom/Node;
    .end local v22           #sIndex:I
    .end local v24           #xpath:Ljavax/xml/xpath/XPath;
    :catch_0
    move-exception v6

    .line 291
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    const-string v26, "S40BkmReadThd"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    const/4 v9, 0x1

    .line 296
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/futuredial/S40BookMarkReadThread;->ASSERT(II)V

    .line 298
    const-string v26, "S40BkmReadThd"

    const-string v27, "exit function GetCapability"

    invoke-static/range {v26 .. v27}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v26, ""

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/S40BookMarkReadThread;->m_strBkmPath:Ljava/lang/String;

    .line 302
    const/16 v26, 0x1

    goto/16 :goto_0
.end method

.method private Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "strTarget"
    .parameter "strWho"

    .prologue
    const/4 v6, 0x1

    .line 195
    const-string v7, "S40BkmReadThd"

    const-string v8, "enter function Obex_Connect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v4, 0x0

    .line 198
    .local v4, iRet:I
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 199
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, -0x80

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_CON_PKG;->setCommand(B)V

    .line 200
    invoke-direct {p0, p1}, Lcom/futuredial/S40BookMarkReadThread;->binHex2byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 201
    .local v1, byteTarget:[B
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x46

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 202
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 203
    .local v2, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 205
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v6}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v0

    .line 206
    .local v0, byteConnection:[B
    if-eqz v0, :cond_0

    array-length v7, v0

    if-gtz v7, :cond_1

    .line 208
    :cond_0
    const-string v7, "S40BkmReadThd"

    const-string v8, "exit function Obex_Connect, function getObexPkgStream fails"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return v6

    .line 211
    :cond_1
    new-instance v5, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v5}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 213
    .local v5, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    iget-object v6, p0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v7, 0x1d4c0

    invoke-virtual {v6, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_2

    move v6, v4

    goto :goto_0

    .line 214
    :cond_2
    iget-object v6, p0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v7, 0x1d4c0

    invoke-virtual {v6, v5, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    move v6, v4

    goto :goto_0

    .line 215
    :catch_0
    move-exception v3

    .line 217
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 218
    const-string v6, "S40BkmReadThd"

    const-string v7, "exit function Obex_Connect, fail in sending or receiving data"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v4, 0x1

    move v6, v4

    .line 220
    goto :goto_0

    .line 223
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_3
    iget-object v6, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v6, v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->setObexPkgStream([B)Z

    move-result v6

    if-nez v6, :cond_4

    .line 225
    const-string v6, "S40BkmReadThd"

    const-string v7, "received data is incorrect"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v4, 0x1

    move v6, v4

    .line 227
    goto :goto_0

    .line 230
    :cond_4
    const-string v6, "S40BkmReadThd"

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

    .line 231
    goto :goto_0
.end method

.method private Obex_DisConnect(Ljava/lang/String;)I
    .locals 11
    .parameter "strWho"

    .prologue
    const/4 v10, 0x0

    const/16 v9, -0x35

    .line 717
    const-string v7, "S40BkmReadThd"

    const-string v8, "enter function Obex_DisConnect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v4, 0x0

    .line 719
    .local v4, iRet:I
    new-instance v6, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v6}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 720
    .local v6, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 721
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, -0x7f

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 722
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v9}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v7

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v7

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 723
    .local v2, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 724
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 725
    .local v1, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 726
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v8, 0x1

    invoke-virtual {v7, v10, v8}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 727
    .local v0, byteDisConnection:[B
    if-eqz v0, :cond_0

    array-length v7, v0

    if-gtz v7, :cond_1

    .line 729
    :cond_0
    const/4 v4, 0x1

    move v5, v4

    .line 748
    .end local v4           #iRet:I
    .local v5, iRet:I
    :goto_0
    return v5

    .line 733
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v8, 0x1d4c0

    invoke-virtual {v7, v0, v8}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_2

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 734
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_2
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v8, 0x1d4c0

    invoke-virtual {v7, v6, v8}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 735
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :catch_0
    move-exception v3

    .line 737
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 738
    const/4 v4, 0x1

    move v5, v4

    .line 739
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 741
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_3
    iget-object v7, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v7, v8, v10}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v7

    if-nez v7, :cond_4

    .line 743
    const/4 v4, 0x1

    move v5, v4

    .line 744
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 747
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_4
    const-string v7, "S40BkmReadThd"

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

    .line 748
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0
.end method

.method private Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I
    .locals 26
    .parameter "strName"
    .parameter "strType"
    .parameter "strWho"
    .parameter "outputBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 594
    const-string v22, "S40BkmReadThd"

    const-string v23, "enter function Obex_Get"

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/16 v17, 0x0

    .line 597
    .local v17, iRet:I
    new-instance v21, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v21 .. v21}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 598
    .local v21, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v22, v0

    const/16 v23, -0x35

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v22

    check-cast v22, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object/from16 v13, v22

    check-cast v13, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 601
    .local v13, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, -0x35

    invoke-virtual {v13}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 602
    invoke-direct/range {p0 .. p1}, Lcom/futuredial/S40BookMarkReadThread;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v10

    .line 603
    .local v10, byteName:[B
    if-nez v10, :cond_0

    .line 605
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 711
    .end local v17           #iRet:I
    .local v18, iRet:I
    :goto_0
    return v18

    .line 608
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_1

    .line 611
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 612
    .local v11, byteType:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x42

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 614
    .end local v11           #byteType:[B
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    .line 616
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 617
    .local v12, byteWho:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x4a

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 619
    .end local v12           #byteWho:[B
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v9

    .line 620
    .local v9, byteGetCommand:[B
    if-eqz v9, :cond_3

    array-length v0, v9

    move/from16 v22, v0

    if-gtz v22, :cond_4

    .line 622
    :cond_3
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 623
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto :goto_0

    .line 625
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v5, arrRecvBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :cond_5
    sget v22, Lcom/futuredial/S40BookMarkReadThread;->CancelFlag:I

    if-nez v22, :cond_6

    .line 631
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 632
    new-instance v22, Lcom/futuredial/CancelException;

    invoke-direct/range {v22 .. v22}, Lcom/futuredial/CancelException;-><init>()V

    throw v22

    .line 636
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v22, v0

    const v23, 0x1d4c0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v18, v17

    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 637
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v22, v0

    const v23, 0x1d4c0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v18, v17

    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 638
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :catch_0
    move-exception v14

    .line 640
    .local v14, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v14}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 641
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 642
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 644
    .end local v14           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v22

    if-nez v22, :cond_9

    .line 646
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 647
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 649
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v8

    .line 650
    .local v8, byteErrCode:B
    const/4 v6, 0x0

    .line 651
    .local v6, bObexFinished:Z
    and-int/lit8 v22, v8, 0x7f

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 653
    const/4 v6, 0x1

    .line 666
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x48

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v22

    check-cast v22, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v7, v22

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 667
    .local v7, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v7, :cond_a

    .line 669
    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x49

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v22

    check-cast v22, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v15, v22

    check-cast v15, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 672
    .local v15, endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v15, :cond_b

    .line 674
    invoke-virtual {v15}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_b
    if-eqz v6, :cond_e

    .line 695
    const/16 v20, 0x0

    .line 696
    .local v20, nLen:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 697
    .local v19, nCount:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 699
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int v20, v20, v22

    .line 697
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 655
    .end local v7           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v15           #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v16           #i:I
    .end local v19           #nCount:I
    .end local v20           #nLen:I
    :cond_c
    and-int/lit8 v22, v8, 0x7f

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 657
    const/4 v6, 0x0

    goto :goto_1

    .line 661
    :cond_d
    const-string v22, "S40BkmReadThd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "byteErrCode = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 663
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 683
    .end local v18           #iRet:I
    .restart local v7       #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v15       #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v17       #iRet:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, -0x35

    invoke-virtual {v13}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v9

    .line 687
    if-eqz v9, :cond_f

    array-length v0, v9

    move/from16 v22, v0

    if-gtz v22, :cond_5

    .line 689
    :cond_f
    const-string v22, "S40BkmReadThd"

    const-string v23, "fail in packing getting command"

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 691
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 701
    .end local v18           #iRet:I
    .restart local v16       #i:I
    .restart local v17       #iRet:I
    .restart local v19       #nCount:I
    .restart local v20       #nLen:I
    :cond_10
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    .line 702
    const/16 v20, 0x0

    .line 703
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    .line 705
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v25, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v20

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int v20, v20, v22

    .line 703
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 708
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 710
    const-string v22, "S40BkmReadThd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "exit function Obex_Get, iRet = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v17

    .line 711
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0
.end method

.method private Obex_SetPath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "strName"
    .parameter "strWho"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 307
    const-string v10, "S40BkmReadThd"

    const-string v11, "enter function Obex_SetPath"

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v8, 0x0

    .line 309
    .local v8, iRet:I
    new-instance v9, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v9}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 310
    .local v9, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v11, -0x35

    invoke-virtual {v10, v11}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v10

    check-cast v10, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v6, v10

    check-cast v6, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 312
    .local v6, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v10}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 313
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v11, -0x7b

    invoke-virtual {v10, v11}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 314
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v11, -0x35

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 315
    const-string v10, ""

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 316
    .local v0, byteName:[B
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v0}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 317
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 318
    .local v5, byteWho:[B
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v11, 0x4a

    invoke-virtual {v10, v11, v5}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 319
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v4

    .line 320
    .local v4, byteSetRootPathTemp:[B
    if-eqz v4, :cond_0

    array-length v10, v4

    if-gtz v10, :cond_1

    .line 322
    :cond_0
    const/4 v8, 0x1

    move v10, v8

    .line 397
    :goto_0
    return v10

    .line 325
    :cond_1
    array-length v10, v4

    add-int/lit8 v10, v10, 0x2

    new-array v3, v10, [B

    .line 326
    .local v3, byteSetRootPath:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v4, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    const/4 v10, 0x3

    const/4 v11, 0x5

    array-length v12, v4

    add-int/lit8 v12, v12, -0x3

    invoke-static {v4, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    const/4 v10, 0x1

    array-length v11, v3

    const v12, 0xff00

    and-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 329
    const/4 v10, 0x2

    array-length v11, v3

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 330
    const/4 v10, 0x3

    const/4 v11, 0x2

    aput-byte v11, v3, v10

    .line 331
    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 333
    :try_start_0
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v11, 0x1d4c0

    invoke-virtual {v10, v3, v11}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v8

    if-eqz v8, :cond_2

    move v10, v8

    goto :goto_0

    .line 334
    :cond_2
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v11, 0x1d4c0

    invoke-virtual {v10, v9, v11}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    move v10, v8

    goto :goto_0

    .line 335
    :catch_0
    move-exception v7

    .line 337
    .local v7, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v7}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 338
    const/4 v8, 0x1

    move v10, v8

    .line 339
    goto :goto_0

    .line 341
    .end local v7           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_3
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v11, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v10

    if-nez v10, :cond_4

    .line 343
    const/4 v8, 0x1

    move v10, v8

    .line 344
    goto :goto_0

    .line 349
    :cond_4
    sget v10, Lcom/futuredial/S40BookMarkReadThread;->CancelFlag:I

    if-nez v10, :cond_5

    .line 351
    const/4 v10, 0x4

    iput v10, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 352
    new-instance v10, Lcom/futuredial/CancelException;

    invoke-direct {v10}, Lcom/futuredial/CancelException;-><init>()V

    throw v10

    .line 356
    :cond_5
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v10}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 357
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v11, -0x7b

    invoke-virtual {v10, v11}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 358
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v11, -0x35

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 359
    invoke-direct {p0, p1}, Lcom/futuredial/S40BookMarkReadThread;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 360
    if-nez v0, :cond_6

    .line 362
    const/4 v8, 0x1

    move v10, v8

    .line 363
    goto/16 :goto_0

    .line 365
    :cond_6
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v0}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 366
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 367
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v11, 0x4a

    invoke-virtual {v10, v11, v5}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 368
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v2

    .line 369
    .local v2, byteSetPathTemp:[B
    if-eqz v2, :cond_7

    array-length v10, v2

    if-gtz v10, :cond_8

    .line 371
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 373
    :cond_8
    array-length v10, v2

    add-int/lit8 v10, v10, 0x2

    new-array v1, v10, [B

    .line 374
    .local v1, byteSetPath:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v2, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    const/4 v10, 0x3

    const/4 v11, 0x5

    array-length v12, v2

    add-int/lit8 v12, v12, -0x3

    invoke-static {v2, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    const/4 v10, 0x1

    array-length v11, v1

    const v12, 0xff00

    and-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 377
    const/4 v10, 0x2

    array-length v11, v1

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 378
    const/4 v10, 0x3

    const/4 v11, 0x2

    aput-byte v11, v1, v10

    .line 379
    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-byte v11, v1, v10

    .line 381
    :try_start_1
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v11, 0x1d4c0

    invoke-virtual {v10, v1, v11}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v8

    if-eqz v8, :cond_9

    move v10, v8

    goto/16 :goto_0

    .line 382
    :cond_9
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v11, 0x1d4c0

    invoke-virtual {v10, v9, v11}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_1
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_a

    move v10, v8

    goto/16 :goto_0

    .line 383
    :catch_1
    move-exception v7

    .line 385
    .restart local v7       #e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v7}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 386
    const/4 v8, 0x1

    move v10, v8

    .line 387
    goto/16 :goto_0

    .line 389
    .end local v7           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_a
    iget-object v10, p0, Lcom/futuredial/S40BookMarkReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v11, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v10

    if-nez v10, :cond_b

    .line 391
    const/4 v8, 0x1

    move v10, v8

    .line 392
    goto/16 :goto_0

    .line 396
    :cond_b
    const-string v10, "S40BkmReadThd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exit function Obex_SetPath, iRet = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v8

    .line 397
    goto/16 :goto_0
.end method

.method private Str2UnicodeByte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 404
    new-array v0, v7, [B

    .line 427
    :cond_0
    :goto_0
    return-object v0

    .line 408
    :cond_1
    :try_start_0
    const-string v6, "UNICODE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 409
    .local v2, byteTempBuffer:[B
    array-length v6, v2

    if-gt v6, v8, :cond_2

    move-object v0, v5

    .line 411
    goto :goto_0

    .line 413
    :cond_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    new-array v0, v6, [B

    .line 414
    .local v0, byteDataBuffer:[B
    const/4 v6, 0x2

    const/4 v7, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    invoke-static {v2, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_0

    .line 417
    aget-byte v1, v0, v4

    .line 418
    .local v1, byteTemp:B
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v0, v4

    .line 419
    add-int/lit8 v6, v4, 0x1

    aput-byte v1, v0, v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 415
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 424
    .end local v0           #byteDataBuffer:[B
    .end local v1           #byteTemp:B
    .end local v2           #byteTempBuffer:[B
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 426
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "S40BkmReadThd"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 427
    goto :goto_0
.end method

.method private binHex2byte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/16 v8, 0x66

    const/16 v7, 0x46

    const/16 v6, 0x39

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 159
    .local v3, ret:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 161
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 162
    .local v0, c1:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 163
    .local v1, c2:I
    if-gt v0, v6, :cond_2

    .line 165
    add-int/lit8 v0, v0, -0x30

    .line 175
    :cond_0
    :goto_1
    if-gt v1, v6, :cond_4

    .line 177
    add-int/lit8 v1, v1, -0x30

    .line 187
    :cond_1
    :goto_2
    div-int/lit8 v4, v2, 0x2

    shl-int/lit8 v5, v0, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 188
    add-int/lit8 v2, v2, 0x2

    .line 189
    goto :goto_0

    .line 167
    :cond_2
    if-gt v0, v7, :cond_3

    .line 169
    add-int/lit8 v0, v0, -0x37

    goto :goto_1

    .line 171
    :cond_3
    if-gt v0, v8, :cond_0

    .line 173
    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    .line 179
    :cond_4
    if-gt v0, v7, :cond_5

    .line 181
    add-int/lit8 v1, v1, -0x37

    goto :goto_2

    .line 183
    :cond_5
    if-gt v0, v8, :cond_1

    .line 185
    add-int/lit8 v1, v1, -0x57

    goto :goto_2

    .line 190
    .end local v0           #c1:I
    .end local v1           #c2:I
    :cond_6
    return-object v3
.end method


# virtual methods
.method protected DoComm()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 73
    iput v7, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 76
    :try_start_0
    const-string v3, "S40BkmReadThd"

    const-string v4, "Enter function DoComm"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    .line 80
    .local v1, iRet:I
    sget v3, Lcom/futuredial/S40BookMarkReadThread;->CancelFlag:I

    if-nez v3, :cond_0

    .line 82
    const/4 v3, 0x4

    iput v3, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 83
    new-instance v3, Lcom/futuredial/CancelException;

    invoke-direct {v3}, Lcom/futuredial/CancelException;-><init>()V

    throw v3
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .end local v1           #iRet:I
    :catch_0
    move-exception v2

    .line 141
    .local v2, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    iput-boolean v6, p0, Lcom/futuredial/S40BookMarkReadThread;->bPopResume:Z

    .line 142
    invoke-virtual {p0, v6}, Lcom/futuredial/S40BookMarkReadThread;->ASSERT(I)V

    .line 143
    const/16 v3, 0x67

    iput v3, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 153
    .end local v2           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/S40BookMarkReadThread;->Close(Ljava/lang/Boolean;)V

    .line 154
    :goto_1
    return-void

    .line 86
    .restart local v1       #iRet:I
    :cond_0
    :try_start_1
    const-string v3, "S40BkmReadThd"

    const-string v4, "OpenPort"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/futuredial/S40BookMarkReadThread;->OpenPort()I

    .line 89
    const-string v3, "S40BkmReadThd"

    const-string v4, "SetIsCompleted"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/futuredial/S40BookMarkReadThread;->SetIsCompleted()V

    .line 93
    const-string v3, "S40BkmReadThd"

    const-string v4, "Begin to read bookmark from Nokia S40 by OBEX"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "F9EC7BC4953c11d2984E525400DC9E09"

    const-string v4, "PC Suite"

    invoke-direct {p0, v3, v4}, Lcom/futuredial/S40BookMarkReadThread;->Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 96
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/S40BookMarkReadThread;->ASSERT(II)V

    .line 97
    if-eqz v1, :cond_1

    .line 99
    iput v1, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 100
    const-string v3, "S40BkmReadThd"

    const-string v4, "fail in connecting obex server"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 145
    .end local v1           #iRet:I
    :catch_1
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    invoke-virtual {p0, v6}, Lcom/futuredial/S40BookMarkReadThread;->ASSERT(I)V

    .line 150
    iput v6, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #iRet:I
    :cond_1
    :try_start_2
    sget v3, Lcom/futuredial/S40BookMarkReadThread;->CancelFlag:I

    if-nez v3, :cond_2

    .line 106
    const/4 v3, 0x4

    iput v3, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 107
    new-instance v3, Lcom/futuredial/CancelException;

    invoke-direct {v3}, Lcom/futuredial/CancelException;-><init>()V

    throw v3

    .line 111
    :cond_2
    const-string v3, ""

    const-string v4, "x-obex/capability"

    const-string v5, "PC Suite"

    invoke-direct {p0, v3, v4, v5}, Lcom/futuredial/S40BookMarkReadThread;->GetCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 114
    iput v1, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 115
    const-string v3, "S40BkmReadThd"

    const-string v4, "fail in getting x-obex/capability "

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_3
    sget v3, Lcom/futuredial/S40BookMarkReadThread;->CancelFlag:I

    if-nez v3, :cond_4

    .line 121
    const/4 v3, 0x4

    iput v3, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 122
    new-instance v3, Lcom/futuredial/CancelException;

    invoke-direct {v3}, Lcom/futuredial/CancelException;-><init>()V

    throw v3

    .line 125
    :cond_4
    iget-object v3, p0, Lcom/futuredial/S40BookMarkReadThread;->m_strBkmPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/futuredial/S40BookMarkReadThread;->GetBookMarks(Ljava/lang/String;)I

    move-result v1

    .line 126
    if-eqz v1, :cond_5

    .line 128
    iput v1, p0, Lcom/futuredial/S40BookMarkReadThread;->ThreadErrorCode:I

    .line 129
    const-string v3, "S40BkmReadThd"

    const-string v4, "fail in getting bookmarks "

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_5
    const-string v3, "PC Suite"

    invoke-direct {p0, v3}, Lcom/futuredial/S40BookMarkReadThread;->Obex_DisConnect(Ljava/lang/String;)I

    .line 136
    const-string v3, "S40BkmReadThd"

    const-string v4, "Exit function DoComm"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/futuredial/S40BookMarkReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/S40BookMarkReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/S40BookMarkReadThread$1;-><init>(Lcom/futuredial/S40BookMarkReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 69
    return-void
.end method
