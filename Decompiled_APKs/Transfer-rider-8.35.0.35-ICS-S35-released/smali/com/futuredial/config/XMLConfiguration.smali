.class public Lcom/futuredial/config/XMLConfiguration;
.super Ljava/lang/Object;
.source "XMLConfiguration.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private doc:Lorg/w3c/dom/Document;

.field private xml:Ljava/lang/String;

.field private xpath:Ljavax/xml/xpath/XPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "xml"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/futuredial/config/XMLConfiguration;->doc:Lorg/w3c/dom/Document;

    .line 29
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/config/XMLConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    .line 30
    iput-object v1, p0, Lcom/futuredial/config/XMLConfiguration;->xml:Ljava/lang/String;

    .line 31
    const-string v0, "XMLConfiguration"

    iput-object v0, p0, Lcom/futuredial/config/XMLConfiguration;->TAG:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/futuredial/config/XMLConfiguration;->xml:Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/futuredial/config/XMLConfiguration;->setDocument(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public static getChildsByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 8
    .parameter "parentNode"
    .parameter "strName"

    .prologue
    const/4 v7, 0x0

    .line 195
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_0

    .line 197
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_0
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 201
    .local v4, splitIndex:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 203
    check-cast p0, Lorg/w3c/dom/Element;

    .end local p0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 226
    :cond_1
    :goto_0
    return-object v3

    .line 207
    .restart local p0
    :cond_2
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, name:Ljava/lang/String;
    check-cast p0, Lorg/w3c/dom/Element;

    .end local p0
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 209
    .local v2, nl:Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_4

    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 213
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/futuredial/config/XMLConfiguration;->getChildsByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 214
    .local v3, ret:Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-gtz v5, :cond_1

    .line 218
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_1

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    .end local v0           #i:I
    .end local v3           #ret:Lorg/w3c/dom/NodeList;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSingleChildByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 8
    .parameter "parentNode"
    .parameter "strname"

    .prologue
    const/4 v7, 0x0

    .line 159
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_0

    .line 161
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 163
    :cond_0
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 165
    .local v4, splitIndex:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 167
    check-cast p0, Lorg/w3c/dom/Element;

    .end local p0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 168
    .local v3, nl:Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_3

    .line 170
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 190
    :cond_1
    :goto_0
    return-object v2

    .line 175
    .end local v3           #nl:Lorg/w3c/dom/NodeList;
    .restart local p0
    :cond_2
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, name:Ljava/lang/String;
    check-cast p0, Lorg/w3c/dom/Element;

    .end local p0
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 177
    .restart local v3       #nl:Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_3

    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 181
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/futuredial/config/XMLConfiguration;->getSingleChildByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 182
    .local v2, nd:Lorg/w3c/dom/Node;
    if-nez v2, :cond_1

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v0           #i:I
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #nd:Lorg/w3c/dom/Node;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setDocument(Landroid/content/Context;)V
    .locals 7
    .parameter "activity"

    .prologue
    .line 41
    iget-object v5, p0, Lcom/futuredial/config/XMLConfiguration;->TAG:Ljava/lang/String;

    const-string v6, "Enter method:setDocument()"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v3, 0x0

    .line 46
    .local v3, ins:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 47
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iget-object v6, p0, Lcom/futuredial/config/XMLConfiguration;->xml:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 48
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 49
    .local v1, builderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 50
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/config/XMLConfiguration;->doc:Lorg/w3c/dom/Document;

    .line 51
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    iget-object v5, p0, Lcom/futuredial/config/XMLConfiguration;->TAG:Ljava/lang/String;

    const-string v6, "Enter method:setDocument()"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #builderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #r:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/futuredial/config/XMLConfiguration;->TAG:Ljava/lang/String;

    const-string v6, "ERROR. Cause:"

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCommClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "contentType"
    .parameter "type"

    .prologue
    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/config/XMLConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/settings/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/communication/classname"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/config/XMLConfiguration;->doc:Lorg/w3c/dom/Document;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v4, v5, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 94
    .local v2, node:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    .end local v2           #node:Lorg/w3c/dom/Node;
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCommuPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "contentType"
    .parameter "type"

    .prologue
    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/config/XMLConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/settings/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/communication/policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/config/XMLConfiguration;->doc:Lorg/w3c/dom/Document;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v4, v5, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 107
    .local v1, node:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 113
    .end local v1           #node:Lorg/w3c/dom/Node;
    :goto_0
    return-object v2

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 113
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getParserClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "contentType"
    .parameter "type"

    .prologue
    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/config/XMLConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/settings/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/parser/classname"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/config/XMLConfiguration;->doc:Lorg/w3c/dom/Document;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v4, v5, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 140
    .local v2, node:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    .end local v2           #node:Lorg/w3c/dom/Node;
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 146
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParserPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "param"

    .prologue
    .line 65
    :try_start_0
    iget-object v5, p0, Lcom/futuredial/config/XMLConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/returnstrings/rs[@value=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\']"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/futuredial/config/XMLConfiguration;->doc:Lorg/w3c/dom/Document;

    sget-object v8, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v6, v7, v8}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 66
    .local v3, node:Lorg/w3c/dom/Node;
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    .line 67
    .local v1, e:Lorg/w3c/dom/Element;
    const-string v5, "parsePolicy"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 73
    .end local v1           #e:Lorg/w3c/dom/Element;
    .end local v3           #node:Lorg/w3c/dom/Node;
    :goto_0
    return-object v4

    .line 69
    :catch_0
    move-exception v2

    .line 71
    .local v2, e1:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v2}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 73
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "param"

    .prologue
    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/config/XMLConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/returnstrings/rs[@value=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\']"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/config/XMLConfiguration;->doc:Lorg/w3c/dom/Document;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v4, v5, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 80
    .local v1, node:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .end local v1           #node:Lorg/w3c/dom/Node;
    :goto_0
    return-object v2

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 86
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUUID(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "contentType"
    .parameter "type"

    .prologue
    .line 119
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "//settings/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/communication/uuid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, command:Ljava/lang/String;
    iget-object v7, p0, Lcom/futuredial/config/XMLConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    iget-object v8, p0, Lcom/futuredial/config/XMLConfiguration;->doc:Lorg/w3c/dom/Document;

    sget-object v9, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v7, v0, v8, v9}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/NodeList;

    .line 121
    .local v4, l:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 122
    .local v5, size:I
    new-array v6, v5, [Ljava/lang/String;

    .line 123
    .local v6, uuid:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 125
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 126
    .local v2, ee:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v0           #command:Ljava/lang/String;
    .end local v2           #ee:Lorg/w3c/dom/Node;
    .end local v3           #i:I
    .end local v4           #l:Lorg/w3c/dom/NodeList;
    .end local v5           #size:I
    .end local v6           #uuid:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 133
    const/4 v6, 0x0

    .end local v1           #e:Ljavax/xml/xpath/XPathExpressionException;
    :cond_0
    return-object v6
.end method
