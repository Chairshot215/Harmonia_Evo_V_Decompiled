.class public Lcom/futuredial/syncml/SyncML_SNE;
.super Lcom/futuredial/syncml/SyncML_NOK;
.source "SyncML_SNE.java"


# instance fields
.field protected IsSNE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/futuredial/syncml/SyncML_NOK;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_SNE;->IsSNE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSyncmlResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/syncml/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parser;->getItemStorage()Lcom/futuredial/syncml/ItemStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuredial/syncml/ItemStorage;->getInItemArray()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setPolicy(Ljava/lang/String;)Z
    .locals 19
    .parameter "policy"

    .prologue
    .line 26
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->policy:Ljava/lang/String;

    .line 30
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->activity:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 31
    .local v16, theRes:Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 32
    .local v2, am:Landroid/content/res/AssetManager;
    const-string v17, "syncml.config.xml"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 34
    .local v10, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 35
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 36
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 37
    .local v6, dom:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 39
    .local v14, root:Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/futuredial/wbxml/ConvertXML;->getXMLChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 40
    .local v13, policyNode:Lorg/w3c/dom/Node;
    if-nez v13, :cond_0

    .line 42
    const/16 v17, 0x0

    .line 175
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v13           #policyNode:Lorg/w3c/dom/Node;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .end local v16           #theRes:Landroid/content/res/Resources;
    :goto_0
    return v17

    .line 45
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v3       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #dom:Lorg/w3c/dom/Document;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v13       #policyNode:Lorg/w3c/dom/Node;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    .restart local v16       #theRes:Landroid/content/res/Resources;
    :cond_0
    check-cast v13, Lorg/w3c/dom/Element;

    .end local v13           #policyNode:Lorg/w3c/dom/Node;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;

    move-result-object v4

    .line 46
    .local v4, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    if-nez v4, :cond_1

    .line 48
    const/16 v17, 0x0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, nCount:I
    :goto_1
    if-ge v9, v11, :cond_1a

    .line 53
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    .line 54
    .local v5, cn:Lorg/w3c/dom/Node;
    if-nez v5, :cond_3

    .line 51
    .end local v5           #cn:Lorg/w3c/dom/Node;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 58
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_3
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .line 59
    .local v15, strNodeName:Ljava/lang/String;
    const-string v17, "category"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_4

    .line 61
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->category:Ljava/lang/String;

    goto :goto_2

    .line 171
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #i:I
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #nCount:I
    .end local v14           #root:Lorg/w3c/dom/Element;
    .end local v15           #strNodeName:Ljava/lang/String;
    .end local v16           #theRes:Landroid/content/res/Resources;
    :catch_0
    move-exception v7

    .line 173
    .local v7, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_0

    .line 63
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v3       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    .restart local v6       #dom:Lorg/w3c/dom/Document;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9       #i:I
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v11       #nCount:I
    .restart local v14       #root:Lorg/w3c/dom/Element;
    .restart local v15       #strNodeName:Ljava/lang/String;
    .restart local v16       #theRes:Landroid/content/res/Resources;
    :cond_4
    const-string v17, "version"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_5

    .line 65
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->version:Ljava/lang/String;

    goto :goto_2

    .line 67
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_5
    const-string v17, "not_support_more_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_6

    .line 69
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->support_more_data:Z

    goto :goto_2

    .line 71
    :cond_6
    const-string v17, "not_support_number_of_change"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_7

    .line 73
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->support_number_of_change:Z

    goto :goto_2

    .line 75
    :cond_7
    const-string v17, "not_support_max_pkg_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_8

    .line 77
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->support_max_pkg_size:Z

    goto :goto_2

    .line 79
    :cond_8
    const-string v17, "not_support_max_obj_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_9

    .line 81
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->support_max_obj_size:Z

    goto/16 :goto_2

    .line 83
    :cond_9
    const-string v17, "max_pkg_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_a

    .line 85
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->max_pkg_size:I

    goto/16 :goto_2

    .line 87
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_a
    const-string v17, "max_obj_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_b

    .line 89
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->max_obj_size:I

    goto/16 :goto_2

    .line 91
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_b
    const-string v17, "content"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_c

    .line 93
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->content:Ljava/lang/String;

    goto/16 :goto_2

    .line 95
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_c
    const-string v17, "syncml_server_object"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_d

    .line 97
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, object:Ljava/lang/String;
    invoke-static {v12}, Lcom/futuredial/wbxml/ConvertXML;->binHex2byte(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->syncml_server_object:[B

    goto/16 :goto_2

    .line 100
    .end local v12           #object:Ljava/lang/String;
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_d
    const-string v17, "sync_ml_guid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_e

    .line 102
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->sync_ml_guid:Ljava/lang/String;

    goto/16 :goto_2

    .line 104
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_e
    const-string v17, "sync_ml_channel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_f

    .line 106
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->sync_ml_channel:I

    goto/16 :goto_2

    .line 108
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_f
    const-string v17, "max_obex_pkg_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_10

    .line 110
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->max_obex_pkg_size:I

    goto/16 :goto_2

    .line 112
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_10
    const-string v17, "obex_connect_target"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_11

    .line 114
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->obex_connect_target:Ljava/lang/String;

    goto/16 :goto_2

    .line 116
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_11
    const-string v17, "obex_select_service_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_12

    .line 118
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->obex_select_service_type:Ljava/lang/String;

    goto/16 :goto_2

    .line 120
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_12
    const-string v17, "obex_content_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_13

    .line 122
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->obex_content_type:Ljava/lang/String;

    goto/16 :goto_2

    .line 124
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_13
    const-string v17, "alert_status"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_14

    .line 126
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->alert_status:Ljava/lang/String;

    goto/16 :goto_2

    .line 128
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_14
    const-string v17, "include_ctcap"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_15

    .line 130
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->include_ctcap:Z

    goto/16 :goto_2

    .line 132
    :cond_15
    const-string v17, "pcsuite_who"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_16

    .line 134
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->pcsuite_who:Ljava/lang/String;

    goto/16 :goto_2

    .line 136
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_16
    const-string v17, "pcsuite_target"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_17

    .line 138
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v12

    .line 139
    .restart local v12       #object:Ljava/lang/String;
    invoke-static {v12}, Lcom/futuredial/wbxml/ConvertXML;->binHex2byte(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->pcsuite_target:[B

    goto/16 :goto_2

    .line 141
    .end local v12           #object:Ljava/lang/String;
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_17
    const-string v17, "pcsuite_capability_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_18

    .line 143
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->pcsuite_capability_type:Ljava/lang/String;

    goto/16 :goto_2

    .line 145
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_18
    const-string v17, "syncml_format"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_19

    .line 147
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->syncml_format:Ljava/lang/String;

    goto/16 :goto_2

    .line 149
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_19
    const-string v17, "IsSNE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_2

    .line 151
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_SNE;->IsSNE:Ljava/lang/String;

    goto/16 :goto_2

    .line 155
    .end local v15           #strNodeName:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->include_ctcap:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parser;->setIncludeCTCap(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->alert_status:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parser;->setAlertStatus(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->support_more_data:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportMoreData(Z)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->support_number_of_change:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportNumberOfChange(Z)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->max_pkg_size:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setMaxMessageSize(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->max_obj_size:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setMaxObjectSize(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->content:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setContentType(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->support_max_pkg_size:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportMaxMessageSize(Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->support_max_obj_size:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportMaxObjectSize(Z)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->IsSNE:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setIsSNE(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->max_obex_pkg_size:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/obex/OBEX_CON_PKG;->setMaxPkgSizeForce(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/obex/OBEX_CON_PKG;->setVersion(B)V

    .line 169
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/16 v17, 0x1

    goto/16 :goto_0
.end method
