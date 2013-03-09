.class public Lcom/futuredial/syncml/SrvParser;
.super Lcom/futuredial/syncml/Parser;
.source "SrvParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/futuredial/syncml/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected BuildSyncAlert()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 14

    .prologue
    .line 68
    new-instance v6, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v10, "Alert"

    invoke-direct {v6, v10}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 70
    .local v6, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v10, "CmdID"

    iget v11, p0, Lcom/futuredial/syncml/SrvParser;->commandID:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/futuredial/syncml/SrvParser;->commandID:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 71
    const-string v10, "Data"

    const-string v11, "201"

    invoke-virtual {v6, v10, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 73
    const-string v10, "Item"

    invoke-virtual {v6, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 75
    .local v4, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v10, "Target"

    invoke-virtual {v4, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 76
    .local v8, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v10, "Source"

    invoke-virtual {v4, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 78
    .local v7, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v1, "./Contact"

    .line 79
    .local v1, PhoneDBName:Ljava/lang/String;
    const-string v0, "contacts"

    .line 80
    .local v0, AppDBName:Ljava/lang/String;
    iget-object v10, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/syncml/Parameter;->getCurModel()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 82
    const-string v1, "./Calendar"

    .line 83
    const-string v0, "events"

    .line 85
    :cond_0
    const-string v10, "LocURI"

    invoke-virtual {v8, v10, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 86
    const-string v10, "LocURI"

    invoke-virtual {v7, v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 88
    const-string v10, "Meta"

    invoke-virtual {v4, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 89
    .local v5, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v10, "Anchor"

    invoke-virtual {v5, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 90
    .local v3, xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-virtual {v3, v10, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 92
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMdd HHmmssZ"

    invoke-direct {v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, df:Ljava/text/SimpleDateFormat;
    const-string v10, "Next"

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, "T"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 95
    const-string v10, "Type"

    iget-object v11, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v11}, Lcom/futuredial/syncml/Parameter;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 96
    .local v9, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v10, "xmlns"

    const-string v11, "syncml:metinf"

    invoke-virtual {v9, v10, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 98
    return-object v6
.end method

.method protected BuildSyncHdr()Lcom/futuredial/xmlbuild/XmlElement;
    .locals 13

    .prologue
    .line 14
    new-instance v4, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v4}, Lcom/futuredial/xmlbuild/XmlElement;-><init>()V

    .line 16
    .local v4, xmlRet:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "SyncHdr"

    invoke-virtual {v4, v9}, Lcom/futuredial/xmlbuild/XmlElement;->setName(Ljava/lang/String;)V

    .line 18
    const-string v9, "VerDTD"

    iget-object v10, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/syncml/Parameter;->getVerDTD()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 19
    const-string v9, "VerProto"

    iget-object v10, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/syncml/Parameter;->getVerProto()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 20
    const-string v9, "SessionID"

    iget-object v10, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/syncml/Parameter;->getSessionID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 21
    const-string v9, "MsgID"

    iget-object v10, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 23
    const-string v9, "Target"

    invoke-virtual {v4, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 25
    .local v6, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "Source"

    invoke-virtual {v4, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 26
    .local v5, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "LocURI"

    iget-object v10, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/syncml/Parameter;->getPhoneServerName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 27
    const-string v9, "LocURI"

    iget-object v10, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/syncml/Parameter;->getAppServerName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 29
    iget-object v9, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v9}, Lcom/futuredial/syncml/Parameter;->isSupportMaxMessageSize()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 31
    const-string v9, "Meta"

    invoke-virtual {v4, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 32
    .local v3, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "MaxMsgSize"

    iget-object v10, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v10}, Lcom/futuredial/syncml/Parameter;->getMaxMessageSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 33
    .local v2, xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "xmlns"

    const-string v10, "syncml:metinf"

    invoke-virtual {v2, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 36
    .end local v2           #xmlMaxMsgSize:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v3           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    iget-object v9, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v9}, Lcom/futuredial/syncml/Parameter;->getAuth()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v9}, Lcom/futuredial/syncml/Parameter;->getAuth()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 38
    const-string v9, "Cred"

    invoke-virtual {v4, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v1

    .line 39
    .local v1, xmlCred:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "Meta"

    invoke-virtual {v1, v9}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 40
    .restart local v3       #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "Type"

    const-string v10, "syncml:auth-basic"

    invoke-virtual {v3, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 41
    .local v8, xmltype:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "xmlns"

    const-string v10, "syncml:metinf"

    invoke-virtual {v8, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 42
    const-string v9, "Type"

    const-string v10, "b64"

    invoke-virtual {v3, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 43
    .local v7, xmlformat:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v9, "xmlns"

    const-string v10, "syncml:metinf"

    invoke-virtual {v7, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 44
    const-string v9, "Data"

    const-string v10, "Og=="

    invoke-virtual {v1, v9, v10}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 60
    .end local v1           #xmlCred:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v3           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v7           #xmlformat:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v8           #xmltype:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_1
    const-string v9, "/Sync?sessionid=%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    invoke-virtual {v12}, Lcom/futuredial/syncml/Parameter;->getSessionID()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, Respuri:Ljava/lang/String;
    const-string v9, "RespURI"

    invoke-virtual {v4, v9, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 62
    return-object v4
.end method

.method protected ParseAlert(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 20
    .parameter "xmlElement"

    .prologue
    .line 103
    const-string v17, "CmdID"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 104
    .local v6, xmlCmdID:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v6, :cond_0

    .line 106
    const/16 v17, 0x0

    .line 201
    :goto_0
    return v17

    .line 110
    :cond_0
    new-instance v14, Lcom/futuredial/xmlbuild/XmlElement;

    const-string v17, "Status"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 111
    .local v14, xmlStatus:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v17, "CmdID"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SrvParser;->commandID:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SrvParser;->commandID:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 112
    const-string v17, "MsgRef"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/futuredial/syncml/Parameter;->getMessageID()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 113
    const-string v17, "CmdRef"

    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 114
    const-string v17, "Cmd"

    const-string v18, "Alert"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 116
    const-string v17, "Data"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v7

    .line 117
    .local v7, xmlData:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v7, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    const-string v18, "Alert"

    invoke-virtual {v7}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/futuredial/syncml/Parameter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    const-string v17, "Item"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 124
    .local v8, xmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v8, :cond_8

    .line 127
    const-string v17, "Target"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v16

    .line 128
    .local v16, xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v16, :cond_3

    .line 130
    const-string v17, "LocURI"

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v15

    .line 131
    .local v15, xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v15, :cond_2

    .line 133
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setAppDBName(Ljava/lang/String;)V

    .line 136
    const-string v17, "TargetRef"

    invoke-virtual {v15}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 140
    .end local v15           #xmlTLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_3
    const-string v17, "Source"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v13

    .line 141
    .local v13, xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v13, :cond_5

    .line 143
    const-string v17, "LocURI"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v12

    .line 144
    .local v12, xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v12, :cond_4

    .line 146
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 148
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setPhoneDBName(Ljava/lang/String;)V

    .line 149
    const-string v17, "SourceRef"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 154
    .end local v12           #xmlSLocURI:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_5
    const-string v17, "Meta"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v10

    .line 155
    .local v10, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v10, :cond_8

    .line 158
    const-string v17, "Anchor"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v5

    .line 159
    .local v5, xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v5, :cond_7

    .line 162
    const-string v17, "Next"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 163
    .local v11, xmlNext:Lcom/futuredial/xmlbuild/XmlElement;
    if-nez v11, :cond_6

    .line 165
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 168
    :cond_6
    const-string v17, "Item"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v4

    .line 169
    .local v4, retXmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v17, "Data"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v3

    .line 170
    .local v3, retData:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v17, "Anchor"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v2

    .line 171
    .local v2, retAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v17, "xmlns"

    const-string v18, "syncml:metinf"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 172
    const-string v17, "Next"

    invoke-virtual {v11}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 176
    .end local v2           #retAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v3           #retData:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v4           #retXmlItem:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v11           #xmlNext:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_7
    const-string v17, "MaxObjSize"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 177
    .local v9, xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v9, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setMaxObjectSize(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportMaxObjectSize(Z)V

    .line 184
    .end local v5           #xmlAnchor:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v9           #xmlMaxObjSize:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v10           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v13           #xmlSource:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v16           #xmlTarget:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_8
    const-string v17, "contacts"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/futuredial/syncml/Parameter;->getAppDBName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parameter;->getCurModel()I

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    const-string v17, "events"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/futuredial/syncml/Parameter;->getAppDBName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parameter;->getCurModel()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 187
    :cond_a
    const-string v17, "Data"

    const-string v18, "200"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    .line 194
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->statusList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->parameter:Lcom/futuredial/syncml/Parameter;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setAppStatus(I)V

    .line 201
    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 191
    :cond_c
    const-string v17, "Data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SrvParser;->alertStatus:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    goto :goto_1
.end method
