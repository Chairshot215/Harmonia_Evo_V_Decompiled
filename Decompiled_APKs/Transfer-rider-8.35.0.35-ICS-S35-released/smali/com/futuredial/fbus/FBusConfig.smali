.class public Lcom/futuredial/fbus/FBusConfig;
.super Ljava/lang/Object;
.source "FBusConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/fbus/FBusConfig$ConfigSMS;,
        Lcom/futuredial/fbus/FBusConfig$ConfigCal;,
        Lcom/futuredial/fbus/FBusConfig$ConfigPB;,
        Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;,
        Lcom/futuredial/fbus/FBusConfig$CfgPBField;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_NODE:S = 0x2s

.field public static final ELEMENT_NODE:S = 0x1s

.field public static final FIELDTYPE_GENERAL:S = 0x2s

.field public static final FIELDTYPE_NONE:S = 0x0s

.field public static final FIELDTYPE_NUM:S = 0x1s

.field public static final MODULE_CALENDAR:I = 0x1

.field public static final MODULE_PHONEBOOK:I = 0x0

.field public static final MODULE_SMS:I = 0x2


# instance fields
.field private m_objCfgCal:Lcom/futuredial/fbus/FBusConfig$ConfigCal;

.field private m_objCfgPB:Lcom/futuredial/fbus/FBusConfig$ConfigPB;

.field public m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/futuredial/fbus/FBusConfig$ConfigPB;

    invoke-direct {v0, p0}, Lcom/futuredial/fbus/FBusConfig$ConfigPB;-><init>(Lcom/futuredial/fbus/FBusConfig;)V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgPB:Lcom/futuredial/fbus/FBusConfig$ConfigPB;

    .line 36
    new-instance v0, Lcom/futuredial/fbus/FBusConfig$ConfigCal;

    invoke-direct {v0, p0}, Lcom/futuredial/fbus/FBusConfig$ConfigCal;-><init>(Lcom/futuredial/fbus/FBusConfig;)V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgCal:Lcom/futuredial/fbus/FBusConfig$ConfigCal;

    .line 37
    new-instance v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    invoke-direct {v0, p0}, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;-><init>(Lcom/futuredial/fbus/FBusConfig;)V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    .line 38
    return-void
.end method

.method private GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "node"
    .parameter "attributename"

    .prologue
    .line 650
    const-string v2, ""

    .line 652
    .local v2, sAttribute:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 653
    .local v1, nnmAttributes:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v1, :cond_0

    .line 655
    invoke-interface {v1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 656
    .local v0, ndAttr:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 658
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 662
    .end local v0           #ndAttr:Lorg/w3c/dom/Node;
    :cond_0
    return-object v2
.end method

.method static synthetic access$000(Lcom/futuredial/fbus/FBusConfig;Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/futuredial/fbus/FBusConfig;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GetCfgPBField(II)Lcom/futuredial/fbus/FBusConfig$CfgPBField;
    .locals 5
    .parameter "iFieldType"
    .parameter "iFieldTypeValue"

    .prologue
    .line 705
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgPB:Lcom/futuredial/fbus/FBusConfig$ConfigPB;

    #getter for: Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_arListFieldType:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->access$100(Lcom/futuredial/fbus/FBusConfig$ConfigPB;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, nCount:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 707
    iget-object v3, p0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgPB:Lcom/futuredial/fbus/FBusConfig$ConfigPB;

    #getter for: Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_arListFieldType:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->access$100(Lcom/futuredial/fbus/FBusConfig$ConfigPB;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;

    .line 708
    .local v0, fieldType:Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
    #getter for: Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_iFieldType:I
    invoke-static {v0}, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->access$400(Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 710
    #getter for: Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_hmFieldIDToCfg:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->access$500(Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/fbus/FBusConfig$CfgPBField;

    .line 713
    .end local v0           #fieldType:Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
    :goto_1
    return-object v3

    .line 705
    .restart local v0       #fieldType:Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    .end local v0           #fieldType:Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public GetFieldType(I)I
    .locals 9
    .parameter "iFieldTypeValue"

    .prologue
    .line 667
    const/4 v2, 0x0

    .line 668
    .local v2, iFieldType:I
    const-string v6, ""

    .line 669
    .local v6, strFieldType:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v7, p0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgPB:Lcom/futuredial/fbus/FBusConfig$ConfigPB;

    #getter for: Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_arListFieldType:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->access$100(Lcom/futuredial/fbus/FBusConfig$ConfigPB;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, nCount:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 671
    iget-object v7, p0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgPB:Lcom/futuredial/fbus/FBusConfig$ConfigPB;

    #getter for: Lcom/futuredial/fbus/FBusConfig$ConfigPB;->m_arListFieldType:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->access$100(Lcom/futuredial/fbus/FBusConfig$ConfigPB;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;

    .line 672
    .local v5, objPBFieldType:Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
    #getter for: Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csIDList:Ljava/lang/String;
    invoke-static {v5}, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->access$200(Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, arFieldTypeValue:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_0

    .line 675
    aget-object v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 677
    #getter for: Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->m_csName:Ljava/lang/String;
    invoke-static {v5}, Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;->access$300(Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;)Ljava/lang/String;

    move-result-object v6

    .line 681
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 687
    .end local v0           #arFieldTypeValue:[Ljava/lang/String;
    .end local v3           #j:I
    .end local v5           #objPBFieldType:Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
    :cond_1
    const-string v7, "number"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    .line 689
    const/4 v2, 0x1

    .line 700
    :goto_2
    return v2

    .line 673
    .restart local v0       #arFieldTypeValue:[Ljava/lang/String;
    .restart local v3       #j:I
    .restart local v5       #objPBFieldType:Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 669
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    .end local v0           #arFieldTypeValue:[Ljava/lang/String;
    .end local v3           #j:I
    .end local v5           #objPBFieldType:Lcom/futuredial/fbus/FBusConfig$CfgPBFieldType;
    :cond_4
    const-string v7, "general"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    .line 693
    const/4 v2, 0x2

    goto :goto_2

    .line 697
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public LoadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 24
    .parameter "context"
    .parameter "sPolicyComm"
    .parameter "sPolicyParser"
    .parameter "iModuleType"

    .prologue
    .line 396
    const/4 v3, 0x1

    .line 402
    .local v3, bRet:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 403
    .local v2, am:Landroid/content/res/AssetManager;
    const-string v21, "FBusConfig.xml"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 405
    .local v9, isxml:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 406
    .local v6, docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 407
    .local v5, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 410
    .local v4, doc:Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v20

    .line 411
    .local v20, root:Lorg/w3c/dom/Element;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 412
    .local v17, nlofFBus:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_a

    .line 414
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 415
    .local v14, ndofFBus:Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 412
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 429
    :cond_1
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "pb"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_4

    if-nez p4, :cond_4

    .line 431
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 432
    .local v18, nlofPB:Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, k:I
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    .line 434
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 435
    .local v15, ndofPB:Lorg/w3c/dom/Node;
    if-eqz v15, :cond_2

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 432
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 440
    :cond_3
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "group"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/futuredial/fbus/FBusConfig;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_2

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgPB:Lcom/futuredial/fbus/FBusConfig$ConfigPB;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/futuredial/fbus/FBusConfig$ConfigPB;->InitializeConfigPB(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 490
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8           #i:I
    .end local v9           #isxml:Ljava/io/InputStream;
    .end local v10           #k:I
    .end local v14           #ndofFBus:Lorg/w3c/dom/Node;
    .end local v15           #ndofPB:Lorg/w3c/dom/Node;
    .end local v17           #nlofFBus:Lorg/w3c/dom/NodeList;
    .end local v18           #nlofPB:Lorg/w3c/dom/NodeList;
    .end local v20           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 492
    .local v7, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v21, "FBusConfig::LoadConfig"

    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->getCause()Ljava/lang/Throwable;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v7           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    return v3

    .line 448
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8       #i:I
    .restart local v9       #isxml:Ljava/io/InputStream;
    .restart local v14       #ndofFBus:Lorg/w3c/dom/Node;
    .restart local v17       #nlofFBus:Lorg/w3c/dom/NodeList;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    :cond_4
    :try_start_1
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "cal"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_7

    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, p4

    if-ne v0, v1, :cond_7

    .line 450
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 451
    .local v16, nlofCal:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, m:I
    :goto_4
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_0

    .line 453
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 454
    .local v12, ndOfCal:Lorg/w3c/dom/Node;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 451
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 459
    :cond_6
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "group"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/futuredial/fbus/FBusConfig;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_5

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgCal:Lcom/futuredial/fbus/FBusConfig$ConfigCal;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/futuredial/fbus/FBusConfig$ConfigCal;->InitializeConfigCal(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 494
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8           #i:I
    .end local v9           #isxml:Ljava/io/InputStream;
    .end local v11           #m:I
    .end local v12           #ndOfCal:Lorg/w3c/dom/Node;
    .end local v14           #ndofFBus:Lorg/w3c/dom/Node;
    .end local v16           #nlofCal:Lorg/w3c/dom/NodeList;
    .end local v17           #nlofFBus:Lorg/w3c/dom/NodeList;
    .end local v20           #root:Lorg/w3c/dom/Element;
    :catch_1
    move-exception v7

    .line 496
    .local v7, e:Lorg/xml/sax/SAXException;
    const-string v21, "FBusConfig::LoadConfig"

    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->getCause()Ljava/lang/Throwable;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 467
    .end local v7           #e:Lorg/xml/sax/SAXException;
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8       #i:I
    .restart local v9       #isxml:Ljava/io/InputStream;
    .restart local v14       #ndofFBus:Lorg/w3c/dom/Node;
    .restart local v17       #nlofFBus:Lorg/w3c/dom/NodeList;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    :cond_7
    :try_start_2
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "sms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    const/16 v21, 0x2

    move/from16 v0, v21

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    .line 469
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 470
    .local v19, nlofSMS:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .restart local v11       #m:I
    :goto_5
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_0

    .line 472
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 473
    .local v13, ndOfSMS:Lorg/w3c/dom/Node;
    if-eqz v13, :cond_8

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 470
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 478
    :cond_9
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "group"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/futuredial/fbus/FBusConfig;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_8

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/fbus/FBusConfig;->m_objCfgSMS:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->InitializeConfigSMS(Lorg/w3c/dom/Node;)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 498
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8           #i:I
    .end local v9           #isxml:Ljava/io/InputStream;
    .end local v11           #m:I
    .end local v13           #ndOfSMS:Lorg/w3c/dom/Node;
    .end local v14           #ndofFBus:Lorg/w3c/dom/Node;
    .end local v17           #nlofFBus:Lorg/w3c/dom/NodeList;
    .end local v19           #nlofSMS:Lorg/w3c/dom/NodeList;
    .end local v20           #root:Lorg/w3c/dom/Element;
    :catch_2
    move-exception v7

    .line 500
    .local v7, e:Ljava/io/IOException;
    const-string v21, "FBusConfig::LoadConfig"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 488
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8       #i:I
    .restart local v9       #isxml:Ljava/io/InputStream;
    .restart local v17       #nlofFBus:Lorg/w3c/dom/NodeList;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    :cond_a
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3
.end method
