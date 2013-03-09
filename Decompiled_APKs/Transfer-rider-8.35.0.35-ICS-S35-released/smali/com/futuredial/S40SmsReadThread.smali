.class public Lcom/futuredial/S40SmsReadThread;
.super Lcom/futuredial/ReadThread;
.source "S40SmsReadThread.java"


# static fields
.field private static final ATTRIBUTE_NODE:S = 0x2s

.field private static final ELEMENT_NODE:S = 0x1s

.field public static final LOGTAG:Ljava/lang/String; = "S40SmsReadThread"


# instance fields
.field private bPrintLog:Z

.field private m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

.field private m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

.field private m_strMsgFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 1
    .parameter "tParam"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/S40SmsReadThread;->bPrintLog:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/S40SmsReadThread;->m_strMsgFolderName:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 51
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 57
    return-void
.end method

.method private GetCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 35
    .parameter "strName"
    .parameter "strType"
    .parameter "strWho"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 400
    const-string v32, "S40SmsReadThread"

    const-string v33, "enter function GetCapability"

    invoke-static/range {v32 .. v33}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v10, 0x0

    .line 403
    .local v10, iRet:I
    new-instance v24, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 405
    .local v24, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/futuredial/S40SmsReadThread;->Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v10

    .line 406
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/futuredial/S40SmsReadThread;->ASSERT(II)V

    .line 407
    if-eqz v10, :cond_0

    .line 409
    const-string v32, "S40SmsReadThread"

    const-string v33, "fail in getting x-obex/capability"

    invoke-static/range {v32 .. v33}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 531
    .end local v10           #iRet:I
    .local v11, iRet:I
    :goto_0
    return v11

    .line 414
    .end local v11           #iRet:I
    .restart local v10       #iRet:I
    :cond_0
    :try_start_0
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 415
    .local v28, strXML:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 416
    .local v8, docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 417
    .local v7, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v13, Lorg/xml/sax/InputSource;

    invoke-direct {v13}, Lorg/xml/sax/InputSource;-><init>()V

    .line 418
    .local v13, inputSrc:Lorg/xml/sax/InputSource;
    new-instance v32, Ljava/io/ByteArrayInputStream;

    const-string v33, "UTF-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 419
    invoke-virtual {v7, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 420
    .local v6, doc:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    .line 422
    .local v25, root:Lorg/w3c/dom/Element;
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 423
    .local v22, nlOfFolderListing:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, j:I
    :goto_1
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_11

    .line 425
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 426
    .local v19, ndOfFolderListing:Lorg/w3c/dom/Node;
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 423
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 430
    :cond_2
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "Service"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_1

    .line 432
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 433
    .local v23, nlOfService:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .line 434
    .local v5, bFolderBrowsingService:Z
    const/4 v15, 0x0

    .local v15, k:I
    :goto_2
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-ge v15, v0, :cond_6

    .line 436
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 437
    .local v20, ndOfService:Lorg/w3c/dom/Node;
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 434
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 441
    :cond_4
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "Name"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_3

    .line 443
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    if-eqz v32, :cond_8

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v26

    .line 444
    .local v26, strServiceName:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v32

    if-gtz v32, :cond_5

    const-string v32, "Folder-Browsing"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_6

    .line 446
    :cond_5
    const/4 v5, 0x1

    .line 451
    .end local v20           #ndOfService:Lorg/w3c/dom/Node;
    .end local v26           #strServiceName:Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_1

    .line 456
    const/16 v16, 0x0

    .local v16, m:I
    :goto_4
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    .line 458
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 459
    .restart local v20       #ndOfService:Lorg/w3c/dom/Node;
    if-eqz v20, :cond_7

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_9

    .line 456
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 443
    .end local v16           #m:I
    :cond_8
    const-string v26, ""

    goto :goto_3

    .line 463
    .restart local v16       #m:I
    :cond_9
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "Ext"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_7

    .line 465
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 466
    .local v21, nlOfExt:Lorg/w3c/dom/NodeList;
    const-string v29, ""

    .line 467
    .local v29, strXNam:Ljava/lang/String;
    const-string v30, ""

    .line 468
    .local v30, strXValFolder:Ljava/lang/String;
    const-string v31, ""

    .line 469
    .local v31, strXValMemType:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, n:I
    :goto_5
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 471
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 472
    .local v18, ndOfExt:Lorg/w3c/dom/Node;
    if-eqz v18, :cond_a

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_b

    .line 469
    :cond_a
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 476
    :cond_b
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "XNam"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_d

    .line 478
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    if-eqz v32, :cond_c

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v29

    :goto_7
    goto :goto_6

    :cond_c
    const-string v29, ""

    goto :goto_7

    .line 480
    :cond_d
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "XVal"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_a

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    if-eqz v32, :cond_e

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v27

    .line 483
    .local v27, strTemp:Ljava/lang/String;
    :goto_8
    const-string v32, "Folder="

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_f

    .line 485
    move-object/from16 v30, v27

    goto :goto_6

    .line 482
    .end local v27           #strTemp:Ljava/lang/String;
    :cond_e
    const-string v27, ""

    goto :goto_8

    .line 487
    .restart local v27       #strTemp:Ljava/lang/String;
    :cond_f
    const-string v32, "MemType="

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_a

    .line 489
    move-object/from16 v31, v27

    goto :goto_6

    .line 493
    .end local v18           #ndOfExt:Lorg/w3c/dom/Node;
    .end local v27           #strTemp:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_7

    const-string v32, "Messages"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_7

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_7

    const-string v32, "MemType=DEV"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_7

    .line 496
    const-string v32, "Folder="

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    const-string v33, "Folder="

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    add-int v12, v32, v33

    .line 497
    .local v12, iStart:I
    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/S40SmsReadThread;->m_strMsgFolderName:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 498
    const/4 v10, 0x0

    move v11, v10

    .line 499
    .end local v10           #iRet:I
    .restart local v11       #iRet:I
    goto/16 :goto_0

    .line 507
    .end local v5           #bFolderBrowsingService:Z
    .end local v11           #iRet:I
    .end local v12           #iStart:I
    .end local v15           #k:I
    .end local v16           #m:I
    .end local v17           #n:I
    .end local v19           #ndOfFolderListing:Lorg/w3c/dom/Node;
    .end local v20           #ndOfService:Lorg/w3c/dom/Node;
    .end local v21           #nlOfExt:Lorg/w3c/dom/NodeList;
    .end local v23           #nlOfService:Lorg/w3c/dom/NodeList;
    .end local v29           #strXNam:Ljava/lang/String;
    .end local v30           #strXValFolder:Ljava/lang/String;
    .end local v31           #strXValMemType:Ljava/lang/String;
    .restart local v10       #iRet:I
    :cond_11
    const/4 v10, 0x0

    .line 528
    .end local v6           #doc:Lorg/w3c/dom/Document;
    .end local v7           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13           #inputSrc:Lorg/xml/sax/InputSource;
    .end local v14           #j:I
    .end local v22           #nlOfFolderListing:Lorg/w3c/dom/NodeList;
    .end local v25           #root:Lorg/w3c/dom/Element;
    .end local v28           #strXML:Ljava/lang/String;
    :goto_9
    const/16 v32, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/futuredial/S40SmsReadThread;->ASSERT(II)V

    .line 530
    const-string v32, "S40SmsReadThread"

    const-string v33, "exit function GetCapability"

    invoke-static/range {v32 .. v33}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 531
    .end local v10           #iRet:I
    .restart local v11       #iRet:I
    goto/16 :goto_0

    .line 509
    .end local v11           #iRet:I
    .restart local v10       #iRet:I
    :catch_0
    move-exception v9

    .line 511
    .local v9, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 512
    const-string v32, "S40SmsReadThread"

    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->getCause()Ljava/lang/Throwable;

    move-result-object v34

    invoke-static/range {v32 .. v34}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    const/4 v10, 0x1

    .line 526
    goto :goto_9

    .line 515
    .end local v9           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v9

    .line 517
    .local v9, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 518
    const-string v32, "S40SmsReadThread"

    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->getCause()Ljava/lang/Throwable;

    move-result-object v34

    invoke-static/range {v32 .. v34}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    const/4 v10, 0x1

    .line 526
    goto :goto_9

    .line 521
    .end local v9           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v9

    .line 523
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 524
    const-string v32, "S40SmsReadThread"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v9}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v34

    invoke-static/range {v32 .. v34}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 525
    const/4 v10, 0x1

    goto :goto_9
.end method

.method private GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "node"
    .parameter "attributename"

    .prologue
    .line 733
    const-string v2, ""

    .line 735
    .local v2, sAttribute:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 736
    .local v1, nnmAttributes:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v1, :cond_0

    .line 738
    invoke-interface {v1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 739
    .local v0, ndAttr:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 741
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 745
    .end local v0           #ndAttr:Lorg/w3c/dom/Node;
    :cond_0
    return-object v2
.end method

.method private GetSMSList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 22
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
    .line 644
    .local p4, arSMSName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, arSubFolderName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v19, "S40SmsReadThread"

    const-string v20, "enter function GetSMSList"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v8, 0x0

    .line 647
    .local v8, iRet:I
    new-instance v13, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v13}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 649
    .local v13, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/futuredial/S40SmsReadThread;->Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v8

    .line 650
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcom/futuredial/S40SmsReadThread;->ASSERT(II)V

    .line 651
    if-eqz v8, :cond_0

    .line 653
    const-string v19, "S40SmsReadThread"

    const-string v20, "fail in getting sms list"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 728
    .end local v8           #iRet:I
    .local v9, iRet:I
    :goto_0
    return v9

    .line 659
    .end local v9           #iRet:I
    .restart local v8       #iRet:I
    :cond_0
    :try_start_0
    new-instance v18, Ljava/lang/String;

    iget-object v0, v13, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([B)V

    .line 660
    .local v18, strXML:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 661
    .local v6, docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 662
    .local v5, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v19, Lorg/xml/sax/InputSource;

    new-instance v20, Ljava/io/StringReader;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v19 .. v20}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 663
    .local v4, doc:Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 674
    .local v14, root:Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 675
    .local v12, nlOfFolderListing:Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_6

    .line 677
    invoke-interface {v12, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 678
    .local v11, ndOfFolderListing:Lorg/w3c/dom/Node;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 675
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 682
    :cond_2
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "file"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_4

    .line 684
    const-string v19, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/futuredial/S40SmsReadThread;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 687
    .local v15, strFileName:Ljava/lang/String;
    const-string v19, "user-perm"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/futuredial/S40SmsReadThread;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 688
    .local v17, strUserPerm:Ljava/lang/String;
    const-string v19, "R"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const-string v19, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 690
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 709
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #j:I
    .end local v11           #ndOfFolderListing:Lorg/w3c/dom/Node;
    .end local v12           #nlOfFolderListing:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .end local v15           #strFileName:Ljava/lang/String;
    .end local v17           #strUserPerm:Ljava/lang/String;
    .end local v18           #strXML:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 711
    .local v7, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v19, "S40SmsReadThread"

    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->getCause()Ljava/lang/Throwable;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    const/4 v8, 0x1

    .line 725
    .end local v7           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcom/futuredial/S40SmsReadThread;->ASSERT(II)V

    .line 727
    const-string v19, "S40SmsReadThread"

    const-string v20, "exit function GetSMSList"

    invoke-static/range {v19 .. v20}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 728
    .end local v8           #iRet:I
    .restart local v9       #iRet:I
    goto/16 :goto_0

    .line 693
    .end local v9           #iRet:I
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8       #iRet:I
    .restart local v10       #j:I
    .restart local v11       #ndOfFolderListing:Lorg/w3c/dom/Node;
    .restart local v12       #nlOfFolderListing:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    .restart local v18       #strXML:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "folder"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_1

    .line 695
    const-string v19, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/futuredial/S40SmsReadThread;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 696
    .local v16, strFolderName:Ljava/lang/String;
    const-string v19, "user-perm"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/futuredial/S40SmsReadThread;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 697
    .restart local v17       #strUserPerm:Ljava/lang/String;
    const-string v19, "R"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const-string v19, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 699
    :cond_5
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 714
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #j:I
    .end local v11           #ndOfFolderListing:Lorg/w3c/dom/Node;
    .end local v12           #nlOfFolderListing:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .end local v16           #strFolderName:Ljava/lang/String;
    .end local v17           #strUserPerm:Ljava/lang/String;
    .end local v18           #strXML:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 716
    .local v7, e:Lorg/xml/sax/SAXException;
    const-string v19, "S40SmsReadThread"

    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->getCause()Ljava/lang/Throwable;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 717
    const/4 v8, 0x1

    .line 723
    goto :goto_3

    .line 707
    .end local v7           #e:Lorg/xml/sax/SAXException;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #j:I
    .restart local v12       #nlOfFolderListing:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    .restart local v18       #strXML:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 719
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #j:I
    .end local v12           #nlOfFolderListing:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .end local v18           #strXML:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 721
    .local v7, e:Ljava/io/IOException;
    const-string v19, "S40SmsReadThread"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v7}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 722
    const/4 v8, 0x1

    goto/16 :goto_3
.end method

.method private Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "strTarget"
    .parameter "strWho"

    .prologue
    const/4 v6, 0x1

    .line 357
    const-string v7, "S40SmsReadThread"

    const-string v8, "enter function Obex_Connect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v4, 0x0

    .line 360
    .local v4, iRet:I
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 361
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, -0x80

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_CON_PKG;->setCommand(B)V

    .line 362
    invoke-direct {p0, p1}, Lcom/futuredial/S40SmsReadThread;->binHex2byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 363
    .local v1, byteTarget:[B
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x46

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 364
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 365
    .local v2, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 367
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v6}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v0

    .line 368
    .local v0, byteConnection:[B
    if-eqz v0, :cond_0

    array-length v7, v0

    if-gtz v7, :cond_1

    .line 370
    :cond_0
    const-string v7, "S40SmsReadThread"

    const-string v8, "exit function Obex_Connect, function getObexPkgStream fails"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :goto_0
    return v6

    .line 373
    :cond_1
    new-instance v5, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v5}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 375
    .local v5, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    const-string v6, "S40SmsReadThread"

    invoke-virtual {p0, v6, v0}, Lcom/futuredial/S40SmsReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 376
    iget-object v6, p0, Lcom/futuredial/S40SmsReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v7, 0x1d4c0

    invoke-virtual {v6, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_2

    move v6, v4

    goto :goto_0

    .line 377
    :cond_2
    iget-object v6, p0, Lcom/futuredial/S40SmsReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v7, 0x1d4c0

    invoke-virtual {v6, v5, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v6, v4

    goto :goto_0

    .line 378
    :cond_3
    const-string v6, "S40SmsReadThread"

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {p0, v6, v7}, Lcom/futuredial/S40SmsReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    iget-object v6, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    iget-object v7, v5, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v6, v7}, Lcom/futuredial/obex/OBEX_CON_PKG;->setObexPkgStream([B)Z

    move-result v6

    if-nez v6, :cond_4

    .line 389
    const-string v6, "S40SmsReadThread"

    const-string v7, "received data is incorrect"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v4, 0x1

    move v6, v4

    .line 391
    goto :goto_0

    .line 379
    :catch_0
    move-exception v3

    .line 381
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 382
    const-string v6, "S40SmsReadThread"

    const-string v7, "exit function Obex_Connect, fail in sending or receiving data"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v4, 0x1

    move v6, v4

    .line 384
    goto :goto_0

    .line 394
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_4
    const-string v6, "S40SmsReadThread"

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

    .line 395
    goto :goto_0
.end method

.method private Obex_DisConnect(Ljava/lang/String;)I
    .locals 11
    .parameter "strWho"

    .prologue
    const/4 v10, 0x0

    const/16 v9, -0x35

    .line 873
    const-string v7, "S40SmsReadThread"

    const-string v8, "enter function Obex_DisConnect"

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const/4 v4, 0x0

    .line 875
    .local v4, iRet:I
    new-instance v6, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v6}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 876
    .local v6, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 877
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, -0x7f

    invoke-virtual {v7, v8}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 878
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v7, v9}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v7

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v7

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 879
    .local v2, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 880
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 881
    .local v1, byteWho:[B
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 882
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v8, 0x1

    invoke-virtual {v7, v10, v8}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 883
    .local v0, byteDisConnection:[B
    if-eqz v0, :cond_0

    array-length v7, v0

    if-gtz v7, :cond_1

    .line 885
    :cond_0
    const/4 v4, 0x1

    move v5, v4

    .line 906
    .end local v4           #iRet:I
    .local v5, iRet:I
    :goto_0
    return v5

    .line 889
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_1
    :try_start_0
    const-string v7, "S40SmsReadThread"

    invoke-virtual {p0, v7, v0}, Lcom/futuredial/S40SmsReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 890
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v8, 0x1d4c0

    invoke-virtual {v7, v0, v8}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    if-eqz v4, :cond_2

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 891
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_2
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v8, 0x1d4c0

    invoke-virtual {v7, v6, v8}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v5, v4

    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 892
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_3
    const-string v7, "S40SmsReadThread"

    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {p0, v7, v8}, Lcom/futuredial/S40SmsReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    iget-object v7, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v8, v6, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v7, v8, v10}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v7

    if-nez v7, :cond_4

    .line 901
    const/4 v4, 0x1

    move v5, v4

    .line 902
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 893
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :catch_0
    move-exception v3

    .line 895
    .local v3, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 896
    const/4 v4, 0x1

    move v5, v4

    .line 897
    .end local v4           #iRet:I
    .restart local v5       #iRet:I
    goto :goto_0

    .line 905
    .end local v3           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v5           #iRet:I
    .restart local v4       #iRet:I
    :cond_4
    const-string v7, "S40SmsReadThread"

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

    .line 906
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
    .line 750
    const-string v22, "S40SmsReadThread"

    const-string v23, "enter function Obex_Get"

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/16 v17, 0x0

    .line 752
    .local v17, iRet:I
    new-instance v21, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v21 .. v21}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 753
    .local v21, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v22, v0

    const/16 v23, -0x35

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v22

    check-cast v22, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object/from16 v13, v22

    check-cast v13, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 756
    .local v13, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, -0x35

    invoke-virtual {v13}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 757
    invoke-direct/range {p0 .. p1}, Lcom/futuredial/S40SmsReadThread;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v10

    .line 758
    .local v10, byteName:[B
    if-nez v10, :cond_0

    .line 760
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 868
    .end local v17           #iRet:I
    .local v18, iRet:I
    :goto_0
    return v18

    .line 763
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_1

    .line 766
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 767
    .local v11, byteType:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x42

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 769
    .end local v11           #byteType:[B
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    .line 771
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 772
    .local v12, byteWho:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x4a

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 774
    .end local v12           #byteWho:[B
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v9

    .line 775
    .local v9, byteGetCommand:[B
    if-eqz v9, :cond_3

    array-length v0, v9

    move/from16 v22, v0

    if-gtz v22, :cond_4

    .line 777
    :cond_3
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 778
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto :goto_0

    .line 780
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v5, arrRecvBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :cond_5
    sget v22, Lcom/futuredial/S40SmsReadThread;->CancelFlag:I

    if-nez v22, :cond_6

    .line 786
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 787
    new-instance v22, Lcom/futuredial/CancelException;

    invoke-direct/range {v22 .. v22}, Lcom/futuredial/CancelException;-><init>()V

    throw v22

    .line 791
    :cond_6
    :try_start_0
    const-string v22, "S40SmsReadThread"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/futuredial/S40SmsReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

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

    .line 793
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v22, v0

    const v23, 0x1d4c0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v18, v17

    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 794
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_8
    const-string v22, "S40SmsReadThread"

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/S40SmsReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v22

    if-nez v22, :cond_9

    .line 803
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 804
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 795
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :catch_0
    move-exception v14

    .line 797
    .local v14, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v14}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 798
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 799
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 806
    .end local v14           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v8

    .line 807
    .local v8, byteErrCode:B
    const/4 v6, 0x0

    .line 808
    .local v6, bObexFinished:Z
    and-int/lit8 v22, v8, 0x7f

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 810
    const/4 v6, 0x1

    .line 823
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x48

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v22

    check-cast v22, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v7, v22

    check-cast v7, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 824
    .local v7, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v7, :cond_a

    .line 826
    invoke-virtual {v7}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x49

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v22

    check-cast v22, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object/from16 v15, v22

    check-cast v15, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 829
    .local v15, endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v15, :cond_b

    .line 831
    invoke-virtual {v15}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    :cond_b
    if-eqz v6, :cond_e

    .line 852
    const/16 v20, 0x0

    .line 853
    .local v20, nLen:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 854
    .local v19, nCount:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 856
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int v20, v20, v22

    .line 854
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 812
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

    .line 814
    const/4 v6, 0x0

    goto :goto_1

    .line 818
    :cond_d
    const-string v22, "S40SmsReadThread"

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

    .line 819
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 820
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 840
    .end local v18           #iRet:I
    .restart local v7       #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v15       #endofbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v17       #iRet:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, -0x35

    invoke-virtual {v13}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v9

    .line 844
    if-eqz v9, :cond_f

    array-length v0, v9

    move/from16 v22, v0

    if-gtz v22, :cond_5

    .line 846
    :cond_f
    const-string v22, "S40SmsReadThread"

    const-string v23, "fail in packing getting command"

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/16 v17, 0x1

    move/from16 v18, v17

    .line 848
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0

    .line 858
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

    .line 859
    const/16 v20, 0x0

    .line 860
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    .line 862
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

    .line 863
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int v20, v20, v22

    .line 860
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 865
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 867
    const-string v22, "S40SmsReadThread"

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

    .line 868
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto/16 :goto_0
.end method

.method private Obex_SetPath(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 15
    .parameter
    .parameter "strWho"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 536
    .local p1, strPathTree:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "S40SmsReadThread"

    const-string v13, "enter function Obex_SetPath"

    invoke-static {v12, v13}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const/4 v7, 0x0

    .line 538
    .local v7, iRet:I
    new-instance v9, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v9}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 539
    .local v9, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v13, -0x35

    invoke-virtual {v12, v13}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v12

    check-cast v12, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v4, v12

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 540
    .local v4, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    const-string v10, ""

    .line 541
    .local v10, strFullPath:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 544
    .local v11, strName:Ljava/lang/String;
    sget v12, Lcom/futuredial/S40SmsReadThread;->CancelFlag:I

    if-nez v12, :cond_1

    .line 546
    const/4 v12, 0x4

    iput v12, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 547
    new-instance v12, Lcom/futuredial/CancelException;

    invoke-direct {v12}, Lcom/futuredial/CancelException;-><init>()V

    throw v12

    .line 550
    :cond_1
    const-string v12, "S40SmsReadThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "current path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 554
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 555
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v13, -0x7b

    invoke-virtual {v12, v13}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 556
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v13, -0x35

    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, byteName:[B
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 560
    const-string v12, ""

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 566
    :goto_0
    if-nez v0, :cond_3

    .line 568
    const/4 v7, 0x1

    move v8, v7

    .line 608
    .end local v0           #byteName:[B
    .end local v7           #iRet:I
    .end local v11           #strName:Ljava/lang/String;
    .local v8, iRet:I
    :goto_1
    return v8

    .line 564
    .end local v8           #iRet:I
    .restart local v0       #byteName:[B
    .restart local v7       #iRet:I
    .restart local v11       #strName:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v11}, Lcom/futuredial/S40SmsReadThread;->Str2UnicodeByte(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_3
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v0}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 573
    .local v3, byteWho:[B
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v13, 0x4a

    invoke-virtual {v12, v13, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 574
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v2

    .line 575
    .local v2, byteSetPathTemp:[B
    if-eqz v2, :cond_4

    array-length v12, v2

    if-gtz v12, :cond_5

    .line 577
    :cond_4
    const/4 v7, 0x1

    move v8, v7

    .line 578
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto :goto_1

    .line 580
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_5
    array-length v12, v2

    add-int/lit8 v12, v12, 0x2

    new-array v1, v12, [B

    .line 581
    .local v1, byteSetPath:[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v2, v12, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    const/4 v12, 0x3

    const/4 v13, 0x5

    array-length v14, v2

    add-int/lit8 v14, v14, -0x3

    invoke-static {v2, v12, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    const/4 v12, 0x1

    array-length v13, v1

    const v14, 0xff00

    and-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    .line 584
    const/4 v12, 0x2

    array-length v13, v1

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    .line 585
    const/4 v12, 0x3

    const/4 v13, 0x2

    aput-byte v13, v1, v12

    .line 586
    const/4 v12, 0x4

    const/4 v13, 0x0

    aput-byte v13, v1, v12

    .line 588
    :try_start_0
    const-string v12, "S40SmsReadThread"

    invoke-virtual {p0, v12, v1}, Lcom/futuredial/S40SmsReadThread;->LogBinData(Ljava/lang/String;[B)V

    .line 589
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v13, 0x1d4c0

    invoke-virtual {v12, v1, v13}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v7

    if-eqz v7, :cond_6

    move v8, v7

    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto :goto_1

    .line 590
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_6
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v13, 0x1d4c0

    invoke-virtual {v12, v9, v13}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v8, v7

    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto :goto_1

    .line 591
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_7
    const-string v12, "S40SmsReadThread"

    iget-object v13, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {p0, v12, v13}, Lcom/futuredial/S40SmsReadThread;->LogBinData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    iget-object v12, p0, Lcom/futuredial/S40SmsReadThread;->m_objObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-object v13, v9, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v12

    if-nez v12, :cond_0

    .line 600
    const/4 v7, 0x1

    move v8, v7

    .line 601
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto/16 :goto_1

    .line 592
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :catch_0
    move-exception v5

    .line 594
    .local v5, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v5}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    .line 595
    const/4 v7, 0x1

    move v8, v7

    .line 596
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto/16 :goto_1

    .line 605
    .end local v0           #byteName:[B
    .end local v1           #byteSetPath:[B
    .end local v2           #byteSetPathTemp:[B
    .end local v3           #byteWho:[B
    .end local v5           #e:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v8           #iRet:I
    .end local v11           #strName:Ljava/lang/String;
    .restart local v7       #iRet:I
    :cond_8
    const-string v12, "S40SmsReadThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "full path is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v12, "S40SmsReadThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exit function Obex_SetPath, iRet = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 608
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto/16 :goto_1
.end method

.method private ReadMsgUnderSpecifiedPath(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 27
    .parameter
    .parameter "strWho"
    .parameter "strType"
    .parameter "boxType"
    .parameter "strBoxName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    .local p1, strPathTree:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x1

    .line 220
    .local v18, iRet:I
    invoke-direct/range {p0 .. p2}, Lcom/futuredial/S40SmsReadThread;->Obex_SetPath(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v18

    .line 221
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/futuredial/S40SmsReadThread;->ASSERT(II)V

    .line 222
    if-eqz v18, :cond_0

    .line 224
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 225
    const-string v4, "S40SmsReadThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail in setting obex path while reading sms, box name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v18

    .line 316
    .end local v18           #iRet:I
    .local v19, iRet:I
    :goto_0
    return v19

    .line 230
    .end local v19           #iRet:I
    .restart local v18       #iRet:I
    :cond_0
    sget v4, Lcom/futuredial/S40SmsReadThread;->CancelFlag:I

    if-nez v4, :cond_1

    .line 232
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 233
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4

    .line 237
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v8, arSMSName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 239
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v9, arSubFolderName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 241
    const-string v5, ""

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/futuredial/S40SmsReadThread;->GetSMSList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v18

    .line 242
    if-eqz v18, :cond_2

    .line 244
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 245
    const-string v4, "S40SmsReadThread"

    const-string v5, "fail in getting sms listing"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v18

    .line 246
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto :goto_0

    .line 251
    .end local v19           #iRet:I
    .restart local v18       #iRet:I
    :cond_2
    const/16 v20, 0x0

    .local v20, j:I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_8

    .line 254
    sget v4, Lcom/futuredial/S40SmsReadThread;->CancelFlag:I

    if-nez v4, :cond_3

    .line 256
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 257
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4

    .line 260
    :cond_3
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 261
    .local v25, strSMSName:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_5

    const/16 v4, 0x14

    const/16 v5, 0x15

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 251
    :cond_4
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 265
    :cond_5
    new-instance v21, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct/range {v21 .. v21}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 266
    .local v21, smsBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/futuredial/S40SmsReadThread;->Obex_Get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;)I

    move-result v18

    .line 267
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/futuredial/S40SmsReadThread;->ASSERT(II)V

    .line 268
    if-eqz v18, :cond_6

    .line 270
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 271
    const-string v4, "S40SmsReadThread"

    const-string v5, "fail in getting sms"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v18

    .line 272
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0

    .line 274
    .end local v19           #iRet:I
    .restart local v18       #iRet:I
    :cond_6
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v4, v4

    if-eqz v4, :cond_4

    .line 280
    sget v4, Lcom/futuredial/S40SmsReadThread;->CancelFlag:I

    if-nez v4, :cond_7

    .line 282
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 283
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4

    .line 287
    :cond_7
    move-object/from16 v17, p4

    .line 288
    .local v17, iBoxType:Ljava/lang/Integer;
    const-string v4, "UTF-8"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v23

    .line 289
    .local v23, smsNameBuf:[B
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    .line 290
    .local v24, smsNameBufLen:I
    add-int/lit8 v4, v24, 0x3

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v22, v0

    .line 292
    .local v22, smsData:[B
    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    aput-byte v5, v22, v4

    .line 294
    const/4 v4, 0x1

    shr-int/lit8 v5, v24, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v22, v4

    .line 295
    const/4 v4, 0x2

    move/from16 v0, v24

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v22, v4

    .line 296
    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v5, 0x0

    add-int/lit8 v6, v24, 0x3

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v7, v7

    move-object/from16 v0, v22

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    invoke-static/range {v22 .. v22}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    goto/16 :goto_2

    .line 304
    .end local v17           #iBoxType:Ljava/lang/Integer;
    .end local v21           #smsBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v22           #smsData:[B
    .end local v23           #smsNameBuf:[B
    .end local v24           #smsNameBufLen:I
    .end local v25           #strSMSName:Ljava/lang/String;
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 306
    .local v26, subFolderName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 307
    .local v11, subPathTree:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 309
    invoke-direct/range {v10 .. v15}, Lcom/futuredial/S40SmsReadThread;->ReadMsgUnderSpecifiedPath(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)I

    move-result v18

    .line 310
    if-eqz v18, :cond_9

    move/from16 v19, v18

    .line 312
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0

    .end local v11           #subPathTree:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #iRet:I
    .end local v26           #subFolderName:Ljava/lang/String;
    .restart local v18       #iRet:I
    :cond_a
    move/from16 v19, v18

    .line 316
    .end local v18           #iRet:I
    .restart local v19       #iRet:I
    goto/16 :goto_0
.end method

.method private Str2UnicodeByte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 613
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 615
    new-array v0, v7, [B

    .line 638
    :cond_0
    :goto_0
    return-object v0

    .line 619
    :cond_1
    :try_start_0
    const-string v6, "UNICODE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 620
    .local v2, byteTempBuffer:[B
    array-length v6, v2

    if-gt v6, v8, :cond_2

    move-object v0, v5

    .line 622
    goto :goto_0

    .line 624
    :cond_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    new-array v0, v6, [B

    .line 625
    .local v0, byteDataBuffer:[B
    const/4 v6, 0x2

    const/4 v7, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    invoke-static {v2, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_0

    .line 628
    aget-byte v1, v0, v4

    .line 629
    .local v1, byteTemp:B
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v0, v4

    .line 630
    add-int/lit8 v6, v4, 0x1

    aput-byte v1, v0, v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    add-int/lit8 v4, v4, 0x1

    .line 626
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 635
    .end local v0           #byteDataBuffer:[B
    .end local v1           #byteTemp:B
    .end local v2           #byteTempBuffer:[B
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 637
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "S40SmsReadThread"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 638
    goto :goto_0
.end method

.method private binHex2byte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/16 v8, 0x66

    const/16 v7, 0x46

    const/16 v6, 0x39

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 322
    .local v3, ret:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 324
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 325
    .local v0, c1:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 326
    .local v1, c2:I
    if-gt v0, v6, :cond_2

    .line 328
    add-int/lit8 v0, v0, -0x30

    .line 338
    :cond_0
    :goto_1
    if-gt v1, v6, :cond_4

    .line 340
    add-int/lit8 v1, v1, -0x30

    .line 350
    :cond_1
    :goto_2
    div-int/lit8 v4, v2, 0x2

    shl-int/lit8 v5, v0, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 351
    add-int/lit8 v2, v2, 0x2

    .line 352
    goto :goto_0

    .line 330
    :cond_2
    if-gt v0, v7, :cond_3

    .line 332
    add-int/lit8 v0, v0, -0x37

    goto :goto_1

    .line 334
    :cond_3
    if-gt v0, v8, :cond_0

    .line 336
    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    .line 342
    :cond_4
    if-gt v0, v7, :cond_5

    .line 344
    add-int/lit8 v1, v1, -0x37

    goto :goto_2

    .line 346
    :cond_5
    if-gt v0, v8, :cond_1

    .line 348
    add-int/lit8 v1, v1, -0x57

    goto :goto_2

    .line 353
    .end local v0           #c1:I
    .end local v1           #c2:I
    :cond_6
    return-object v3
.end method


# virtual methods
.method protected DoComm()V
    .locals 15

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 86
    :try_start_0
    const-string v0, "S40SmsReadThread"

    const-string v2, "Enter function DoComm"

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v9, 0x1

    .line 90
    .local v9, iRet:I
    new-instance v7, Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {v7}, Lcom/futuredial/fbus/FBusConfig;-><init>()V

    .line 91
    .local v7, fbusConfig:Lcom/futuredial/fbus/FBusConfig;
    iget-object v0, p0, Lcom/futuredial/S40SmsReadThread;->context:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/futuredial/S40SmsReadThread;->commuPolicy:Ljava/lang/String;

    iget v4, p0, Lcom/futuredial/S40SmsReadThread;->contentType:I

    invoke-virtual {v7, v0, v2, v3, v4}, Lcom/futuredial/fbus/FBusConfig;->LoadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "S40SmsReadThread"

    const-string v2, "Fail in loading configuration for reading sms from Nokia S40"

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 215
    .end local v7           #fbusConfig:Lcom/futuredial/fbus/FBusConfig;
    .end local v9           #iRet:I
    :goto_0
    return-void

    .line 98
    .restart local v7       #fbusConfig:Lcom/futuredial/fbus/FBusConfig;
    .restart local v9       #iRet:I
    :cond_0
    sget v0, Lcom/futuredial/S40SmsReadThread;->CancelFlag:I

    if-nez v0, :cond_1

    .line 100
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 101
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v7           #fbusConfig:Lcom/futuredial/fbus/FBusConfig;
    .end local v9           #iRet:I
    :catch_0
    move-exception v14

    .line 202
    .local v14, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/S40SmsReadThread;->bPopResume:Z

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/futuredial/S40SmsReadThread;->ASSERT(I)V

    .line 204
    const/16 v0, 0x67

    iput v0, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 214
    .end local v14           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/S40SmsReadThread;->Close(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 104
    .restart local v7       #fbusConfig:Lcom/futuredial/fbus/FBusConfig;
    .restart local v9       #iRet:I
    :cond_1
    :try_start_1
    const-string v0, "S40SmsReadThread"

    const-string v2, "OpenPort"

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/futuredial/S40SmsReadThread;->OpenPort()I

    .line 107
    const-string v0, "S40SmsReadThread"

    const-string v2, "SetIsCompleted"

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/futuredial/S40SmsReadThread;->SetIsCompleted()V

    .line 111
    const-string v0, "S40SmsReadThread"

    const-string v2, "Begin to read sms from Nokia S40 by OBEX"

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v10, 0x0

    .local v10, iRetry:I
    move v11, v10

    .line 116
    .end local v10           #iRetry:I
    .local v11, iRetry:I
    :goto_2
    iget-object v0, v7, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v0, v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strFolderGuid:Ljava/lang/String;

    iget-object v2, v7, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v2, v2, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexWho:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/futuredial/S40SmsReadThread;->Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 117
    if-nez v9, :cond_3

    move v10, v11

    .line 128
    .end local v11           #iRetry:I
    .restart local v10       #iRetry:I
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/futuredial/S40SmsReadThread;->ASSERT(II)V

    .line 129
    if-eqz v9, :cond_4

    .line 131
    iput v9, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 132
    const-string v0, "S40SmsReadThread"

    const-string v2, "fail in connecting obex server"

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 206
    .end local v7           #fbusConfig:Lcom/futuredial/fbus/FBusConfig;
    .end local v9           #iRet:I
    .end local v10           #iRetry:I
    :catch_1
    move-exception v6

    .line 208
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/futuredial/S40SmsReadThread;->ASSERT(I)V

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    goto :goto_1

    .line 118
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #fbusConfig:Lcom/futuredial/fbus/FBusConfig;
    .restart local v9       #iRet:I
    .restart local v11       #iRetry:I
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/S40SmsReadThread;->Close(Ljava/lang/Boolean;)V

    .line 120
    const-string v0, "S40SmsReadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail in connecting obex server and retry, iRetry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 124
    invoke-virtual {p0}, Lcom/futuredial/S40SmsReadThread;->OpenPort()I

    .line 125
    invoke-virtual {p0}, Lcom/futuredial/S40SmsReadThread;->SetIsCompleted()V

    .line 126
    add-int/lit8 v10, v11, 0x1

    .end local v11           #iRetry:I
    .restart local v10       #iRetry:I
    const/4 v0, 0x3

    if-ge v11, v0, :cond_2

    move v11, v10

    .end local v10           #iRetry:I
    .restart local v11       #iRetry:I
    goto :goto_2

    .line 136
    .end local v11           #iRetry:I
    .restart local v10       #iRetry:I
    :cond_4
    sget v0, Lcom/futuredial/S40SmsReadThread;->CancelFlag:I

    if-nez v0, :cond_5

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 139
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 143
    :cond_5
    const-string v0, ""

    iget-object v2, v7, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v2, v2, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexCapability:Ljava/lang/String;

    iget-object v3, v7, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v3, v3, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexWho:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/futuredial/S40SmsReadThread;->GetCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 144
    if-eqz v9, :cond_6

    .line 146
    iput v9, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 147
    const-string v0, "S40SmsReadThread"

    const-string v2, "fail in getting x-obex/capability "

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_6
    sget v0, Lcom/futuredial/S40SmsReadThread;->CancelFlag:I

    if-nez v0, :cond_7

    .line 153
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 154
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 158
    :cond_7
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    iget-object v0, v7, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v0, v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_arSMSBox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_9

    .line 161
    sget v0, Lcom/futuredial/S40SmsReadThread;->CancelFlag:I

    if-nez v0, :cond_8

    .line 163
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 164
    new-instance v0, Lcom/futuredial/CancelException;

    invoke-direct {v0}, Lcom/futuredial/CancelException;-><init>()V

    throw v0

    .line 167
    :cond_8
    iget-object v0, v7, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v0, v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_arSMSBox:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;

    .line 169
    .local v12, objBox:Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;
    const-string v13, ""

    .line 170
    .local v13, strSMSPath:Ljava/lang/String;
    iget-object v0, p0, Lcom/futuredial/S40SmsReadThread;->m_strMsgFolderName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/futuredial/S40SmsReadThread;->m_strMsgFolderName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v12, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxPath:Ljava/lang/String;

    iget-object v3, v12, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 179
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, strPathTree:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, v7, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v2, v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexWho:Ljava/lang/String;

    iget-object v0, v7, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v3, v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strFolderType:Ljava/lang/String;

    iget-object v0, v12, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v12, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxName:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/futuredial/S40SmsReadThread;->ReadMsgUnderSpecifiedPath(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)I

    move-result v9

    .line 187
    if-eqz v9, :cond_b

    .line 189
    iput v9, p0, Lcom/futuredial/S40SmsReadThread;->ThreadErrorCode:I

    .line 196
    .end local v1           #strPathTree:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #objBox:Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;
    .end local v13           #strSMSPath:Ljava/lang/String;
    :cond_9
    iget-object v0, v7, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v0, v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->m_strObexWho:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/futuredial/S40SmsReadThread;->Obex_DisConnect(Ljava/lang/String;)I

    .line 197
    const-string v0, "S40SmsReadThread"

    const-string v2, "Exit function DoComm"

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    .restart local v12       #objBox:Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;
    .restart local v13       #strSMSPath:Ljava/lang/String;
    :cond_a
    iget-object v13, v12, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxPath:Ljava/lang/String;
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 158
    .restart local v1       #strPathTree:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3
.end method

.method public LogBinData(Ljava/lang/String;[B)V
    .locals 12
    .parameter "logTag"
    .parameter "binData"

    .prologue
    .line 961
    iget-boolean v10, p0, Lcom/futuredial/S40SmsReadThread;->bPrintLog:Z

    if-nez v10, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 966
    :cond_0
    const-string v10, "Begin"

    invoke-static {p1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, bFinished:Z
    const/16 v6, 0x10

    .line 969
    .local v6, nLen:I
    const/16 v10, 0x30

    new-array v8, v10, [C

    .line 970
    .local v8, szBinLine:[C
    new-array v9, v6, [C

    .line 971
    .local v9, szStrLine:[C
    const-string v7, ""

    .line 972
    .local v7, strMsg:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, m:I
    :goto_1
    array-length v10, v8

    if-ge v5, v10, :cond_1

    .line 974
    const/16 v10, 0x20

    aput-char v10, v8, v5

    .line 972
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 976
    :cond_1
    const/4 v5, 0x0

    :goto_2
    array-length v10, v9

    if-ge v5, v10, :cond_2

    .line 978
    const/16 v10, 0x20

    aput-char v10, v9, v5

    .line 976
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 981
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v10, p2

    if-ge v2, v10, :cond_8

    .line 983
    const/4 v0, 0x0

    .line 984
    aget-byte v10, p2, v2

    shr-int/lit8 v10, v10, 0x4

    int-to-byte v10, v10

    and-int/lit8 v1, v10, 0xf

    .line 985
    .local v1, h:I
    aget-byte v10, p2, v2

    and-int/lit8 v4, v10, 0xf

    .line 986
    .local v4, l:I
    rem-int v3, v2, v6

    .line 987
    .local v3, id:I
    const/16 v10, 0x9

    if-gt v1, v10, :cond_3

    .line 989
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v11, v1, 0x30

    int-to-char v11, v11

    aput-char v11, v8, v10

    .line 996
    :goto_4
    const/16 v10, 0x9

    if-gt v4, v10, :cond_4

    .line 998
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v4, 0x30

    int-to-char v11, v11

    aput-char v11, v8, v10

    .line 1004
    :goto_5
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v10, v10, 0x2

    const/16 v11, 0x20

    aput-char v11, v8, v10

    .line 1006
    aget-byte v10, p2, v2

    const/16 v11, 0x1e

    if-lt v10, v11, :cond_5

    .line 1008
    aget-byte v10, p2, v2

    int-to-char v10, v10

    aput-char v10, v9, v3

    .line 1015
    :goto_6
    add-int/lit8 v10, v2, 0x1

    rem-int/2addr v10, v6

    if-nez v10, :cond_7

    .line 1017
    const/4 v0, 0x1

    .line 1018
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1019
    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v5, 0x0

    :goto_7
    array-length v10, v8

    if-ge v5, v10, :cond_6

    .line 1023
    const/16 v10, 0x20

    aput-char v10, v8, v5

    .line 1021
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 993
    :cond_3
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v11, v1, 0x37

    int-to-char v11, v11

    aput-char v11, v8, v10

    goto :goto_4

    .line 1002
    :cond_4
    mul-int/lit8 v10, v3, 0x3

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v4, 0x37

    int-to-char v11, v11

    aput-char v11, v8, v10

    goto :goto_5

    .line 1012
    :cond_5
    const/16 v10, 0x2e

    aput-char v10, v9, v3

    goto :goto_6

    .line 1025
    :cond_6
    const/4 v5, 0x0

    :goto_8
    array-length v10, v9

    if-ge v5, v10, :cond_7

    .line 1027
    const/16 v10, 0x20

    aput-char v10, v9, v5

    .line 1025
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 981
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1032
    .end local v1           #h:I
    .end local v3           #id:I
    .end local v4           #l:I
    :cond_8
    if-nez v0, :cond_9

    .line 1034
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1035
    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_9
    const-string v10, "End"

    invoke-static {p1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/futuredial/S40SmsReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/S40SmsReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/S40SmsReadThread$1;-><init>(Lcom/futuredial/S40SmsReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 78
    return-void
.end method
