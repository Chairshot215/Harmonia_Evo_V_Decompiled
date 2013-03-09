.class Lcom/gracenote/mmid/MobileSDK/GNDOM;
.super Ljava/lang/Object;
.source "GNDOM.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "node"
    .parameter "attrname"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 149
    if-eqz p0, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "node is null"

    invoke-static {v2, v5}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 150
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 151
    .local v0, attributes:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "node has no attributes"

    invoke-static {v3, v2}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 152
    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 153
    .local v1, valueNode:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0           #attributes:Lorg/w3c/dom/NamedNodeMap;
    .end local v1           #valueNode:Lorg/w3c/dom/Node;
    :cond_0
    move v2, v4

    .line 149
    goto :goto_0

    .restart local v0       #attributes:Lorg/w3c/dom/NamedNodeMap;
    :cond_1
    move v3, v4

    .line 151
    goto :goto_1
.end method

.method static childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "parentNode"
    .parameter "tagname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 46
    if-eqz p0, :cond_0

    move v5, v6

    :goto_0
    const-string v8, "parent node is null"

    invoke-static {v5, v8}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 47
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    :goto_1
    const-string v5, "tagname is null"

    invoke-static {v6, v5}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v4, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 50
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 57
    return-object v4

    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #i:I
    .end local v4           #nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_0
    move v5, v7

    .line 46
    goto :goto_0

    :cond_1
    move v6, v7

    .line 47
    goto :goto_1

    .line 51
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    .restart local v2       #i:I
    .restart local v4       #nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_2
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 52
    .local v0, childNode:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, nodeName:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 54
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 7
    .parameter "node"

    .prologue
    .line 95
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 96
    .local v3, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 97
    .local v5, numChildren:I
    if-nez v5, :cond_0

    .line 98
    const/4 v6, 0x0

    .line 110
    :goto_0
    return-object v6

    .line 99
    :cond_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 100
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 105
    .local v1, childNode:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, childValue:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method static optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "parentNode"
    .parameter "tagname"

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    .local v0, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static parseDOM(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 7
    .parameter "xml"

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 27
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 28
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 29
    .local v1, dom:Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 36
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #dom:Lorg/w3c/dom/Document;
    :goto_0
    return-object v4

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .local v2, e:Lorg/xml/sax/SAXException;
    goto :goto_0

    .line 33
    .end local v2           #e:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v2

    .line 34
    .local v2, e:Ljava/io/IOException;
    goto :goto_0

    .line 35
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 36
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    goto :goto_0
.end method

.method static parseResponse(Lorg/w3c/dom/Node;)[Ljava/lang/Object;
    .locals 9
    .parameter "responsesNode"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 169
    if-eqz p0, :cond_2

    move v5, v6

    :goto_0
    const-string v8, "responsesNode node is null"

    invoke-static {v5, v8}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 170
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "RESPONSES"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "expected RESPONSES node"

    invoke-static {v5, v8}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 177
    const-string v5, "RESPONSE"

    invoke-static {p0, v5}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 180
    .local v3, responseNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v0, 0x0

    .line 182
    .local v0, errorMsgStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_3

    .line 183
    :cond_0
    const-string v4, "ERROR"

    .line 184
    .local v4, status:Ljava/lang/String;
    const/4 v2, 0x0

    .line 189
    .local v2, responseNode:Lorg/w3c/dom/Node;
    :goto_1
    const-string v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    :cond_1
    :goto_2
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v7

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    return-object v5

    .end local v0           #errorMsgStr:Ljava/lang/String;
    .end local v2           #responseNode:Lorg/w3c/dom/Node;
    .end local v3           #responseNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4           #status:Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 169
    goto :goto_0

    .line 186
    .restart local v0       #errorMsgStr:Ljava/lang/String;
    .restart local v3       #responseNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_3
    const-string v5, "RESPONSE"

    invoke-static {p0, v5}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 187
    .restart local v2       #responseNode:Lorg/w3c/dom/Node;
    const-string v5, "STATUS"

    invoke-static {v2, v5}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #status:Ljava/lang/String;
    goto :goto_1

    .line 191
    :cond_4
    const-string v5, "ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 195
    const-string v5, "MESSAGE"

    invoke-static {p0, v5}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 196
    .local v1, messageNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 197
    const-string v5, "MESSAGE"

    invoke-static {p0, v5}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 199
    .end local v1           #messageNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_5
    const-string v5, "NO_MATCH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 202
    const-string v4, "ERROR"

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "unsupported <RESPONSE> status \""

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 9
    .parameter "parentNode"
    .parameter "tagname"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 69
    if-eqz p0, :cond_0

    move v5, v6

    :goto_0
    const-string v8, "parent node is null"

    invoke-static {v5, v8}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 70
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v6

    :goto_1
    const-string v8, "tagname is null"

    invoke-static {v5, v8}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 73
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 81
    if-eqz v3, :cond_5

    :goto_3
    const-string v5, "node with tagname not found"

    invoke-static {v6, v5}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 82
    return-object v3

    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #i:I
    .end local v3           #node:Lorg/w3c/dom/Node;
    :cond_0
    move v5, v7

    .line 69
    goto :goto_0

    :cond_1
    move v5, v7

    .line 70
    goto :goto_1

    .line 74
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    .restart local v2       #i:I
    .restart local v3       #node:Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 75
    .local v0, childNode:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, nodeName:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 77
    if-nez v3, :cond_4

    move v5, v6

    :goto_4
    const-string v8, "node with same tagname appears more than once"

    invoke-static {v5, v8}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 78
    move-object v3, v0

    .line 73
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v5, v7

    .line 77
    goto :goto_4

    .end local v0           #childNode:Lorg/w3c/dom/Node;
    .end local v4           #nodeName:Ljava/lang/String;
    :cond_5
    move v6, v7

    .line 81
    goto :goto_3
.end method

.method static singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "parentNode"
    .parameter "tagname"

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 123
    .local v0, node:Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method
