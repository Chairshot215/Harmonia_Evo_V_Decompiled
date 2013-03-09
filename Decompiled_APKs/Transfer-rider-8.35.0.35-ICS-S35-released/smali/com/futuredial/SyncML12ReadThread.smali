.class public Lcom/futuredial/SyncML12ReadThread;
.super Lcom/futuredial/ReadThread;
.source "SyncML12ReadThread.java"

# interfaces
.implements Lcom/futuredial/obex/ICallBackObexWrapper;


# instance fields
.field private LOGTAG:Ljava/lang/String;

.field private final Nokia_Type:Ljava/lang/String;

.field private final Nokia_Who:Ljava/lang/String;

.field private bLastSyncML:Z

.field private bSupportConML:Z

.field private dataLeftFromLast:[B

.field private docommSyncMLTime:I

.field private itemCountAccumulated:J

.field private itemCountReturned:J

.field private itemIDBuffer:Lcom/futuredial/bluetooth/ByteArrayData;

.field private itemTotalCount:J

.field private itemTotalReceived:J

.field private lastMaxMsgSize:I

.field protected syncML:Lcom/futuredial/syncml/SyncML_NOK;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 5
    .parameter "tParam"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 32
    iput-object v3, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    .line 34
    const-string v0, "SyncML12ReadThread"

    iput-object v0, p0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/SyncML12ReadThread;->bLastSyncML:Z

    .line 37
    iput-boolean v4, p0, Lcom/futuredial/SyncML12ReadThread;->bSupportConML:Z

    .line 39
    iput v4, p0, Lcom/futuredial/SyncML12ReadThread;->docommSyncMLTime:I

    .line 40
    const v0, 0xffff

    iput v0, p0, Lcom/futuredial/SyncML12ReadThread;->lastMaxMsgSize:I

    .line 480
    const-string v0, "application/vnd.nokia.conml+wbxml"

    iput-object v0, p0, Lcom/futuredial/SyncML12ReadThread;->Nokia_Type:Ljava/lang/String;

    .line 481
    const-string v0, "PC Suite"

    iput-object v0, p0, Lcom/futuredial/SyncML12ReadThread;->Nokia_Who:Ljava/lang/String;

    .line 482
    iput-object v3, p0, Lcom/futuredial/SyncML12ReadThread;->itemIDBuffer:Lcom/futuredial/bluetooth/ByteArrayData;

    .line 483
    iput-object v3, p0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    .line 484
    iput-wide v1, p0, Lcom/futuredial/SyncML12ReadThread;->itemTotalCount:J

    .line 485
    iput-wide v1, p0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    .line 486
    iput-wide v1, p0, Lcom/futuredial/SyncML12ReadThread;->itemCountReturned:J

    .line 487
    iput-wide v1, p0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    .line 45
    return-void
.end method

.method private CheckConMLService(Lcom/futuredial/obex/ObexWrapper;)Z
    .locals 22
    .parameter "obex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 1109
    const/16 v18, 0x0

    .line 1110
    .local v18, ret:Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/futuredial/SyncML12ReadThread;->bSupportConML:Z

    .line 1112
    new-instance v7, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v7}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 1114
    .local v7, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "x-obex/capability"

    const-string v6, "PC Suite"

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/futuredial/obex/ObexWrapper;->Obex_Get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/obex/ICallBackObexWrapper;)I

    move-result v13

    .line 1115
    .local v13, iRet:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 1116
    if-eqz v13, :cond_0

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "fail in getting x-obex/capability"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v18

    .line 1165
    :goto_0
    return v2

    .line 1124
    :cond_0
    :try_start_0
    new-instance v14, Ljava/io/ByteArrayInputStream;

    iget-object v2, v7, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-direct {v14, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1125
    .local v14, ins:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v21

    .line 1126
    .local v21, xpath:Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 1127
    .local v9, doc:Lorg/w3c/dom/Document;
    const-string v2, "/Capability/Service"

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v9, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/NodeList;

    .line 1128
    .local v15, nlService:Lorg/w3c/dom/NodeList;
    if-nez v15, :cond_1

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "there is no Service node in the returned Capability xml"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const/4 v13, 0x1

    .line 1132
    const/4 v2, 0x0

    goto :goto_0

    .line 1134
    :cond_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 1135
    .local v16, nlsSize:I
    const/16 v19, 0x0

    .local v19, sIndex:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 1137
    move/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 1138
    .local v17, nodeService:Lorg/w3c/dom/Node;
    const-string v2, "Name"

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 1139
    .local v11, eleName:Lorg/w3c/dom/Element;
    if-eqz v11, :cond_5

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Service Controllers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1141
    const-string v2, "Version"

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 1142
    .local v12, eleVersion:Lorg/w3c/dom/Element;
    if-eqz v12, :cond_2

    .line 1144
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v20

    .line 1145
    .local v20, strVersion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service Controllers version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .end local v20           #strVersion:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/futuredial/SyncML12ReadThread;->bSupportConML:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    const/16 v18, 0x1

    .line 1160
    .end local v9           #doc:Lorg/w3c/dom/Document;
    .end local v11           #eleName:Lorg/w3c/dom/Element;
    .end local v12           #eleVersion:Lorg/w3c/dom/Element;
    .end local v14           #ins:Ljava/io/ByteArrayInputStream;
    .end local v15           #nlService:Lorg/w3c/dom/NodeList;
    .end local v16           #nlsSize:I
    .end local v17           #nodeService:Lorg/w3c/dom/Node;
    .end local v19           #sIndex:I
    .end local v21           #xpath:Ljavax/xml/xpath/XPath;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/futuredial/SyncML12ReadThread;->bSupportConML:Z

    if-nez v2, :cond_4

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "this phone does not support ConML"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move/from16 v2, v18

    .line 1165
    goto/16 :goto_0

    .line 1135
    .restart local v9       #doc:Lorg/w3c/dom/Document;
    .restart local v11       #eleName:Lorg/w3c/dom/Element;
    .restart local v14       #ins:Ljava/io/ByteArrayInputStream;
    .restart local v15       #nlService:Lorg/w3c/dom/NodeList;
    .restart local v16       #nlsSize:I
    .restart local v17       #nodeService:Lorg/w3c/dom/Node;
    .restart local v19       #sIndex:I
    .restart local v21       #xpath:Ljavax/xml/xpath/XPath;
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1154
    .end local v9           #doc:Lorg/w3c/dom/Document;
    .end local v11           #eleName:Lorg/w3c/dom/Element;
    .end local v14           #ins:Ljava/io/ByteArrayInputStream;
    .end local v15           #nlService:Lorg/w3c/dom/NodeList;
    .end local v16           #nlsSize:I
    .end local v17           #nodeService:Lorg/w3c/dom/Node;
    .end local v19           #sIndex:I
    .end local v21           #xpath:Ljavax/xml/xpath/XPath;
    :catch_0
    move-exception v10

    .line 1156
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private ConMLReader()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 491
    const/4 v1, 0x1

    .line 493
    .local v1, iRet:I
    new-instance v4, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v4}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    iput-object v4, p0, Lcom/futuredial/SyncML12ReadThread;->itemIDBuffer:Lcom/futuredial/bluetooth/ByteArrayData;

    .line 494
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    .line 495
    iput-wide v5, p0, Lcom/futuredial/SyncML12ReadThread;->itemCountReturned:J

    .line 496
    iput-wide v5, p0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    .line 499
    :try_start_0
    new-instance v3, Lcom/futuredial/obex/ObexWrapper;

    const-string v4, "ConML"

    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v6, 0x4e20

    invoke-direct {v3, v4, v5, v6}, Lcom/futuredial/obex/ObexWrapper;-><init>(Ljava/lang/String;Lcom/futuredial/bluetooth/btcommhelper;I)V

    .line 502
    .local v3, obex:Lcom/futuredial/obex/ObexWrapper;
    invoke-direct {p0, v3}, Lcom/futuredial/SyncML12ReadThread;->InitializeConML(Lcom/futuredial/obex/ObexWrapper;)I

    move-result v1

    .line 503
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 504
    if-eqz v1, :cond_0

    .line 506
    iput v1, p0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    .line 507
    iget-object v4, p0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v5, "fail in initializing ConML"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, v3}, Lcom/futuredial/SyncML12ReadThread;->UnInitializeConML(Lcom/futuredial/obex/ObexWrapper;)I

    move v2, v1

    .line 539
    .end local v1           #iRet:I
    .end local v3           #obex:Lcom/futuredial/obex/ObexWrapper;
    .local v2, iRet:I
    :goto_0
    return v2

    .line 514
    .end local v2           #iRet:I
    .restart local v1       #iRet:I
    .restart local v3       #obex:Lcom/futuredial/obex/ObexWrapper;
    :cond_0
    invoke-direct {p0, v3}, Lcom/futuredial/SyncML12ReadThread;->ReadItemsConML(Lcom/futuredial/obex/ObexWrapper;)I

    move-result v1

    .line 517
    invoke-direct {p0, v3}, Lcom/futuredial/SyncML12ReadThread;->UnInitializeConML(Lcom/futuredial/obex/ObexWrapper;)I

    .line 519
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 520
    if-eqz v1, :cond_1

    .line 522
    iput v1, p0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    .line 523
    iget-object v4, p0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v5, "fail in reading items with ConML"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/futuredial/CancelException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 524
    .end local v1           #iRet:I
    .restart local v2       #iRet:I
    goto :goto_0

    .line 528
    .end local v2           #iRet:I
    .end local v3           #obex:Lcom/futuredial/obex/ObexWrapper;
    .restart local v1       #iRet:I
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Lcom/futuredial/CancelException;
    invoke-virtual {v0}, Lcom/futuredial/CancelException;->printStackTrace()V

    .line 530
    const/4 v4, 0x4

    iput v4, p0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    .line 531
    const/4 v1, 0x4

    .line 534
    .end local v0           #e:Lcom/futuredial/CancelException;
    :cond_1
    if-eqz v1, :cond_2

    .line 536
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4

    :cond_2
    move v2, v1

    .line 539
    .end local v1           #iRet:I
    .restart local v2       #iRet:I
    goto :goto_0
.end method

.method private DoComm_ConML()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 110
    :try_start_0
    const-string v1, "00005005-0000-1000-8000-0002ee000001"

    .line 111
    .local v1, strUUID:Ljava/lang/String;
    iget-object v3, p0, Lcom/futuredial/SyncML12ReadThread;->commuPolicy:Ljava/lang/String;

    const-string v4, "conml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/futuredial/SyncML12ReadThread;->uuid:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 116
    :cond_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/futuredial/SyncML12ReadThread;->OpenPort(Ljava/util/UUID;Z)I

    .line 117
    invoke-virtual {p0}, Lcom/futuredial/SyncML12ReadThread;->SetIsCompleted()V

    .line 119
    invoke-direct {p0}, Lcom/futuredial/SyncML12ReadThread;->ConMLReader()I
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    .end local v1           #strUUID:Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/SyncML12ReadThread;->Close(Ljava/lang/Boolean;)V

    .line 138
    return-void

    .line 121
    :catch_0
    move-exception v2

    .line 124
    .local v2, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    iput-boolean v5, p0, Lcom/futuredial/SyncML12ReadThread;->bPopResume:Z

    .line 125
    invoke-virtual {p0, v5}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(I)V

    .line 126
    const/16 v3, 0x67

    iput v3, p0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 128
    .end local v2           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :catch_1
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    invoke-virtual {p0, v5}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(I)V

    .line 132
    iput v5, p0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    goto :goto_0
.end method

.method private DoComm_SyncML()V
    .locals 3

    .prologue
    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/futuredial/SyncML12ReadThread;->DoComm_SyncML_Procedure()V

    .line 145
    sget v1, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    const/16 v2, 0x67

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    const/16 v2, 0x69

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/futuredial/SyncML12ReadThread;->commuPolicy:Ljava/lang/String;

    const-string v2, "nokia_phonebook_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/futuredial/SyncML12ReadThread;->commuPolicy:Ljava/lang/String;

    const-string v2, "nokia_bookmark_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_1
    iget v1, p0, Lcom/futuredial/SyncML12ReadThread;->docommSyncMLTime:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private DoComm_SyncML_Procedure()V
    .locals 18

    .prologue
    .line 167
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    .line 169
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/futuredial/SyncML12ReadThread;->bLastSyncML:Z

    .line 172
    const/4 v10, 0x0

    .line 173
    .local v10, resCode:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->uuid:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    .line 174
    .local v8, id:Ljava/util/UUID;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/futuredial/SyncML12ReadThread;->docommSyncMLTime:I

    if-nez v13, :cond_2

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/futuredial/SyncML12ReadThread;->OpenPort(Ljava/util/UUID;Z)I

    .line 175
    move-object/from16 v0, p0

    iget v13, v0, Lcom/futuredial/SyncML12ReadThread;->docommSyncMLTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/futuredial/SyncML12ReadThread;->docommSyncMLTime:I

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SyncML12ReadThread;->SetIsCompleted()V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SyncML12ReadThread;->GetSyncMLObject()Lcom/futuredial/syncml/SyncML_NOK;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->context:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/futuredial/syncml/SyncML_NOK;->setActivity(Landroid/content/Context;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->commuPolicy:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/futuredial/syncml/SyncML_NOK;->setPolicy(Ljava/lang/String;)Z

    move-result v11

    .line 181
    .local v11, state:Z
    if-nez v11, :cond_3

    .line 183
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    .end local v8           #id:Ljava/util/UUID;
    .end local v11           #state:Z
    :catch_0
    move-exception v12

    .line 281
    .local v12, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/futuredial/SyncML12ReadThread;->bPopResume:Z

    .line 282
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(I)V

    .line 283
    const/16 v13, 0x67

    move-object/from16 v0, p0

    iput v13, v0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    .line 295
    .end local v12           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    if-eqz v13, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v13}, Lcom/futuredial/syncml/SyncML_NOK;->getMax_msg_size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/futuredial/SyncML12ReadThread;->lastMaxMsgSize:I

    .line 300
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    const/16 v14, 0x67

    if-eq v13, v14, :cond_1

    .line 303
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SyncML12ReadThread;->disconnect()V
    :try_end_1
    .catch Lcom/futuredial/SyncMLException; {:try_start_1 .. :try_end_1} :catch_4

    .line 309
    :cond_1
    :goto_2
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/futuredial/SyncML12ReadThread;->Close(Ljava/lang/Boolean;)V

    .line 311
    return-void

    .line 174
    .restart local v8       #id:Ljava/util/UUID;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 185
    .restart local v11       #state:Z
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/futuredial/SyncML12ReadThread;->docommSyncMLTime:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->commuPolicy:Ljava/lang/String;

    const-string v14, "nokia_phonebook_1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget v13, v0, Lcom/futuredial/SyncML12ReadThread;->lastMaxMsgSize:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/futuredial/SyncML12ReadThread;->docommSyncMLTime:I

    sub-int v5, v13, v14

    .line 189
    .local v5, curMaxMsgSize:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v13, v5}, Lcom/futuredial/syncml/SyncML_NOK;->setMax_msg_size(I)V

    .line 191
    .end local v5           #curMaxMsgSize:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v13}, Lcom/futuredial/syncml/SyncML_NOK;->getConnectStream()[B

    move-result-object v9

    .line 192
    .local v9, res:[B
    if-eqz v9, :cond_5

    array-length v13, v9

    if-nez v13, :cond_6

    .line 194
    :cond_5
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 285
    .end local v8           #id:Ljava/util/UUID;
    .end local v9           #res:[B
    .end local v11           #state:Z
    :catch_1
    move-exception v6

    .line 287
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(I)V

    .line 289
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    goto :goto_1

    .line 196
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #id:Ljava/util/UUID;
    .restart local v9       #res:[B
    .restart local v11       #state:Z
    :cond_6
    :try_start_3
    new-instance v2, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v2}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V
    :try_end_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 199
    .local v2, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v14, 0x4e20

    invoke-virtual {v13, v9, v14}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v10

    .line 200
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 201
    if-eqz v10, :cond_7

    .line 203
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_4 .. :try_end_4} :catch_0

    .line 212
    :catch_2
    move-exception v6

    .line 214
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13
    :try_end_5
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 205
    .end local v6           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v14, 0x4e20

    invoke-virtual {v13, v2, v14}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v10

    .line 206
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 207
    if-eqz v10, :cond_8

    .line 209
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_6 .. :try_end_6} :catch_0

    .line 217
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v15, 0x196

    const/16 v16, 0x10

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    iget-object v14, v2, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v13, v14}, Lcom/futuredial/syncml/SyncML_NOK;->setConnectResponseStream([B)Z

    move-result v7

    .line 220
    .local v7, flag:Z
    if-nez v7, :cond_9

    .line 222
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13

    .line 224
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v13}, Lcom/futuredial/syncml/SyncML_NOK;->getSelectServiceStream()[B

    move-result-object v1

    .line 225
    .local v1, b:[B
    if-eqz v1, :cond_a

    array-length v13, v1

    if-nez v13, :cond_b

    .line 227
    :cond_a
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13
    :try_end_7
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 231
    :cond_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v14, 0x4e20

    invoke-virtual {v13, v1, v14}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v10

    .line 232
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 233
    if-eqz v10, :cond_c

    .line 235
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_8 .. :try_end_8} :catch_0

    .line 244
    :catch_3
    move-exception v6

    .line 246
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13
    :try_end_9
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 237
    .end local v6           #e:Ljava/lang/Exception;
    :cond_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v14, 0x4e20

    invoke-virtual {v13, v2, v14}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v10

    .line 238
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 239
    if-eqz v10, :cond_d

    .line 241
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_a .. :try_end_a} :catch_0

    .line 249
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v15, 0x196

    const/16 v16, 0x18

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    iget-object v14, v2, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v13, v14}, Lcom/futuredial/syncml/SyncML_NOK;->setSelectServiceResponseStream([B)Z

    move-result v3

    .line 252
    .local v3, bool:Z
    if-nez v3, :cond_e

    .line 254
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13

    .line 260
    :cond_e
    sget v13, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v13, :cond_f

    .line 262
    new-instance v13, Lcom/futuredial/CancelException;

    invoke-direct {v13}, Lcom/futuredial/CancelException;-><init>()V

    throw v13

    .line 264
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SyncML12ReadThread;->getObject()[B

    move-result-object v1

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v13, v1}, Lcom/futuredial/syncml/SyncML_NOK;->ParseSyncML([B)[B

    move-result-object v4

    .line 266
    .local v4, buf:[B
    if-nez v4, :cond_10

    .line 268
    new-instance v13, Lcom/futuredial/SyncMLException;

    invoke-direct {v13}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v13

    .line 270
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/futuredial/SyncML12ReadThread;->putObject([B)V

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v13}, Lcom/futuredial/syncml/SyncML_NOK;->IsSyncMLFinished()Z
    :try_end_b
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v13

    if-eqz v13, :cond_e

    goto/16 :goto_1

    .line 304
    .end local v1           #b:[B
    .end local v2           #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v3           #bool:Z
    .end local v4           #buf:[B
    .end local v7           #flag:Z
    .end local v8           #id:Ljava/util/UUID;
    .end local v9           #res:[B
    .end local v11           #state:Z
    :catch_4
    move-exception v6

    .line 306
    .local v6, e:Lcom/futuredial/SyncMLException;
    invoke-virtual {v6}, Lcom/futuredial/SyncMLException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private GetData_Calendar(ZZ[B)I
    .locals 20
    .parameter "bFirstPackage"
    .parameter "bLastPackage"
    .parameter "dataBuffer"

    .prologue
    .line 883
    const/4 v7, 0x0

    .line 885
    .local v7, iRet:I
    const/4 v8, 0x0

    .line 886
    .local v8, index:I
    const/4 v2, 0x0

    .line 887
    .local v2, buffer:[B
    if-eqz p1, :cond_2

    .line 889
    move-object/from16 v2, p3

    .line 891
    array-length v14, v2

    const/4 v15, 0x4

    if-ge v14, v15, :cond_1

    .line 893
    const/4 v7, 0x1

    .line 979
    .end local v7           #iRet:I
    :cond_0
    :goto_0
    return v7

    .line 897
    .restart local v7       #iRet:I
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v14}, Lcom/futuredial/SyncML12ReadThread;->GetLongFromBuffer([BIZ)J

    move-result-wide v3

    .line 898
    .local v3, calCount:J
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountReturned:J

    .line 899
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    .line 900
    add-int/lit8 v8, v8, 0x4

    .line 914
    .end local v3           #calCount:J
    :goto_1
    array-length v14, v2

    if-ge v8, v14, :cond_5

    .line 918
    sget v14, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v14, :cond_4

    .line 920
    const/4 v7, 0x4

    goto :goto_0

    .line 902
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    if-eqz v14, :cond_3

    .line 904
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    array-length v14, v14

    move-object/from16 v0, p3

    array-length v15, v0

    add-int/2addr v14, v15

    new-array v2, v14, [B

    .line 905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 906
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    array-length v15, v15

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v14, v2, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    goto :goto_1

    .line 911
    :cond_3
    move-object/from16 v2, p3

    goto :goto_1

    .line 923
    :cond_4
    array-length v14, v2

    add-int/lit8 v15, v8, 0x4

    if-ge v14, v15, :cond_6

    .line 967
    :cond_5
    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountReturned:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    .line 969
    const/4 v7, 0x1

    goto :goto_0

    .line 924
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v14}, Lcom/futuredial/SyncML12ReadThread;->GetLongFromBuffer([BIZ)J

    move-result-wide v5

    .line 925
    .local v5, calSegmentLen:J
    array-length v14, v2

    int-to-long v14, v14

    add-int/lit8 v16, v8, 0x4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v16, v16, v5

    cmp-long v14, v14, v16

    if-ltz v14, :cond_5

    .line 927
    add-int/lit8 v14, v8, 0xd

    aget-byte v14, v2, v14

    add-int/lit16 v14, v14, 0x100

    rem-int/lit16 v14, v14, 0x100

    const/16 v15, 0xff

    if-ne v14, v15, :cond_7

    add-int/lit8 v14, v8, 0xe

    aget-byte v14, v2, v14

    add-int/lit16 v14, v14, 0x100

    rem-int/lit16 v14, v14, 0x100

    const/16 v15, 0xff

    if-ne v14, v15, :cond_7

    add-int/lit8 v14, v8, 0xf

    aget-byte v14, v2, v14

    add-int/lit16 v14, v14, 0x100

    rem-int/lit16 v14, v14, 0x100

    const/16 v15, 0xff

    if-ne v14, v15, :cond_7

    add-int/lit8 v14, v8, 0x10

    aget-byte v14, v2, v14

    add-int/lit16 v14, v14, 0x100

    rem-int/lit16 v14, v14, 0x100

    const/16 v15, 0xff

    if-ne v14, v15, :cond_7

    .line 932
    add-int/lit8 v14, v8, 0x4

    int-to-long v14, v14

    add-long/2addr v14, v5

    long-to-int v8, v14

    .line 933
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    .line 936
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    .line 937
    const-wide/16 v14, 0x8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e

    mul-long v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalCount:J

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    long-to-int v10, v14

    .line 938
    .local v10, percent:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/futuredial/SyncML12ReadThread;->sendPBARMsg(I)V

    goto/16 :goto_1

    .line 943
    .end local v10           #percent:I
    :cond_7
    add-int/lit8 v8, v8, 0x28

    .line 944
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v14}, Lcom/futuredial/SyncML12ReadThread;->GetLongFromBuffer([BIZ)J

    move-result-wide v12

    .line 945
    .local v12, vCalLen:J
    add-int/lit8 v8, v8, 0x4

    .line 947
    const-wide/16 v14, 0x28

    add-long/2addr v14, v12

    cmp-long v14, v5, v14

    if-eqz v14, :cond_8

    .line 949
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 952
    :cond_8
    long-to-int v14, v12

    new-array v11, v14, [B

    .line 953
    .local v11, vCalBuf:[B
    const/4 v14, 0x0

    long-to-int v15, v12

    invoke-static {v2, v8, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 955
    invoke-static {v11}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 957
    int-to-long v14, v8

    add-long/2addr v14, v12

    long-to-int v8, v14

    .line 959
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    .line 962
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    .line 963
    const-wide/16 v14, 0x8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e

    mul-long v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalCount:J

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    long-to-int v10, v14

    .line 964
    .restart local v10       #percent:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/futuredial/SyncML12ReadThread;->sendPBARMsg(I)V

    goto/16 :goto_1

    .line 972
    .end local v5           #calSegmentLen:J
    .end local v10           #percent:I
    .end local v11           #vCalBuf:[B
    .end local v12           #vCalLen:J
    :cond_9
    array-length v14, v2

    if-ge v8, v14, :cond_0

    .line 974
    array-length v14, v2

    sub-int v9, v14, v8

    .line 975
    .local v9, len:I
    new-array v14, v9, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    .line 976
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    const/4 v15, 0x0

    invoke-static {v2, v8, v14, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method private GetData_SMS(ZZ[B)I
    .locals 20
    .parameter "bFirstPackage"
    .parameter "bLastPackage"
    .parameter "dataBuffer"

    .prologue
    .line 985
    const/4 v3, 0x0

    .line 987
    .local v3, iRet:I
    const/4 v4, 0x0

    .line 988
    .local v4, index:I
    const/4 v2, 0x0

    .line 989
    .local v2, buffer:[B
    if-eqz p1, :cond_2

    .line 991
    move-object/from16 v2, p3

    .line 994
    array-length v14, v2

    const/4 v15, 0x4

    if-ge v14, v15, :cond_1

    .line 996
    const/4 v3, 0x1

    .line 1079
    .end local v3           #iRet:I
    :cond_0
    :goto_0
    return v3

    .line 1000
    .restart local v3       #iRet:I
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v14}, Lcom/futuredial/SyncML12ReadThread;->GetLongFromBuffer([BIZ)J

    move-result-wide v9

    .line 1001
    .local v9, smsCount:J
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountReturned:J

    .line 1002
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    .line 1003
    add-int/lit8 v4, v4, 0x4

    .line 1017
    .end local v9           #smsCount:J
    :goto_1
    array-length v14, v2

    if-ge v4, v14, :cond_5

    .line 1021
    sget v14, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v14, :cond_4

    .line 1023
    const/4 v3, 0x4

    goto :goto_0

    .line 1005
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    if-eqz v14, :cond_3

    .line 1007
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    array-length v14, v14

    move-object/from16 v0, p3

    array-length v15, v0

    add-int/2addr v14, v15

    new-array v2, v14, [B

    .line 1008
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1009
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    array-length v15, v15

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v14, v2, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    goto :goto_1

    .line 1014
    :cond_3
    move-object/from16 v2, p3

    goto :goto_1

    .line 1026
    :cond_4
    array-length v14, v2

    add-int/lit8 v15, v4, 0x4

    if-ge v14, v15, :cond_6

    .line 1067
    :cond_5
    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountReturned:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    .line 1069
    const/4 v3, 0x1

    goto :goto_0

    .line 1027
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v14}, Lcom/futuredial/SyncML12ReadThread;->GetLongFromBuffer([BIZ)J

    move-result-wide v6

    .line 1028
    .local v6, msgSegmentLen:J
    array-length v14, v2

    int-to-long v14, v14

    add-int/lit8 v16, v4, 0x4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v16, v16, v6

    cmp-long v14, v14, v16

    if-ltz v14, :cond_5

    .line 1030
    add-int/lit8 v14, v4, 0xd

    aget-byte v14, v2, v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    .line 1032
    add-int/lit8 v14, v4, 0x4

    int-to-long v14, v14

    add-long/2addr v14, v6

    long-to-int v4, v14

    .line 1033
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    .line 1036
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    .line 1037
    const-wide/16 v14, 0x8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e

    mul-long v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalCount:J

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    long-to-int v8, v14

    .line 1038
    .local v8, percent:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/futuredial/SyncML12ReadThread;->sendPBARMsg(I)V

    goto/16 :goto_1

    .line 1043
    .end local v8           #percent:I
    :cond_7
    add-int/lit8 v4, v4, 0x27

    .line 1044
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v14}, Lcom/futuredial/SyncML12ReadThread;->GetLongFromBuffer([BIZ)J

    move-result-wide v12

    .line 1045
    .local v12, vMsgLen:J
    add-int/lit8 v4, v4, 0x4

    .line 1047
    const-wide/16 v14, 0x27

    add-long/2addr v14, v12

    cmp-long v14, v6, v14

    if-eqz v14, :cond_8

    .line 1049
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1052
    :cond_8
    long-to-int v14, v12

    new-array v11, v14, [B

    .line 1053
    .local v11, vMsgBuf:[B
    const/4 v14, 0x0

    long-to-int v15, v12

    invoke-static {v2, v4, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1055
    invoke-static {v11}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 1057
    int-to-long v14, v4

    add-long/2addr v14, v12

    long-to-int v4, v14

    .line 1059
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemCountAccumulated:J

    .line 1062
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    .line 1063
    const-wide/16 v14, 0x8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalReceived:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e

    mul-long v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalCount:J

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    long-to-int v8, v14

    .line 1064
    .restart local v8       #percent:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/futuredial/SyncML12ReadThread;->sendPBARMsg(I)V

    goto/16 :goto_1

    .line 1072
    .end local v6           #msgSegmentLen:J
    .end local v8           #percent:I
    .end local v11           #vMsgBuf:[B
    .end local v12           #vMsgLen:J
    :cond_9
    array-length v14, v2

    if-ge v4, v14, :cond_0

    .line 1074
    array-length v14, v2

    sub-int v5, v14, v4

    .line 1075
    .local v5, len:I
    new-array v14, v5, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    .line 1076
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SyncML12ReadThread;->dataLeftFromLast:[B

    const/4 v15, 0x0

    invoke-static {v2, v4, v14, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method private GetLongFromBuffer([BIZ)J
    .locals 10
    .parameter "buffer"
    .parameter "start"
    .parameter "bBigEnd"

    .prologue
    .line 1084
    if-eqz p3, :cond_0

    .line 1086
    add-int/lit8 v4, p2, 0x0

    aget-byte v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    const-wide/32 v6, -0x1000000

    and-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p1, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, p1, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    or-long v0, v4, v6

    .local v0, ret:J
    move-wide v2, v0

    .line 1103
    .end local v0           #ret:J
    .local v2, ret:J
    :goto_0
    return-wide v2

    .line 1097
    .end local v2           #ret:J
    :cond_0
    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    const-wide/32 v6, -0x1000000

    and-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p1, v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x0

    aget-byte v6, p1, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    or-long v0, v4, v6

    .restart local v0       #ret:J
    move-wide v2, v0

    .line 1103
    .end local v0           #ret:J
    .restart local v2       #ret:J
    goto :goto_0
.end method

.method private InitializeConML(Lcom/futuredial/obex/ObexWrapper;)I
    .locals 22
    .parameter "obex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "enter function InitializeConML"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/16 v20, 0x1

    .line 547
    .local v20, iRet:I
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/obex/ObexWrapper;->GetObexPkgObj()Lcom/futuredial/obex/OBEX_PKG;

    move-result-object v21

    .line 549
    .local v21, objObexPkg:Lcom/futuredial/obex/OBEX_PKG;
    sget v2, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v2, :cond_0

    .line 551
    new-instance v2, Lcom/futuredial/CancelException;

    invoke-direct {v2}, Lcom/futuredial/CancelException;-><init>()V

    throw v2

    .line 554
    :cond_0
    const-string v2, "F9EC7BC4953c11d2984E525400DC9E09"

    const-string v3, "PC Suite"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/futuredial/obex/ObexWrapper;->Obex_Connect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 555
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 556
    if-eqz v20, :cond_1

    .line 558
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "fail in connecting ConML server"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    .line 719
    :goto_0
    return v2

    .line 563
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/futuredial/SyncML12ReadThread;->CheckConMLService(Lcom/futuredial/obex/ObexWrapper;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 565
    const/16 v2, 0x6a

    goto :goto_0

    .line 567
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/futuredial/SyncML12ReadThread;->bLastSyncML:Z

    .line 570
    sget v2, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v2, :cond_3

    .line 572
    new-instance v2, Lcom/futuredial/CancelException;

    invoke-direct {v2}, Lcom/futuredial/CancelException;-><init>()V

    throw v2

    .line 575
    :cond_3
    const-string v2, "C:\\Data"

    const-string v3, "PC Suite"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/futuredial/obex/ObexWrapper;->Obex_SetPath(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 576
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 577
    if-eqz v20, :cond_4

    .line 579
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/SyncML12ReadThread;->ThreadErrorCode:I

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "fail in setting path C:\\Data"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    .line 581
    goto :goto_0

    .line 585
    :cond_4
    sget v2, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v2, :cond_5

    .line 587
    new-instance v2, Lcom/futuredial/CancelException;

    invoke-direct {v2}, Lcom/futuredial/CancelException;-><init>()V

    throw v2

    .line 590
    :cond_5
    new-instance v7, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v7}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 591
    .local v7, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/16 v17, 0x0

    .line 592
    .local v17, byteOpenStore:[B
    move-object/from16 v0, p0

    iget v2, v0, Lcom/futuredial/SyncML12ReadThread;->contentType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/futuredial/SyncML12ReadThread;->contentType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 594
    :cond_6
    const/16 v2, 0x32

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .end local v17           #byteOpenStore:[B
    fill-array-data v17, :array_0

    .line 621
    .restart local v17       #byteOpenStore:[B
    :goto_1
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 622
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 623
    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "application/vnd.nokia.conml+wbxml"

    const-string v6, "PC Suite"

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/futuredial/obex/ObexWrapper;->Obex_Get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/obex/ICallBackObexWrapper;)I

    move-result v20

    .line 624
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 625
    if-eqz v20, :cond_9

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "fail in getting SYNC: OpenStore"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    .line 628
    goto/16 :goto_0

    .line 604
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/futuredial/SyncML12ReadThread;->contentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 606
    const/16 v2, 0x38

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .end local v17           #byteOpenStore:[B
    fill-array-data v17, :array_1

    .restart local v17       #byteOpenStore:[B
    goto :goto_1

    .line 618
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/SyncML12ReadThread;->contentType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 632
    :cond_9
    sget v2, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v2, :cond_a

    .line 634
    new-instance v2, Lcom/futuredial/CancelException;

    invoke-direct {v2}, Lcom/futuredial/CancelException;-><init>()V

    throw v2

    .line 637
    :cond_a
    const/16 v2, 0x18

    new-array v0, v2, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    .line 641
    .local v18, byteResetChangeInfo:[B
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 642
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 643
    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "application/vnd.nokia.conml+wbxml"

    const-string v6, "PC Suite"

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/futuredial/obex/ObexWrapper;->Obex_Get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/obex/ICallBackObexWrapper;)I

    move-result v20

    .line 644
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 645
    if-eqz v20, :cond_b

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "fail in getting SYNC: ResetChangeInfo"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    .line 648
    goto/16 :goto_0

    .line 652
    :cond_b
    sget v2, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v2, :cond_c

    .line 654
    new-instance v2, Lcom/futuredial/CancelException;

    invoke-direct {v2}, Lcom/futuredial/CancelException;-><init>()V

    throw v2

    .line 657
    :cond_c
    const/16 v2, 0x16

    new-array v15, v2, [B

    fill-array-data v15, :array_3

    .line 661
    .local v15, byteGetStoreFormat:[B
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 662
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v15}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 663
    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "application/vnd.nokia.conml+wbxml"

    const-string v6, "PC Suite"

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/futuredial/obex/ObexWrapper;->Obex_Get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/obex/ICallBackObexWrapper;)I

    move-result v20

    .line 664
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 665
    if-eqz v20, :cond_d

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "fail in getting SYNC: GetStoreFormat"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    .line 668
    goto/16 :goto_0

    .line 672
    :cond_d
    sget v2, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v2, :cond_e

    .line 674
    new-instance v2, Lcom/futuredial/CancelException;

    invoke-direct {v2}, Lcom/futuredial/CancelException;-><init>()V

    throw v2

    .line 677
    :cond_e
    const/16 v2, 0x1c

    new-array v0, v2, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_4

    .line 682
    .local v19, byteSetRemoteStoreFormat:[B
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 683
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 684
    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "application/vnd.nokia.conml+wbxml"

    const-string v6, "PC Suite"

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/futuredial/obex/ObexWrapper;->Obex_Put(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v20

    .line 685
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 686
    if-eqz v20, :cond_f

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "fail in putting SYNC: SetRemoteStoreFormat"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    .line 689
    goto/16 :goto_0

    .line 693
    :cond_f
    sget v2, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v2, :cond_10

    .line 695
    new-instance v2, Lcom/futuredial/CancelException;

    invoke-direct {v2}, Lcom/futuredial/CancelException;-><init>()V

    throw v2

    .line 698
    :cond_10
    const/16 v2, 0x14

    new-array v0, v2, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_5

    .line 703
    .local v16, byteListChange:[B
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 704
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 705
    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, "application/vnd.nokia.conml+wbxml"

    const-string v12, "PC Suite"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SyncML12ReadThread;->itemIDBuffer:Lcom/futuredial/bluetooth/ByteArrayData;

    const/4 v14, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v14}, Lcom/futuredial/obex/ObexWrapper;->Obex_Get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/obex/ICallBackObexWrapper;)I

    move-result v20

    .line 706
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 707
    if-eqz v20, :cond_11

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "fail in putting SYNC: ListChange"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    .line 710
    goto/16 :goto_0

    .line 714
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->itemIDBuffer:Lcom/futuredial/bluetooth/ByteArrayData;

    iget-object v2, v2, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v2, v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_12

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 715
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->itemIDBuffer:Lcom/futuredial/bluetooth/ByteArrayData;

    iget-object v2, v2, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/futuredial/SyncML12ReadThread;->GetLongFromBuffer([BIZ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalCount:J

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->itemIDBuffer:Lcom/futuredial/bluetooth/ByteArrayData;

    iget-object v2, v2, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x4

    const-wide/16 v8, 0x4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalCount:J

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 718
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v3, "exit function InitializeConML"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    .line 719
    goto/16 :goto_0

    .line 594
    :array_0
    .array-data 0x1
        0x59t
        0x53t
        0x43t
        0x4et
        0x20t
        0x3at
        0x70t
        0x4ft
        0x6et
        0x65t
        0x74t
        0x53t
        0x72t
        0x6ft
        0x3at
        0x65t
        0xdet
        0x20t
        0x1ft
        0x6dt
        0x9et
        0x10t
        0xd4t
        0xf8t
        0x8t
        0x80t
        0x43t
        0x0t
        0x6ct
        0x61t
        0x6et
        0x65t
        0x61t
        0x64t
        0x0t
        0x72t
        0x0t
        0x0t
        0x7t
        0x0t
        0x4ft
        0x0t
        0x69t
        0x76t
        0x63t
        0x2et
        0x6dt
        0x6ft
        0x0t
        0x0t
    .end array-data

    .line 606
    nop

    :array_1
    .array-data 0x1
        0x59t
        0x53t
        0x43t
        0x4et
        0x20t
        0x3at
        0x70t
        0x4ft
        0x6et
        0x65t
        0x74t
        0x53t
        0x72t
        0x6ft
        0x3at
        0x65t
        0x5ct
        0x20t
        0x20t
        0x6bt
        0xdt
        0x10t
        0x1ct
        0x8dt
        0xet
        0x70t
        0x53t
        0x0t
        0x73t
        0x6dt
        0x79t
        0x53t
        0x63t
        0x6et
        0x6ft
        0x4ct
        0x61t
        0x63t
        0x44t
        0x6ct
        0x0t
        0x62t
        0x0t
        0x0t
        0x7t
        0x0t
        0x4ft
        0x0t
        0x69t
        0x76t
        0x63t
        0x2et
        0x6dt
        0x6ft
        0x0t
        0x0t
    .end array-data

    .line 637
    :array_2
    .array-data 0x1
        0x59t
        0x53t
        0x43t
        0x4et
        0x20t
        0x3at
        0x65t
        0x52t
        0x65t
        0x73t
        0x43t
        0x74t
        0x61t
        0x68t
        0x67t
        0x6et
        0x49t
        0x65t
        0x66t
        0x6et
        0x0t
        0x6ft
        0x0t
        0x0t
    .end array-data

    .line 657
    :array_3
    .array-data 0x1
        0x59t
        0x53t
        0x43t
        0x4et
        0x20t
        0x3at
        0x65t
        0x47t
        0x53t
        0x74t
        0x6ft
        0x74t
        0x65t
        0x72t
        0x6ft
        0x46t
        0x6dt
        0x72t
        0x74t
        0x61t
        0x0t
        0x0t
    .end array-data

    .line 677
    nop

    :array_4
    .array-data 0x1
        0x59t
        0x53t
        0x43t
        0x4et
        0x20t
        0x3at
        0x65t
        0x53t
        0x52t
        0x74t
        0x6dt
        0x65t
        0x74t
        0x6ft
        0x53t
        0x65t
        0x6ft
        0x74t
        0x65t
        0x72t
        0x6ft
        0x46t
        0x6dt
        0x72t
        0x74t
        0x61t
        0x0t
        0x0t
    .end array-data

    .line 698
    :array_5
    .array-data 0x1
        0x59t
        0x53t
        0x43t
        0x4et
        0x20t
        0x3at
        0x69t
        0x4ct
        0x74t
        0x73t
        0x68t
        0x43t
        0x6et
        0x61t
        0x65t
        0x67t
        0x0t
        0x73t
        0x0t
        0x0t
    .end array-data
.end method

.method private ReadItemsConML(Lcom/futuredial/obex/ObexWrapper;)I
    .locals 29
    .parameter "obex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/CancelException;
        }
    .end annotation

    .prologue
    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v4, "enter function ReadItemsConML"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/16 v17, 0x1

    .line 727
    .local v17, iRet:I
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/obex/ObexWrapper;->GetObexPkgObj()Lcom/futuredial/obex/OBEX_PKG;

    move-result-object v25

    .line 729
    .local v25, objObexPkg:Lcom/futuredial/obex/OBEX_PKG;
    const/16 v3, 0x10

    new-array v13, v3, [B

    fill-array-data v13, :array_0

    .line 734
    .local v13, byteReadItems:[B
    const/16 v16, 0x78

    .line 735
    .local v16, countPerTeam:I
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/futuredial/SyncML12ReadThread;->itemTotalCount:J

    long-to-int v0, v3

    move/from16 v20, v0

    .line 736
    .local v20, itemcount:I
    div-int v4, v20, v16

    rem-int v3, v20, v16

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    add-int v27, v4, v3

    .line 737
    .local v27, teamcount:I
    const/16 v21, 0x4

    .line 739
    .local v21, msgIDStart:I
    new-instance v8, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v8}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 741
    .local v8, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    const/16 v26, 0x0

    .local v26, teamIndex:I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 743
    move/from16 v14, v16

    .line 744
    .local v14, count:I
    add-int/lit8 v3, v27, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_0

    .line 746
    mul-int v3, v26, v16

    sub-int v14, v20, v3

    .line 749
    :cond_0
    mul-int/lit8 v19, v14, 0x4

    .line 750
    .local v19, idBufLen:I
    array-length v3, v13

    add-int/lit8 v3, v3, 0x8

    add-int v24, v3, v19

    .line 751
    .local v24, nameLen:I
    move/from16 v0, v24

    new-array v12, v0, [B

    .line 752
    .local v12, byteName:[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v13

    invoke-static {v13, v3, v12, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    array-length v0, v13

    move/from16 v22, v0

    .line 754
    .local v22, nameBufIndex:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #nameBufIndex:I
    .local v23, nameBufIndex:I
    int-to-byte v3, v14

    aput-byte v3, v12, v22

    .line 755
    add-int/lit8 v22, v23, 0x1

    .end local v23           #nameBufIndex:I
    .restart local v22       #nameBufIndex:I
    const/16 v3, 0x20

    aput-byte v3, v12, v23

    .line 756
    add-int/lit8 v23, v22, 0x1

    .end local v22           #nameBufIndex:I
    .restart local v23       #nameBufIndex:I
    const/4 v3, 0x0

    aput-byte v3, v12, v22

    .line 757
    add-int/lit8 v22, v23, 0x1

    .end local v23           #nameBufIndex:I
    .restart local v22       #nameBufIndex:I
    const/4 v3, 0x0

    aput-byte v3, v12, v23

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/SyncML12ReadThread;->itemIDBuffer:Lcom/futuredial/bluetooth/ByteArrayData;

    iget-object v3, v3, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-static {v3, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    add-int v21, v21, v19

    move/from16 v23, v22

    .end local v22           #nameBufIndex:I
    .restart local v23       #nameBufIndex:I
    move v15, v14

    .line 762
    .end local v14           #count:I
    .local v15, count:I
    :goto_2
    add-int/lit8 v14, v15, -0x1

    .end local v15           #count:I
    .restart local v14       #count:I
    if-lez v15, :cond_2

    .line 764
    add-int/lit8 v3, v23, 0x1

    aget-byte v28, v12, v3

    .line 765
    .local v28, temp:B
    add-int/lit8 v3, v23, 0x1

    add-int/lit8 v4, v23, 0x3

    aget-byte v4, v12, v4

    aput-byte v4, v12, v3

    .line 766
    add-int/lit8 v3, v23, 0x3

    aput-byte v28, v12, v3

    .line 767
    add-int/lit8 v22, v23, 0x4

    .end local v23           #nameBufIndex:I
    .restart local v22       #nameBufIndex:I
    move/from16 v23, v22

    .end local v22           #nameBufIndex:I
    .restart local v23       #nameBufIndex:I
    move v15, v14

    .line 768
    .end local v14           #count:I
    .restart local v15       #count:I
    goto :goto_2

    .line 736
    .end local v8           #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v12           #byteName:[B
    .end local v15           #count:I
    .end local v19           #idBufLen:I
    .end local v21           #msgIDStart:I
    .end local v23           #nameBufIndex:I
    .end local v24           #nameLen:I
    .end local v26           #teamIndex:I
    .end local v27           #teamcount:I
    .end local v28           #temp:B
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 770
    .restart local v8       #recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v12       #byteName:[B
    .restart local v14       #count:I
    .restart local v19       #idBufLen:I
    .restart local v21       #msgIDStart:I
    .restart local v23       #nameBufIndex:I
    .restart local v24       #nameLen:I
    .restart local v26       #teamIndex:I
    .restart local v27       #teamcount:I
    :cond_2
    add-int/lit8 v22, v23, 0x1

    .end local v23           #nameBufIndex:I
    .restart local v22       #nameBufIndex:I
    const/4 v3, 0x0

    aput-byte v3, v12, v23

    .line 771
    add-int/lit8 v23, v22, 0x1

    .end local v22           #nameBufIndex:I
    .restart local v23       #nameBufIndex:I
    const/4 v3, 0x0

    aput-byte v3, v12, v22

    .line 772
    add-int/lit8 v22, v23, 0x1

    .end local v23           #nameBufIndex:I
    .restart local v22       #nameBufIndex:I
    const/4 v3, 0x0

    aput-byte v3, v12, v23

    .line 773
    add-int/lit8 v23, v22, 0x1

    .end local v22           #nameBufIndex:I
    .restart local v23       #nameBufIndex:I
    const/4 v3, 0x0

    aput-byte v3, v12, v22

    .line 776
    sget v3, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v3, :cond_3

    .line 778
    new-instance v3, Lcom/futuredial/CancelException;

    invoke-direct {v3}, Lcom/futuredial/CancelException;-><init>()V

    throw v3

    .line 780
    :cond_3
    invoke-virtual/range {v25 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 781
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v12}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 782
    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "application/vnd.nokia.conml+wbxml"

    const-string v7, "PC Suite"

    move-object/from16 v3, p1

    move-object/from16 v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/futuredial/obex/ObexWrapper;->Obex_Get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/obex/ICallBackObexWrapper;)I

    move-result v17

    .line 783
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 784
    if-eqz v17, :cond_4

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v4, "fail in getting SYNC: ReadItems"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v17

    .line 816
    .end local v12           #byteName:[B
    .end local v14           #count:I
    .end local v17           #iRet:I
    .end local v19           #idBufLen:I
    .end local v23           #nameBufIndex:I
    .end local v24           #nameLen:I
    .local v18, iRet:I
    :goto_3
    return v18

    .line 791
    .end local v18           #iRet:I
    .restart local v12       #byteName:[B
    .restart local v14       #count:I
    .restart local v17       #iRet:I
    .restart local v19       #idBufLen:I
    .restart local v23       #nameBufIndex:I
    .restart local v24       #nameLen:I
    :cond_4
    sget v3, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v3, :cond_5

    .line 793
    new-instance v3, Lcom/futuredial/CancelException;

    invoke-direct {v3}, Lcom/futuredial/CancelException;-><init>()V

    throw v3

    .line 796
    :cond_5
    const/16 v3, 0x14

    new-array v11, v3, [B

    fill-array-data v11, :array_1

    .line 801
    .local v11, byteCommitChanges:[B
    array-length v3, v11

    add-int v3, v3, v23

    array-length v4, v13

    sub-int/2addr v3, v4

    new-array v10, v3, [B

    .line 802
    .local v10, byteCCName:[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v11

    invoke-static {v11, v3, v10, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    array-length v3, v13

    array-length v4, v11

    array-length v5, v13

    sub-int v5, v23, v5

    invoke-static {v12, v3, v10, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    invoke-virtual/range {v25 .. v25}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 805
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v10}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 806
    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "application/vnd.nokia.conml+wbxml"

    const-string v7, "PC Suite"

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/futuredial/obex/ObexWrapper;->Obex_Get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/obex/ICallBackObexWrapper;)I

    move-result v17

    .line 807
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 808
    if-eqz v17, :cond_6

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v4, "fail in putting SYNC: CommitChanges"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v17

    .line 811
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto :goto_3

    .line 741
    .end local v18           #iRet:I
    .restart local v17       #iRet:I
    :cond_6
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 815
    .end local v10           #byteCCName:[B
    .end local v11           #byteCommitChanges:[B
    .end local v12           #byteName:[B
    .end local v14           #count:I
    .end local v19           #idBufLen:I
    .end local v23           #nameBufIndex:I
    .end local v24           #nameLen:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v4, "exit function ReadItemsConML"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v17

    .line 816
    .end local v17           #iRet:I
    .restart local v18       #iRet:I
    goto :goto_3

    .line 729
    nop

    :array_0
    .array-data 0x1
        0x59t
        0x53t
        0x43t
        0x4et
        0x20t
        0x3at
        0x65t
        0x52t
        0x64t
        0x61t
        0x74t
        0x49t
        0x6dt
        0x65t
        0x3at
        0x73t
    .end array-data

    .line 796
    :array_1
    .array-data 0x1
        0x59t
        0x53t
        0x43t
        0x4et
        0x20t
        0x3at
        0x6ft
        0x43t
        0x6dt
        0x6dt
        0x74t
        0x69t
        0x68t
        0x43t
        0x6et
        0x61t
        0x65t
        0x67t
        0x3at
        0x73t
    .end array-data
.end method

.method private UnInitializeConML(Lcom/futuredial/obex/ObexWrapper;)I
    .locals 12
    .parameter "obex"

    .prologue
    .line 821
    const/4 v9, 0x1

    .line 823
    .local v9, iRet:I
    iget-object v0, p0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v1, "enter function UnInitializeConML"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Lcom/futuredial/obex/ObexWrapper;->GetObexPkgObj()Lcom/futuredial/obex/OBEX_PKG;

    move-result-object v11

    .line 827
    .local v11, objObexPkg:Lcom/futuredial/obex/OBEX_PKG;
    new-instance v5, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v5}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 829
    .local v5, recvBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-boolean v0, p0, Lcom/futuredial/SyncML12ReadThread;->bSupportConML:Z

    if-eqz v0, :cond_0

    .line 834
    const/16 v0, 0x12

    :try_start_0
    new-array v7, v0, [B

    fill-array-data v7, :array_0

    .line 838
    .local v7, byteCloseStore:[B
    invoke-virtual {v11}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 839
    const/4 v0, 0x1

    invoke-virtual {v11, v0, v7}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 840
    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "application/vnd.nokia.conml+wbxml"

    const-string v4, "PC Suite"

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/futuredial/obex/ObexWrapper;->Obex_Get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/obex/ICallBackObexWrapper;)I

    move-result v9

    .line 841
    const/4 v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 842
    if-eqz v9, :cond_0

    .line 844
    iget-object v0, p0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v1, "fail in putting SYNC: CloseStore"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v9

    .line 860
    .end local v7           #byteCloseStore:[B
    .end local v9           #iRet:I
    .local v10, iRet:I
    :goto_0
    return v10

    .line 848
    .end local v10           #iRet:I
    .restart local v9       #iRet:I
    :catch_0
    move-exception v8

    .line 849
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    const/4 v9, 0x1

    .line 855
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    const-string v0, "PC Suite"

    invoke-virtual {p1, v0}, Lcom/futuredial/obex/ObexWrapper;->Obex_DisConnect(Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    const-string v1, "exit function UnInitializeConML"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    .line 860
    .end local v9           #iRet:I
    .restart local v10       #iRet:I
    goto :goto_0

    .line 834
    :array_0
    .array-data 0x1
        0x59t
        0x53t
        0x43t
        0x4et
        0x20t
        0x3at
        0x6ct
        0x43t
        0x73t
        0x6ft
        0x53t
        0x65t
        0x6ft
        0x74t
        0x65t
        0x72t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method protected DoComm()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 75
    iget v0, p0, Lcom/futuredial/SyncML12ReadThread;->retryTimes:I

    if-nez v0, :cond_2

    .line 77
    iput-boolean v1, p0, Lcom/futuredial/SyncML12ReadThread;->bLastSyncML:Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/SyncML12ReadThread;->bSupportConML:Z

    .line 79
    iget-object v0, p0, Lcom/futuredial/SyncML12ReadThread;->commuPolicy:Ljava/lang/String;

    const-string v1, "conml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/futuredial/SyncML12ReadThread;->DoComm_ConML()V

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/futuredial/SyncML12ReadThread;->bSupportConML:Z

    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/futuredial/SyncML12ReadThread;->DoComm_SyncML()V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    iget v0, p0, Lcom/futuredial/SyncML12ReadThread;->retryTimes:I

    if-ne v0, v1, :cond_1

    .line 92
    iget-boolean v0, p0, Lcom/futuredial/SyncML12ReadThread;->bLastSyncML:Z

    if-eqz v0, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/futuredial/SyncML12ReadThread;->DoComm_ConML()V

    goto :goto_0

    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/futuredial/SyncML12ReadThread;->DoComm_SyncML()V

    goto :goto_0
.end method

.method protected GetSyncMLObject()Lcom/futuredial/syncml/SyncML_NOK;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/futuredial/syncml/SyncML_NOK;

    invoke-direct {v0}, Lcom/futuredial/syncml/SyncML_NOK;-><init>()V

    return-object v0
.end method

.method public ObexWraaperGetData(ZZ[B)I
    .locals 4
    .parameter "bFirstPackage"
    .parameter "bLastPackage"
    .parameter "dataBuffer"

    .prologue
    const/4 v0, 0x1

    .line 866
    iget v1, p0, Lcom/futuredial/SyncML12ReadThread;->contentType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/futuredial/SyncML12ReadThread;->contentType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 868
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/futuredial/SyncML12ReadThread;->GetData_Calendar(ZZ[B)I

    move-result v0

    .line 877
    :goto_0
    return v0

    .line 870
    :cond_1
    iget v1, p0, Lcom/futuredial/SyncML12ReadThread;->contentType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 872
    invoke-direct {p0, p1, p2, p3}, Lcom/futuredial/SyncML12ReadThread;->GetData_SMS(ZZ[B)I

    move-result v0

    goto :goto_0

    .line 876
    :cond_2
    iget-object v1, p0, Lcom/futuredial/SyncML12ReadThread;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/futuredial/SyncML12ReadThread;->contentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/SyncML12ReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/SyncML12ReadThread$1;-><init>(Lcom/futuredial/SyncML12ReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 66
    return-void
.end method

.method disconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/SyncMLException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 460
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v3, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v3}, Lcom/futuredial/syncml/SyncML_NOK;->getDisconnectStream()[B

    move-result-object v1

    .line 461
    .local v1, b:[B
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 463
    :cond_0
    new-instance v3, Lcom/futuredial/SyncMLException;

    invoke-direct {v3}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v3

    .line 467
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    .line 468
    iget-object v3, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v4, 0x1388

    invoke-virtual {v3, v0, v4}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    iget-object v3, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v3, v4}, Lcom/futuredial/syncml/SyncML_NOK;->setDisconnectResponseStream([B)Z

    .line 476
    return-void

    .line 470
    :catch_0
    move-exception v2

    .line 472
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    new-instance v3, Lcom/futuredial/SyncMLException;

    invoke-direct {v3}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v3
.end method

.method getObject()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v4, 0x0

    .line 360
    .local v4, resCode:I
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->initGetObject()Z

    .line 361
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 365
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    sget v5, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v5, :cond_1

    .line 367
    new-instance v5, Lcom/futuredial/CancelException;

    invoke-direct {v5}, Lcom/futuredial/CancelException;-><init>()V

    throw v5

    .line 369
    :cond_1
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->getGetObjectStream()[B

    move-result-object v1

    .line 370
    .local v1, b:[B
    if-eqz v1, :cond_2

    array-length v5, v1

    if-nez v5, :cond_3

    .line 372
    :cond_2
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5

    .line 376
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v6, 0x4e20

    invoke-virtual {v5, v1, v6}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    .line 377
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 378
    if-eqz v4, :cond_4

    .line 380
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :catch_0
    move-exception v3

    .line 392
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5

    .line 382
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 383
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v6, 0x9c400

    invoke-virtual {v5, v0, v6}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    .line 384
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 385
    if-eqz v4, :cond_5

    .line 387
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    :cond_5
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    iget-object v6, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v5, v6}, Lcom/futuredial/syncml/SyncML_NOK;->setGetObjectResponseStream([B)Z

    move-result v2

    .line 396
    .local v2, bool:Z
    if-nez v2, :cond_6

    .line 398
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5

    .line 400
    :cond_6
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->IsObexFinished()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 405
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->getResult()[B

    move-result-object v5

    return-object v5
.end method

.method obexAbortOperation()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 315
    const/4 v3, 0x0

    .line 317
    .local v3, resCode:I
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 319
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v6, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v6}, Lcom/futuredial/syncml/SyncML_NOK;->getAbortStream()[B

    move-result-object v1

    .line 320
    .local v1, b:[B
    if-eqz v1, :cond_0

    array-length v6, v1

    if-nez v6, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v4

    .line 326
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v7, 0x4e20

    invoke-virtual {v6, v1, v7}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v3

    .line 327
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 328
    if-nez v3, :cond_0

    .line 332
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 333
    iget-object v6, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v7, 0x1388

    invoke-virtual {v6, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    .line 334
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 335
    if-nez v3, :cond_0

    .line 339
    iget-object v6, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    iget-object v7, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v6, v7}, Lcom/futuredial/syncml/SyncML_NOK;->setAbortResponseStream([B)Z

    .line 341
    iget-object v6, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v7, 0x1388

    invoke-virtual {v6, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    .line 342
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 343
    if-nez v3, :cond_2

    .line 345
    iget-object v6, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    iget-object v7, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v6, v7}, Lcom/futuredial/syncml/SyncML_NOK;->setAbortResponseStream([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v4, v5

    .line 354
    goto :goto_0

    .line 348
    :catch_0
    move-exception v2

    .line 350
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method putObject([B)V
    .locals 7
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v4, 0x0

    .line 411
    .local v4, resCode:I
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5, p1}, Lcom/futuredial/syncml/SyncML_NOK;->initPutObject([B)V

    .line 412
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 416
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    sget v5, Lcom/futuredial/SyncML12ReadThread;->CancelFlag:I

    if-nez v5, :cond_1

    .line 418
    new-instance v5, Lcom/futuredial/CancelException;

    invoke-direct {v5}, Lcom/futuredial/CancelException;-><init>()V

    throw v5

    .line 420
    :cond_1
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->getPutObjectStream()[B

    move-result-object v2

    .line 421
    .local v2, buf:[B
    if-nez v2, :cond_2

    .line 423
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5

    .line 427
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v6, 0x4e20

    invoke-virtual {v5, v2, v6}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    .line 428
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 429
    if-eqz v4, :cond_3

    .line 431
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :catch_0
    move-exception v3

    .line 442
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5

    .line 433
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v6, 0x9c40

    invoke-virtual {v5, v0, v6}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    .line 434
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/futuredial/SyncML12ReadThread;->ASSERT(II)V

    .line 435
    if-eqz v4, :cond_4

    .line 437
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 445
    :cond_4
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    iget-object v6, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v5, v6}, Lcom/futuredial/syncml/SyncML_NOK;->setPutObjectRespStream([B)Z

    move-result v1

    .line 446
    .local v1, bool:Z
    if-nez v1, :cond_5

    .line 448
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5

    .line 450
    :cond_5
    iget-object v5, p0, Lcom/futuredial/SyncML12ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->IsObexFinished()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    return-void
.end method
