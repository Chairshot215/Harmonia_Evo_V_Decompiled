.class public Lcom/futuredial/atengine/CATEngine;
.super Ljava/lang/Object;
.source "CATEngine.java"


# instance fields
.field m_MuliProc:Lcom/futuredial/atparser/CRecsProcContext;

.field m_Spliter:Lcom/futuredial/atparser/CSplitProcContext;

.field m_app:Landroid/content/Context;

.field m_atSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_bMergeContactsByName:Ljava/lang/Boolean;

.field m_cfgRoot:Lorg/w3c/dom/Node;

.field m_combine1Record:Ljava/lang/String;

.field m_combineNodes:Lorg/w3c/dom/NodeList;

.field m_entryRegex:Ljava/lang/String;

.field m_innerVals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_skipSliceCondition:Ljava/lang/String;

.field m_skipSlicePos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m_smartFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field xpath:Ljavax/xml/xpath/XPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    .line 40
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/atengine/CATEngine;->xpath:Ljavax/xml/xpath/XPath;

    .line 41
    iput-object v1, p0, Lcom/futuredial/atengine/CATEngine;->m_app:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atengine/CATEngine;->m_entryRegex:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/futuredial/atengine/CATEngine;->m_Spliter:Lcom/futuredial/atparser/CSplitProcContext;

    .line 44
    iput-object v1, p0, Lcom/futuredial/atengine/CATEngine;->m_MuliProc:Lcom/futuredial/atparser/CRecsProcContext;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atengine/CATEngine;->m_atSlices:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atengine/CATEngine;->m_innerVals:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atengine/CATEngine;->m_skipSlicePos:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/futuredial/atengine/CATEngine;->m_skipSliceCondition:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/futuredial/atengine/CATEngine;->m_combine1Record:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/atengine/CATEngine;->m_bMergeContactsByName:Ljava/lang/Boolean;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atengine/CATEngine;->m_smartFields:Ljava/util/HashMap;

    .line 178
    iput-object v1, p0, Lcom/futuredial/atengine/CATEngine;->m_combineNodes:Lorg/w3c/dom/NodeList;

    .line 60
    iput-object p1, p0, Lcom/futuredial/atengine/CATEngine;->m_app:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 1
    .parameter "iaUnCompleted"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/futuredial/atengine/CATEngine;->m_MuliProc:Lcom/futuredial/atparser/CRecsProcContext;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/futuredial/atengine/CATEngine;->m_MuliProc:Lcom/futuredial/atparser/CRecsProcContext;

    invoke-virtual {v0, p1}, Lcom/futuredial/atparser/CRecsProcContext;->proc_records(Lcom/futuredial/publicobj/ItemArray;)Z

    .line 266
    :cond_0
    return-void
.end method

.method check_limit(Lorg/w3c/dom/Node;)Ljava/lang/Boolean;
    .locals 13
    .parameter "pFieldNode"

    .prologue
    const/4 v12, 0x0

    .line 390
    new-instance v9, Ljava/lang/Boolean;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    .line 391
    .local v9, result:Ljava/lang/Boolean;
    const/4 v8, 0x0

    .line 392
    .local v8, pLimitDespNodes:Lorg/w3c/dom/NodeList;
    const-string v10, "Limit"

    invoke-static {p1, v10}, Lcom/futuredial/config/XMLConfiguration;->getChildsByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 394
    iget-object v10, p0, Lcom/futuredial/atengine/CATEngine;->m_atSlices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 395
    .local v6, nstSize:I
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 396
    .local v4, ldnSize:I
    const/4 v2, 0x0

    .local v2, i:I
    move v5, v4

    .local v5, nCount:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 398
    invoke-interface {v8, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .local v7, pLimitDespNode:Lorg/w3c/dom/Node;
    move-object v1, v7

    .line 400
    check-cast v1, Lorg/w3c/dom/Element;

    .line 401
    .local v1, e:Lorg/w3c/dom/Element;
    const-string v10, "ATIndex"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, attrValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    :cond_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 412
    .end local v0           #attrValue:Ljava/lang/String;
    .end local v1           #e:Lorg/w3c/dom/Element;
    .end local v7           #pLimitDespNode:Lorg/w3c/dom/Node;
    .end local v9           #result:Ljava/lang/Boolean;
    :cond_1
    return-object v9

    .line 403
    .restart local v0       #attrValue:Ljava/lang/String;
    .restart local v1       #e:Lorg/w3c/dom/Element;
    .restart local v7       #pLimitDespNode:Lorg/w3c/dom/Node;
    .restart local v9       #result:Ljava/lang/Boolean;
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 405
    .local v3, iATIndex:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v10, v6, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_3

    iget-object v10, p0, Lcom/futuredial/atengine/CATEngine;->m_atSlices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 409
    :cond_3
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 396
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method eat_xml()Z
    .locals 14

    .prologue
    .line 183
    :try_start_0
    iget-object v10, p0, Lcom/futuredial/atengine/CATEngine;->xpath:Ljavax/xml/xpath/XPath;

    const-string v11, "Fields/Field"

    iget-object v12, p0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v11, v12, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/NodeList;

    .line 184
    .local v5, fieldNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 185
    .local v9, size:I
    const/4 v6, 0x0

    .local v6, i:I
    move v7, v9

    .local v7, nCount:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 187
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 188
    .local v4, fieldNode:Lorg/w3c/dom/Node;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    .line 189
    .local v2, e:Lorg/w3c/dom/Element;
    const-string v10, "ATIndex"

    invoke-interface {v2, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 191
    const-string v10, "ATIndex"

    invoke-interface {v2, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 192
    .local v1, atIndex:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/futuredial/atengine/CATEngine;->m_smartFields:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 194
    iget-object v10, p0, Lcom/futuredial/atengine/CATEngine;->m_smartFields:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v1           #atIndex:Ljava/lang/Integer;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 198
    .restart local v1       #atIndex:Ljava/lang/Integer;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v8, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v10, p0, Lcom/futuredial/atengine/CATEngine;->m_smartFields:Ljava/util/HashMap;

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    .end local v1           #atIndex:Ljava/lang/Integer;
    .end local v2           #e:Lorg/w3c/dom/Element;
    .end local v4           #fieldNode:Lorg/w3c/dom/Node;
    .end local v5           #fieldNodes:Lorg/w3c/dom/NodeList;
    .end local v6           #i:I
    .end local v7           #nCount:I
    .end local v8           #nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v9           #size:I
    :catch_0
    move-exception v3

    .line 210
    .local v3, e1:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v3}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 212
    const/4 v10, 0x0

    .line 215
    .end local v3           #e1:Ljavax/xml/xpath/XPathExpressionException;
    :goto_2
    return v10

    .line 206
    .restart local v5       #fieldNodes:Lorg/w3c/dom/NodeList;
    .restart local v6       #i:I
    .restart local v7       #nCount:I
    .restart local v9       #size:I
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/futuredial/atengine/CATEngine;->xpath:Ljavax/xml/xpath/XPath;

    const-string v11, "Fields/CombineField"

    iget-object v12, p0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v11, v12, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/NodeList;

    iput-object v10, p0, Lcom/futuredial/atengine/CATEngine;->m_combineNodes:Lorg/w3c/dom/NodeList;
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    const/4 v10, 0x1

    goto :goto_2
.end method

.method get_combine_arg(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 5
    .parameter "InnerNodes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 482
    .local p2, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 484
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 485
    .local v2, inSize:I
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v2

    .local v3, nCount:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 487
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 488
    .local v1, iInnerID:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/futuredial/atengine/CATEngine;->m_innerVals:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 493
    .end local v1           #iInnerID:Ljava/lang/Integer;
    :goto_1
    return-object v4

    .line 491
    .restart local v1       #iInnerID:Ljava/lang/Integer;
    :cond_0
    iget-object v4, p0, Lcom/futuredial/atengine/CATEngine;->m_innerVals:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    .end local v1           #iInnerID:Ljava/lang/Integer;
    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method public get_policy_xml(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .parameter "phoneID"

    .prologue
    .line 65
    const-string v4, "at engine"

    const-string v5, "get_policy_xml()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v4, p0, Lcom/futuredial/atengine/CATEngine;->m_app:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 69
    .local v0, am:Landroid/content/res/AssetManager;
    :try_start_0
    const-string v4, "AtEngine.xml"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 70
    .local v3, phoneTipsXml:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 71
    .local v1, doc:Lorg/w3c/dom/Document;
    iget-object v4, p0, Lcom/futuredial/atengine/CATEngine;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/Config/Policy[@key=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\']"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v4, v5, v1, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    iput-object v4, p0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    .line 72
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v3           #phoneTipsXml:Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 74
    :catch_0
    move-exception v2

    .line 76
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public pre_proc()Ljava/lang/Boolean;
    .locals 16

    .prologue
    const/4 v12, 0x0

    .line 100
    const-string v11, "at engine"

    const-string v13, "pre_proc()"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v8, ""

    .line 102
    .local v8, strSpliterName:Ljava/lang/String;
    const-string v9, ""

    .line 105
    .local v9, strSpliterPara:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    const-string v13, "EntryRegEx"

    invoke-static {v11, v13}, Lcom/futuredial/config/XMLConfiguration;->getSingleChildByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_entryRegex:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    const-string v13, "ParseSolution/SolutionName"

    invoke-static {v11, v13}, Lcom/futuredial/config/XMLConfiguration;->getSingleChildByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 108
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    const-string v13, "ParseSolution/SolutionParameter"

    invoke-static {v11, v13}, Lcom/futuredial/config/XMLConfiguration;->getSingleChildByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 114
    new-instance v11, Lcom/futuredial/atparser/CSplitProcContext;

    invoke-direct {v11, v8, v9}, Lcom/futuredial/atparser/CSplitProcContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_Spliter:Lcom/futuredial/atparser/CSplitProcContext;

    .line 115
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_Spliter:Lcom/futuredial/atparser/CSplitProcContext;

    if-nez v11, :cond_0

    .line 117
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 173
    :goto_0
    return-object v11

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_0

    .line 122
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/futuredial/atengine/CATEngine;->xpath:Ljavax/xml/xpath/XPath;

    const-string v13, "RecordsProcSolution"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v11, v13, v14, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Node;

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, strRecordsProcName:Ljava/lang/String;
    new-instance v11, Lcom/futuredial/atparser/CRecsProcContext;

    invoke-direct {v11, v6}, Lcom/futuredial/atparser/CRecsProcContext;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_MuliProc:Lcom/futuredial/atparser/CRecsProcContext;
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 134
    .end local v6           #strRecordsProcName:Ljava/lang/String;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/futuredial/atengine/CATEngine;->xpath:Ljavax/xml/xpath/XPath;

    const-string v13, "Skip"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v11, v13, v14, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 135
    .local v4, nodeSkipDesp:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_3

    .line 138
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, strSkipSlicesPos:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 142
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, t:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v11, v10

    if-ge v3, v11, :cond_1

    .line 144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_skipSlicePos:Ljava/util/ArrayList;

    aget-object v13, v10, v3

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 124
    .end local v3           #i:I
    .end local v4           #nodeSkipDesp:Lorg/w3c/dom/Node;
    .end local v7           #strSkipSlicesPos:Ljava/lang/String;
    .end local v10           #t:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 126
    .local v2, e1:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v2}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 127
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_0

    .line 147
    .end local v2           #e1:Ljavax/xml/xpath/XPathExpressionException;
    .restart local v4       #nodeSkipDesp:Lorg/w3c/dom/Node;
    .restart local v7       #strSkipSlicesPos:Ljava/lang/String;
    :cond_1
    :try_start_3
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    .line 148
    .local v1, e:Lorg/w3c/dom/Element;
    const-string v11, "condition"

    invoke-interface {v1, v11}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 149
    const-string v11, "condition"

    invoke-interface {v1, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_skipSliceCondition:Ljava/lang/String;

    .line 150
    :cond_2
    const-string v11, "at engine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "slices:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/atengine/CATEngine;->m_skipSlicePos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " condition:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/atengine/CATEngine;->m_skipSliceCondition:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 163
    .end local v1           #e:Lorg/w3c/dom/Element;
    .end local v4           #nodeSkipDesp:Lorg/w3c/dom/Node;
    .end local v7           #strSkipSlicesPos:Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/futuredial/atengine/CATEngine;->xpath:Ljavax/xml/xpath/XPath;

    const-string v13, "MergeContactsByName"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/atengine/CATEngine;->m_cfgRoot:Lorg/w3c/dom/Node;

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v11, v13, v14, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Node;

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, strMergeContactsByName:Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_bMergeContactsByName:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 173
    .end local v5           #strMergeContactsByName:Ljava/lang/String;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/atengine/CATEngine;->eat_xml()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto/16 :goto_0

    .line 153
    :catch_2
    move-exception v2

    .line 155
    .restart local v2       #e1:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v2}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 156
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto/16 :goto_0

    .end local v2           #e1:Ljavax/xml/xpath/XPathExpressionException;
    .restart local v5       #strMergeContactsByName:Ljava/lang/String;
    :cond_4
    move v11, v12

    .line 164
    goto :goto_4

    .line 166
    .end local v5           #strMergeContactsByName:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 168
    .restart local v2       #e1:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v2}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 169
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto/16 :goto_0

    .line 170
    .end local v2           #e1:Ljavax/xml/xpath/XPathExpressionException;
    :catch_4
    move-exception v1

    .line 171
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/futuredial/atengine/CATEngine;->m_bMergeContactsByName:Ljava/lang/Boolean;

    goto :goto_5

    .line 157
    .end local v1           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v11

    goto :goto_3

    .line 128
    :catch_6
    move-exception v11

    goto/16 :goto_1
.end method

.method public proc_at_data(I[BLjava/lang/Integer;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)Ljava/lang/Boolean;
    .locals 13
    .parameter "contentType"
    .parameter "datastream"
    .parameter "dataSize"
    .parameter "iaCompleteItem"
    .parameter "iaUnCompletedItem"

    .prologue
    .line 220
    const-string v8, "at engine"

    const-string v9, "proc_at_data()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 223
    .local v6, result:Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 226
    .local v1, data:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/futuredial/atengine/CATEngine;->m_entryRegex:Ljava/lang/String;

    invoke-static {v1, v8, v2}, Lcom/futuredial/atengine/CRegexHelper;->match_single_group_loop(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 228
    new-instance v7, Lcom/futuredial/publicobj/ItemArray;

    invoke-direct {v7}, Lcom/futuredial/publicobj/ItemArray;-><init>()V

    .line 230
    .local v7, tempItemArray:Lcom/futuredial/publicobj/ItemArray;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, nCount:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 232
    new-instance v5, Lcom/futuredial/publicobj/Item;

    invoke-direct {v5}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 233
    .local v5, oneRecord:Lcom/futuredial/publicobj/Item;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8, v5, v3}, Lcom/futuredial/atengine/CATEngine;->proc_entry(Ljava/lang/String;Lcom/futuredial/publicobj/Item;I)Ljava/lang/Boolean;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 257
    .end local v5           #oneRecord:Lcom/futuredial/publicobj/Item;
    :goto_1
    return-object v8

    .line 235
    .restart local v5       #oneRecord:Lcom/futuredial/publicobj/Item;
    :cond_0
    invoke-virtual {v5}, Lcom/futuredial/publicobj/Item;->GetFieldCount()I

    move-result v8

    if-eqz v8, :cond_1

    .line 237
    const-string v8, "at engine"

    const-string v9, "field count:%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/futuredial/publicobj/Item;->GetFieldCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v7, v5}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 230
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v5           #oneRecord:Lcom/futuredial/publicobj/Item;
    :cond_2
    iget-object v8, p0, Lcom/futuredial/atengine/CATEngine;->m_bMergeContactsByName:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    iget-object v8, v7, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Ljava/util/ArrayList;)Z

    .line 256
    :goto_2
    const-string v8, "at engine"

    const-string v9, "proc_at_data() ... finish"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    .line 249
    :cond_3
    iget-object v8, p0, Lcom/futuredial/atengine/CATEngine;->m_MuliProc:Lcom/futuredial/atparser/CRecsProcContext;

    if-eqz v8, :cond_4

    .line 251
    iget-object v8, p0, Lcom/futuredial/atengine/CATEngine;->m_MuliProc:Lcom/futuredial/atparser/CRecsProcContext;

    invoke-virtual {v8, v7}, Lcom/futuredial/atparser/CRecsProcContext;->proc_records(Lcom/futuredial/publicobj/ItemArray;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 253
    :cond_4
    iget-object v8, v7, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Ljava/util/ArrayList;)Z

    goto :goto_2
.end method

.method proc_entry(Ljava/lang/String;Lcom/futuredial/publicobj/Item;I)Ljava/lang/Boolean;
    .locals 29
    .parameter "data"
    .parameter "entryFields"
    .parameter "iEntryIndex"

    .prologue
    .line 273
    const-string v25, "at engine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "proc_entry(); data : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_Spliter:Lcom/futuredial/atparser/CSplitProcContext;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 386
    :goto_0
    return-object v25

    .line 276
    :cond_0
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .local v23, sb:Ljava/lang/StringBuffer;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_atSlices:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_innerVals:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->clear()V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_Spliter:Lcom/futuredial/atparser/CSplitProcContext;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_atSlices:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/atparser/CSplitProcContext;->split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_atSlices:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-nez v25, :cond_1

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    goto :goto_0

    .line 287
    :cond_1
    const/4 v6, 0x0

    .local v6, atindex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_atSlices:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .local v18, nCount:I
    :goto_1
    move/from16 v0, v18

    if-ge v6, v0, :cond_7

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_skipSlicePos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    add-int/lit8 v26, v6, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v25

    if-ltz v25, :cond_3

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_skipSliceCondition:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_atSlices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/futuredial/atparser/conditionCheck;->check(Ljava/lang/String;Ljava/util/ArrayList;I)Z

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 294
    const-string v25, "at engine"

    const-string v26, "skip some position because of bored repeat"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 303
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_smartFields:Ljava/util/HashMap;

    move-object/from16 v25, v0

    add-int/lit8 v26, v6, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 304
    .local v5, atDespNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    if-eqz v5, :cond_2

    .line 308
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, nLen:I
    :goto_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_2

    .line 310
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Node;

    .line 312
    .local v9, despNode:Lorg/w3c/dom/Node;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/futuredial/atengine/CATEngine;->check_limit(Lorg/w3c/dom/Node;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 314
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 316
    .local v4, IDValue:Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v21, properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_atSlices:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Lcom/futuredial/atengine/CATEngine;->proc_value(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .local v8, content:Ljava/lang/String;
    move-object v10, v9

    .line 318
    check-cast v10, Lorg/w3c/dom/Element;

    .line 319
    .local v10, e:Lorg/w3c/dom/Element;
    const-string v25, "ExeID"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v25

    if-eqz v25, :cond_5

    .line 321
    new-instance v20, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v20 .. v20}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 323
    .local v20, oneField:Lcom/futuredial/publicobj/Field;
    const-string v25, "ExeID"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 325
    .local v15, iExeID:Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 326
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    .line 329
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-eqz v25, :cond_5

    .line 331
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/atengine/CATEngine;->prtOneField(Lcom/futuredial/publicobj/Field;)V

    .line 332
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 335
    .end local v15           #iExeID:Ljava/lang/Integer;
    .end local v20           #oneField:Lcom/futuredial/publicobj/Field;
    :cond_5
    const-string v25, "InnerID"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v25

    if-eqz v25, :cond_2

    .line 337
    const-string v25, "InnerID"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 339
    .local v17, iInnerID:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_innerVals:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v25, "at engine"

    const-string v26, "InnerID[ %d ] =  %s"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v17, v27, v28

    const/16 v28, 0x1

    aput-object v8, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 308
    .end local v4           #IDValue:Ljava/lang/String;
    .end local v8           #content:Ljava/lang/String;
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v17           #iInnerID:Ljava/lang/Integer;
    .end local v21           #properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 348
    .end local v5           #atDespNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v9           #despNode:Lorg/w3c/dom/Node;
    .end local v14           #i:I
    .end local v19           #nLen:I
    :cond_7
    :try_start_0
    const-string v25, "at engine"

    const-string v26, "start proc combine fields"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_combineNodes:Lorg/w3c/dom/NodeList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    .line 350
    .local v7, cnsize:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    move/from16 v18, v7

    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_b

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atengine/CATEngine;->m_combineNodes:Lorg/w3c/dom/NodeList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 354
    .local v3, CombineDespNode:Lorg/w3c/dom/Node;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/futuredial/atengine/CATEngine;->check_limit(Lorg/w3c/dom/Node;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 356
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v22, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/atparser/FieldValue;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/futuredial/atengine/CATEngine;->proctype_combine_value(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    .line 360
    const-string v25, "Result/ExeID"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/futuredial/config/XMLConfiguration;->getChildsByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 361
    .local v12, exeIDNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_a

    .line 363
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 364
    .local v13, exeidsize:I
    const/16 v16, 0x0

    .local v16, iIDLoop:I
    move/from16 v19, v13

    .restart local v19       #nLen:I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 366
    new-instance v20, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v20 .. v20}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 367
    .restart local v20       #oneField:Lcom/futuredial/publicobj/Field;
    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 369
    .local v11, exeIDNode:Lorg/w3c/dom/Node;
    new-instance v24, Ljava/lang/String;

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 370
    .local v24, strExeID:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/futuredial/atparser/FieldValue;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 371
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/futuredial/atparser/FieldValue;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    .line 372
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_8

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-eqz v25, :cond_9

    .line 374
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 375
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/atengine/CATEngine;->prtOneField(Lcom/futuredial/publicobj/Field;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 350
    .end local v11           #exeIDNode:Lorg/w3c/dom/Node;
    .end local v12           #exeIDNodes:Lorg/w3c/dom/NodeList;
    .end local v13           #exeidsize:I
    .end local v16           #iIDLoop:I
    .end local v19           #nLen:I
    .end local v20           #oneField:Lcom/futuredial/publicobj/Field;
    .end local v22           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/atparser/FieldValue;>;"
    .end local v24           #strExeID:Ljava/lang/String;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 381
    .end local v3           #CombineDespNode:Lorg/w3c/dom/Node;
    .end local v7           #cnsize:I
    .end local v14           #i:I
    :catch_0
    move-exception v10

    .line 383
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    goto/16 :goto_0

    .line 386
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #cnsize:I
    .restart local v14       #i:I
    :cond_b
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    goto/16 :goto_0
.end method

.method proc_value(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 11
    .parameter "pDespNode"
    .parameter "atSliceData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v10, 0x1

    .line 417
    const/4 v4, 0x0

    .line 419
    .local v4, pContentDespNode:Lorg/w3c/dom/Node;
    const-string v8, "Content"

    invoke-static {p1, v8}, Lcom/futuredial/config/XMLConfiguration;->getChildsByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 420
    .local v0, contentDespNodes:Lorg/w3c/dom/NodeList;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 421
    .local v3, final_result:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-nez v8, :cond_1

    .line 451
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 424
    .restart local p2
    :cond_1
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    .line 426
    check-cast v2, Lorg/w3c/dom/Element;

    .line 428
    .local v2, e:Lorg/w3c/dom/Element;
    const-string v8, "InColon"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 430
    const-string v8, "InColon"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, val:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 432
    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-ne v10, v8, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 433
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 436
    .end local v7           #val:Ljava/lang/String;
    :cond_2
    const-string v8, "Encode"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 438
    const-string v8, "Encode"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, decodeType:Ljava/lang/String;
    new-instance v8, Lcom/futuredial/atparser/DecodeUtils;

    invoke-direct {v8}, Lcom/futuredial/atparser/DecodeUtils;-><init>()V

    invoke-virtual {v8, v1, v3}, Lcom/futuredial/atparser/DecodeUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 442
    .end local v1           #decodeType:Ljava/lang/String;
    :cond_3
    const-string v8, "ProcType"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 444
    const-string v8, "ProcType"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, procType:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 446
    .local v6, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    invoke-virtual {p0, v5, v6, p3}, Lcom/futuredial/atengine/CATEngine;->proctype_single_value(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    .line 448
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v5           #procType:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_4
    move-object p2, v3

    .line 451
    goto :goto_0
.end method

.method proctype_combine_value(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 7
    .parameter "CombineDespNode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/atparser/FieldValue;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 462
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/atparser/FieldValue;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .local v5, result:Ljava/lang/Boolean;
    move-object v2, p1

    .line 463
    check-cast v2, Lorg/w3c/dom/Element;

    .line 464
    .local v2, e:Lorg/w3c/dom/Element;
    const-string v6, "ProcType"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 466
    const-string v6, "ProcType"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, procType:Ljava/lang/String;
    const-string v6, "InnerID"

    invoke-static {p1, v6}, Lcom/futuredial/config/XMLConfiguration;->getChildsByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 471
    .local v0, InnerIDNodes:Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lcom/futuredial/atengine/CATEngine;->get_combine_arg(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    .line 475
    new-instance v3, Lcom/futuredial/atparser/CCombineProcContext;

    invoke-direct {v3, v4}, Lcom/futuredial/atparser/CCombineProcContext;-><init>(Ljava/lang/String;)V

    .line 476
    .local v3, proc:Lcom/futuredial/atparser/CCombineProcContext;
    invoke-virtual {v3, v1, p2}, Lcom/futuredial/atparser/CCombineProcContext;->get_results(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 478
    .end local v0           #InnerIDNodes:Lorg/w3c/dom/NodeList;
    .end local v1           #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #proc:Lcom/futuredial/atparser/CCombineProcContext;
    .end local v4           #procType:Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method proctype_single_value(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 2
    .parameter "procType"
    .parameter "val"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 455
    .local p3, properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    new-instance v0, Lcom/futuredial/atparser/CProcContext;

    invoke-direct {v0, p1}, Lcom/futuredial/atparser/CProcContext;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, proc:Lcom/futuredial/atparser/CProcContext;
    invoke-virtual {v0, p2}, Lcom/futuredial/atparser/CProcContext;->get_result(Ljava/lang/StringBuffer;)Z

    .line 457
    invoke-virtual {v0}, Lcom/futuredial/atparser/CProcContext;->get_properties()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 458
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method prtOneField(Lcom/futuredial/publicobj/Field;)V
    .locals 13
    .parameter "oneField"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 83
    sget-boolean v6, Lcom/futuredial/config/Logger;->ENABLE_REPORT:Z

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, p1, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    .local v1, id:I
    iget-object v5, p1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 87
    .local v5, val:Ljava/lang/String;
    const-string v6, "at engine"

    const-string v7, "**exe %d - > %s"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p1, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 91
    iget-object v6, p1, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/publicobj/Field;

    .line 92
    .local v3, property:Lcom/futuredial/publicobj/Field;
    iget-object v6, v3, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 93
    .local v2, pid:I
    iget-object v4, v3, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 94
    .local v4, pval:Ljava/lang/String;
    const-string v6, "at engine"

    const-string v7, "\tproperty:**exe %d - > %s"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object v4, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0           #i:I
    .end local v1           #id:I
    .end local v2           #pid:I
    .end local v3           #property:Lcom/futuredial/publicobj/Field;
    .end local v4           #pval:Ljava/lang/String;
    .end local v5           #val:Ljava/lang/String;
    :cond_0
    return-void
.end method
