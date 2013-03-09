.class public Lcom/futuredial/syncml/SvrSamParser;
.super Lcom/futuredial/syncml/SrvParser;
.source "SvrSamParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lcom/futuredial/syncml/SrvParser;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/SvrSamParser;->errorCode:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/futuredial/syncml/SvrSamParser;->includeCTCap:Z

    .line 15
    const-string v0, "508"

    iput-object v0, p0, Lcom/futuredial/syncml/SvrSamParser;->alertStatus:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/syncml/SvrSamParser;->DataStore:Lcom/futuredial/xmlbuild/XmlElement;

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    .line 18
    new-instance v0, Lcom/futuredial/syncml/ItemStorageSAM;

    invoke-direct {v0}, Lcom/futuredial/syncml/ItemStorageSAM;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SvrSamParser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    .line 19
    new-instance v0, Lcom/futuredial/syncml/Parameter;

    invoke-direct {v0}, Lcom/futuredial/syncml/Parameter;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SvrSamParser;->statusList:Ljava/util/ArrayList;

    .line 22
    iget-object v0, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v0, v1}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected BuildSyncAlert()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 14

    .prologue
    .line 122
    new-instance v6, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v9, "Alert"

    invoke-direct {v6, v9}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 124
    .local v6, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "CmdID"

    iget v10, p0, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 125
    const-string v9, "Data"

    const-string v10, "201"

    invoke-virtual {v6, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 127
    const-string v9, "Item"

    invoke-virtual {v6, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 129
    .local v4, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "Target"

    invoke-virtual {v4, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 130
    .local v8, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "Source"

    invoke-virtual {v4, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 132
    .local v7, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v1, "./contacts"

    .line 133
    .local v1, PhoneDBName:Ljava/lang/String;
    const-string v0, "./Contacts"

    .line 134
    .local v0, AppDBName:Ljava/lang/String;
    iget-object v9, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v9}, Lcom/futuredial/syncml/Parameter;->getCurModel()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 136
    const-string v1, "./schedules"

    .line 137
    const-string v0, "./Schedule"

    .line 139
    :cond_0
    const-string v9, "LocURI"

    invoke-virtual {v8, v9, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 140
    const-string v9, "LocURI"

    invoke-virtual {v7, v9, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 142
    const-string v9, "Meta"

    invoke-virtual {v4, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 143
    .local v5, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "Anchor"

    invoke-virtual {v5, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 144
    .local v3, xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "xmlns"

    const-string v10, "syncml:metinf"

    invoke-virtual {v3, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 146
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd HHmmss"

    invoke-direct {v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, df:Ljava/text/SimpleDateFormat;
    const-string v9, "Last"

    const-string v10, "00000000T000000Z"

    invoke-virtual {v3, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 148
    const-string v9, "Next"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, "T"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Z"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 150
    return-object v6
.end method

.method protected BuildSyncGet()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 8

    .prologue
    .line 159
    new-instance v2, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v5, "Get"

    invoke-direct {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "CmdID"

    iget v6, p0, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 163
    const-string v5, "Meta"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 164
    .local v1, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "Type"

    const-string v6, "application/vnd.syncml-devinf+xml"

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 165
    .local v4, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "xmlns"

    const-string v6, "syncml:metinf"

    invoke-virtual {v4, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 167
    const-string v5, "Item"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 168
    .local v0, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "Target"

    invoke-virtual {v0, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 169
    .local v3, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "LocURI"

    const-string v6, "./devinf11"

    invoke-virtual {v3, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 170
    return-object v2
.end method

.method protected BuildSyncHdr()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 7

    .prologue
    .line 29
    new-instance v2, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v2}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 31
    .local v2, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "SyncHdr"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 33
    const-string v5, "VerDTD"

    iget-object v6, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getVerDTD()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 34
    const-string v5, "VerProto"

    iget-object v6, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getVerProto()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 35
    const-string v5, "SessionID"

    iget-object v6, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 36
    const-string v5, "MsgID"

    iget-object v6, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 38
    const-string v5, "Target"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 40
    .local v4, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "Source"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 41
    .local v3, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "LocURI"

    iget-object v6, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getPhoneServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 42
    const-string v5, "LocURI"

    const-string v6, "http://localhost/Sync"

    invoke-virtual {v3, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 44
    iget-object v5, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v5}, Lcom/futuredial/syncml/Parameter;->isSupportMaxMessageSize()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    const-string v5, "Meta"

    invoke-virtual {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 47
    .local v1, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "MaxMsgSize"

    iget-object v6, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/syncml/Parameter;->getMaxMessageSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 48
    .local v0, xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v5, "xmlns"

    const-string v6, "syncml:metinf"

    invoke-virtual {v0, v5, v6}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 51
    .end local v0           #xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v1           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    return-object v2
.end method

.method protected ParseAdd(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 21
    .parameter "xmlElement"

    .prologue
    .line 286
    const/4 v6, 0x0

    .local v6, strSource:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, strSourceParent:Ljava/lang/String;
    const/4 v5, 0x0

    .line 287
    .local v5, strData:Ljava/lang/String;
    const/4 v8, 0x0

    .line 288
    .local v8, bMoreData:Z
    const-string v2, "CmdID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v13

    .line 292
    .local v13, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    const/4 v3, 0x0

    .line 293
    .local v3, strDataType:Ljava/lang/String;
    const-string v2, "Meta"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v17

    .line 294
    .local v17, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v17, :cond_0

    .line 296
    const-string v2, "Type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v19

    .line 297
    .local v19, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v19, :cond_0

    .line 299
    invoke-virtual/range {v19 .. v19}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 304
    .end local v19           #xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    const-string v2, "Item"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChildList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 305
    .local v16, xmlItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    if-eqz v13, :cond_1

    if-nez v16, :cond_2

    .line 307
    :cond_1
    const/4 v2, 0x0

    .line 377
    :goto_0
    return v2

    .line 310
    :cond_2
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, iXMLItemCount:I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 312
    new-instance v18, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v2, "Status"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 313
    .local v18, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v2, "CmdID"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    add-int/lit8 v20, v4, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 314
    const-string v2, "MsgRef"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v4}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 315
    const-string v2, "CmdRef"

    invoke-virtual {v13}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 316
    const-string v2, "Cmd"

    const-string v4, "Add"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 317
    const-string v2, "Data"

    const-string v4, "201"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 319
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/futuredial/xmlbuild/XmlElement;

    .line 358
    .local v15, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v2, "Data"

    invoke-virtual {v15, v2}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v14

    .line 359
    .local v14, xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v14, :cond_4

    .line 361
    const/4 v9, 0x0

    .line 362
    .local v9, bIsBinHex:Z
    const-string v2, "coding"

    invoke-virtual {v14, v2}, Lcom/futuredial/xmlbuild/XmlElement;->findAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, strCoding:Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 365
    const-string v2, "binhex"

    invoke-virtual {v2, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 367
    const/4 v9, 0x1

    .line 371
    :cond_3
    invoke-virtual {v14}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/syncml/SvrSamParser;->itemStorage:Lcom/futuredial/syncml/ItemStorage;

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/futuredial/syncml/ItemStorage;->OnDataRecved(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 375
    .end local v9           #bIsBinHex:Z
    .end local v12           #strCoding:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/syncml/SvrSamParser;->statusList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 377
    .end local v14           #xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v15           #xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v18           #xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected ParseAlert(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 21
    .parameter "xmlElement"

    .prologue
    .line 176
    const-string v18, "CmdID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 177
    .local v7, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v7, :cond_0

    .line 179
    const/16 v18, 0x0

    .line 280
    :goto_0
    return v18

    .line 183
    :cond_0
    new-instance v15, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v18, "Status"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 184
    .local v15, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v18, "CmdID"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 185
    const-string v18, "MsgRef"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 186
    const-string v18, "CmdRef"

    invoke-virtual {v7}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 187
    const-string v18, "Cmd"

    const-string v19, "Alert"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 189
    const-string v18, "Data"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 190
    .local v8, xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v8, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    const-string v19, "Alert"

    invoke-virtual {v8}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/futuredial/syncml/Parameter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_1
    const-string v18, "Item"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 197
    .local v9, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v9, :cond_b

    .line 200
    const-string v18, "Target"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v17

    .line 201
    .local v17, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v17, :cond_3

    .line 203
    const-string v18, "LocURI"

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v16

    .line 204
    .local v16, xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v16, :cond_2

    .line 206
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 208
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/futuredial/syncml/Parameter;->setAppDBName(Ljava/lang/String;)V

    .line 209
    const-string v18, "TargetRef"

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 213
    .end local v16           #xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    const-string v18, "Source"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v14

    .line 214
    .local v14, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v14, :cond_5

    .line 216
    const-string v18, "LocURI"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v13

    .line 217
    .local v13, xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v13, :cond_4

    .line 219
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 221
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/futuredial/syncml/Parameter;->setPhoneDBName(Ljava/lang/String;)V

    .line 222
    const-string v18, "SourceRef"

    invoke-virtual {v13}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 226
    .end local v13           #xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_5
    const-string v18, "./contacts"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/futuredial/syncml/Parameter;->getAppDBName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/futuredial/syncml/Parameter;->getCurModel()I

    move-result v18

    if-eqz v18, :cond_7

    :cond_6
    const-string v18, "./Schedule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/futuredial/syncml/Parameter;->getAppDBName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/futuredial/syncml/Parameter;->getCurModel()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 229
    :cond_7
    const-string v18, "Data"

    const-string v19, "200"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 238
    :goto_1
    const-string v18, "Meta"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 239
    .local v11, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v11, :cond_b

    .line 242
    const-string v18, "Anchor"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 243
    .local v6, xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v6, :cond_a

    .line 246
    const-string v18, "Next"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v12

    .line 247
    .local v12, xmlNext:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v12, :cond_9

    .line 249
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 233
    .end local v6           #xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v11           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v12           #xmlNext:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_8
    const-string v18, "Data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->alertStatus:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    goto :goto_1

    .line 252
    .restart local v6       #xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v11       #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v12       #xmlNext:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_9
    const-string v18, "Item"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 253
    .local v5, retXmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v18, "Data"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 254
    .local v4, retData:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v18, "Anchor"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 255
    .local v3, retAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v18, "xmlns"

    const-string v19, "syncml:metinf"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 256
    const-string v18, "Next"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 257
    const-string v18, "Mem"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 258
    .local v2, mem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v18, "xmlns"

    const-string v19, "syncml:metinf"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 259
    const-string v18, "FreeMem"

    const-string v19, "2147483647"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 260
    const-string v18, "FreeID"

    const-string v19, "939"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 264
    .end local v2           #mem:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v3           #retAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v4           #retData:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v5           #retXmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v12           #xmlNext:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_a
    const-string v18, "MaxObjSize"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v10

    .line 265
    .local v10, xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v10, :cond_b

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/futuredial/syncml/Parameter;->setMaxObjectSize(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/futuredial/syncml/Parameter;->setSupportMaxObjectSize(Z)V

    .line 273
    .end local v6           #xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v10           #xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v11           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v14           #xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v17           #xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->statusList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 280
    :cond_c
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method protected ParseSyncHdr(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 14
    .parameter "xmlElement"

    .prologue
    .line 57
    const-string v11, "VerDTD"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 58
    .local v4, eleVerDTD:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "VerProto"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 59
    .local v5, eleVerProto:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "SessionID"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 60
    .local v1, eleSessionID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "MsgID"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    .line 62
    .local v0, eleMsgID:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "Target"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 64
    .local v3, eleTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "Source"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 66
    .local v2, eleSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    const/4 v11, 0x0

    .line 116
    :goto_0
    return v11

    .line 76
    :cond_1
    const-string v11, "LocURI"

    invoke-virtual {v3, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v10

    .line 77
    .local v10, xmlTargetLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "LocURI"

    invoke-virtual {v2, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 78
    .local v8, xmlSourceLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v10, :cond_2

    if-nez v8, :cond_3

    .line 80
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 83
    :cond_3
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setMessageID(I)V

    .line 84
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v11}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v11

    if-nez v11, :cond_4

    .line 86
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setVerDTD(Ljava/lang/String;)V

    .line 87
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v5}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setVerProto(Ljava/lang/String;)V

    .line 88
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v1}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setSessionID(Ljava/lang/String;)V

    .line 89
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v8}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setPhoneServerName(Ljava/lang/String;)V

    .line 90
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setAppServerName(Ljava/lang/String;)V

    .line 94
    :cond_4
    new-instance v9, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v11, "Status"

    invoke-direct {v9, v11}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 95
    .local v9, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v11, "CmdID"

    iget v12, p0, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/futuredial/syncml/SvrSamParser;->commandID:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 96
    const-string v11, "MsgRef"

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 97
    const-string v11, "CmdRef"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 98
    const-string v11, "Cmd"

    const-string v12, "SyncHdr"

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 99
    const-string v11, "TargetRef"

    invoke-virtual {v10}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 100
    const-string v11, "SourceRef"

    invoke-virtual {v8}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 101
    const-string v11, "Data"

    const-string v12, "212"

    invoke-virtual {v9, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 103
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->statusList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v11, "Meta"

    invoke-virtual {p1, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 107
    .local v7, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v7, :cond_5

    .line 109
    const-string v11, "MaxMsgSize"

    invoke-virtual {v7, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 110
    .local v6, xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v6, :cond_5

    .line 112
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setMaxMessageSize(I)V

    .line 113
    iget-object v11, p0, Lcom/futuredial/syncml/SvrSamParser;->parameter:Lcom/futuredial/syncml/Parameter;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/futuredial/syncml/Parameter;->setSupportMaxMessageSize(Z)V

    .line 116
    .end local v6           #xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_5
    const/4 v11, 0x1

    goto/16 :goto_0
.end method
