.class public Lcom/futuredial/wbxml/ConvertXML;
.super Ljava/lang/Object;
.source "ConvertXML.java"


# instance fields
.field protected m_Buffer:Lcom/futuredial/wbxml/BinArray;

.field protected m_DocBld:Ljavax/xml/parsers/DocumentBuilder;

.field protected m_DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field protected m_RootElement:Lorg/w3c/dom/Element;

.field protected m_RootElementEx:Lcom/futuredial/xmlbuild/XmlElement;

.field protected m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

.field protected m_XmlDoc:Lorg/w3c/dom/Document;

.field protected m_XmlDocEx:Lcom/futuredial/xmlbuild/XmlDoc;

.field protected m_bCodePageChanged:Z

.field protected m_bVxxAsUnicode:Z

.field protected m_nCharset:I

.field protected m_nCodePageID:I

.field protected m_nDocID:I

.field protected m_strFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_bVxxAsUnicode:Z

    .line 38
    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_strFormat:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XmlDoc:Lorg/w3c/dom/Document;

    .line 40
    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_RootElement:Lorg/w3c/dom/Element;

    .line 42
    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 43
    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_DocBld:Ljavax/xml/parsers/DocumentBuilder;

    .line 44
    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    .line 46
    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 47
    new-instance v0, Lcom/futuredial/wbxml/XMLToken;

    invoke-direct {v0}, Lcom/futuredial/wbxml/XMLToken;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 48
    const/16 v0, 0x6a

    iput v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCharset:I

    .line 50
    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    .line 51
    iput-boolean v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    .line 52
    return-void
.end method

.method public static binHex2byte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/16 v8, 0x66

    const/16 v7, 0x46

    const/16 v6, 0x39

    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 361
    .local v3, ret:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 363
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 364
    .local v0, c1:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 365
    .local v1, c2:I
    if-gt v0, v6, :cond_2

    .line 367
    add-int/lit8 v0, v0, -0x30

    .line 377
    :cond_0
    :goto_1
    if-gt v1, v6, :cond_4

    .line 379
    add-int/lit8 v1, v1, -0x30

    .line 389
    :cond_1
    :goto_2
    div-int/lit8 v4, v2, 0x2

    shl-int/lit8 v5, v0, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 390
    add-int/lit8 v2, v2, 0x2

    .line 391
    goto :goto_0

    .line 369
    :cond_2
    if-gt v0, v7, :cond_3

    .line 371
    add-int/lit8 v0, v0, -0x37

    goto :goto_1

    .line 373
    :cond_3
    if-gt v0, v8, :cond_0

    .line 375
    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    .line 381
    :cond_4
    if-gt v0, v7, :cond_5

    .line 383
    add-int/lit8 v1, v1, -0x37

    goto :goto_2

    .line 385
    :cond_5
    if-gt v0, v8, :cond_1

    .line 387
    add-int/lit8 v1, v1, -0x57

    goto :goto_2

    .line 392
    .end local v0           #c1:I
    .end local v1           #c2:I
    :cond_6
    return-object v3
.end method

.method public static getXMLChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "n"
    .parameter "strName"

    .prologue
    .line 268
    check-cast p0, Lorg/w3c/dom/Element;

    .end local p0
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;

    move-result-object v1

    .line 269
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, nCount:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 271
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 272
    .local v3, r:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 277
    .end local v3           #r:Lorg/w3c/dom/Node;
    :goto_1
    return-object v3

    .line 269
    .restart local v3       #r:Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v3           #r:Lorg/w3c/dom/Node;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;
    .locals 5
    .parameter "ele"
    .parameter "nType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "S)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 256
    .local v1, lst:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 258
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 259
    .local v2, nd:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, p1, :cond_0

    .line 261
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v2           #nd:Lorg/w3c/dom/Node;
    :cond_1
    return-object v3
.end method

.method public static getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 9
    .parameter "ele"

    .prologue
    .line 281
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 282
    .local v4, strRet:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-static {p0, v8}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;

    move-result-object v7

    .line 283
    .local v7, txtNodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, nCount:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 285
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 286
    .local v2, n:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, strVal:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v2           #n:Lorg/w3c/dom/Node;
    .end local v6           #strVal:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    move-object v5, v4

    .line 309
    .end local v4           #strRet:Ljava/lang/String;
    .local v5, strRet:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 297
    .end local v5           #strRet:Ljava/lang/String;
    .restart local v4       #strRet:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x4

    invoke-static {p0, v8}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;

    move-result-object v0

    .line 298
    .local v0, cdataNodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 301
    .restart local v2       #n:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 302
    .restart local v6       #strVal:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 305
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2           #n:Lorg/w3c/dom/Node;
    .end local v6           #strVal:Ljava/lang/String;
    :cond_4
    move-object v5, v4

    .line 309
    .end local v4           #strRet:Ljava/lang/String;
    .restart local v5       #strRet:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public ConvertToWBXML(Ljava/lang/String;)[B
    .locals 2
    .parameter "strXML"

    .prologue
    const/4 v0, 0x0

    .line 731
    invoke-virtual {p0, p1}, Lcom/futuredial/wbxml/ConvertXML;->initEnv(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-object v0

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeWBXMLVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodePubDocID()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodePubDocIDByStrTbl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_RootElement:Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1}, Lcom/futuredial/wbxml/ConvertXML;->encodeElement(Lorg/w3c/dom/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0}, Lcom/futuredial/wbxml/BinArray;->getData()[B

    move-result-object v0

    goto :goto_0
.end method

.method public ConvertToWBXML(Lorg/w3c/dom/Element;I)[B
    .locals 2
    .parameter "ele"
    .parameter "nDocID"

    .prologue
    const/4 v0, 0x0

    .line 672
    iput p2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 673
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/wbxml/ConvertXML;->initEnv(Lorg/w3c/dom/Element;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-object v0

    .line 677
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeWBXMLVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {p0, p2}, Lcom/futuredial/wbxml/ConvertXML;->encodePubDocID(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodePubDocIDByStrTbl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_RootElement:Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1}, Lcom/futuredial/wbxml/ConvertXML;->encodeElement(Lorg/w3c/dom/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0}, Lcom/futuredial/wbxml/BinArray;->getData()[B

    move-result-object v0

    goto :goto_0
.end method

.method public ConvertToWBXMLEx(Lcom/futuredial/xmlbuild/XmlElement;I)[B
    .locals 2
    .parameter "ele"
    .parameter "nDocID"

    .prologue
    const/4 v0, 0x0

    .line 705
    iput p2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 706
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/wbxml/ConvertXML;->initEnvEx(Lcom/futuredial/xmlbuild/XmlElement;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-object v0

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeWBXMLVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {p0, p2}, Lcom/futuredial/wbxml/ConvertXML;->encodePubDocID(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodePubDocIDByStrTbl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_RootElementEx:Lcom/futuredial/xmlbuild/XmlElement;

    invoke-virtual {p0, v1}, Lcom/futuredial/wbxml/ConvertXML;->encodeElementEx(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0}, Lcom/futuredial/wbxml/BinArray;->getData()[B

    move-result-object v0

    goto :goto_0
.end method

.method public ConvertXmlDoc2WBXML(Lcom/futuredial/xmlbuild/XmlDoc;)[B
    .locals 2
    .parameter "xmlDoc"

    .prologue
    const/4 v0, 0x0

    .line 971
    invoke-virtual {p0, p1}, Lcom/futuredial/wbxml/ConvertXML;->initXmlDocEnv(Lcom/futuredial/xmlbuild/XmlDoc;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-object v0

    .line 975
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeWBXMLVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeXmlDocPubDocID()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodePubDocIDByStrTbl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_RootElementEx:Lcom/futuredial/xmlbuild/XmlElement;

    invoke-virtual {p0, v1}, Lcom/futuredial/wbxml/ConvertXML;->encodeElementEx(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0}, Lcom/futuredial/wbxml/BinArray;->getData()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected StringToByteArray(Ljava/lang/String;)[B
    .locals 5
    .parameter "strValue"

    .prologue
    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 343
    .local v2, ret:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 345
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 346
    .local v0, c:I
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    const v4, 0xff00

    and-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 347
    mul-int/lit8 v3, v1, 0x2

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v0           #c:I
    :cond_0
    return-object v2
.end method

.method protected encodeCharset()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    iget v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCharset:I

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/BinArray;->setInt32(I)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method protected encodeEleTag(I)Z
    .locals 1
    .parameter "nTag"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0, p1}, Lcom/futuredial/wbxml/BinArray;->setByte(I)V

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method protected encodeElement(Lorg/w3c/dom/Element;)Z
    .locals 27
    .parameter "ele"

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 453
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeSwitchCodepage()Z

    move-result v25

    if-nez v25, :cond_0

    .line 456
    const/16 v25, 0x0

    .line 619
    :goto_0
    return v25

    .line 460
    :cond_0
    const/4 v3, 0x0

    .line 461
    .local v3, bCodePageChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    move-object/from16 v18, v0

    .line 462
    .local v18, oldToken:Lcom/futuredial/wbxml/XMLToken;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    move/from16 v16, v0

    .line 463
    .local v16, nOldCodePage:I
    const/16 v15, 0xff

    .line 464
    .local v15, nNewCodePage:I
    const-string v25, "xmlns"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 465
    .local v20, strCodePage:Ljava/lang/String;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_2

    .line 467
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/ConvertXML;->getNewCodePage(Ljava/lang/String;)I

    move-result v15

    .line 468
    const/16 v25, 0xff

    move/from16 v0, v25

    if-ne v15, v0, :cond_1

    .line 470
    const/16 v25, 0x0

    goto :goto_0

    .line 472
    :cond_1
    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 474
    const/4 v3, 0x1

    .line 475
    move-object/from16 v0, p0

    iput v15, v0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeSwitchCodepage()Z

    move-result v25

    if-nez v25, :cond_2

    .line 478
    const/16 v25, 0x0

    goto :goto_0

    .line 483
    :cond_2
    const/4 v5, 0x0

    .line 484
    .local v5, bExistContent:Z
    const/4 v4, 0x0

    .line 485
    .local v4, bExistChildNode:Z
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;

    move-result-object v7

    .line 486
    .local v7, childNodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-static/range {p1 .. p1}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v22

    .line 487
    .local v22, strValue:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_3

    .line 489
    const/4 v4, 0x1

    .line 491
    :cond_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_4

    .line 493
    const/4 v5, 0x1

    .line 495
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    move-object/from16 v25, v0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/futuredial/wbxml/XMLToken;->getTokenID(Ljava/lang/String;)I

    move-result v17

    .line 496
    .local v17, nTag:I
    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 498
    const/16 v25, 0x0

    goto :goto_0

    .line 501
    :cond_5
    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    .line 503
    :cond_6
    or-int/lit8 v17, v17, 0x40

    .line 506
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/ConvertXML;->encodeEleTag(I)Z

    move-result v25

    if-nez v25, :cond_8

    .line 508
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 511
    :cond_8
    if-eqz v5, :cond_b

    .line 513
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_bVxxAsUnicode:Z

    .line 514
    invoke-virtual/range {p0 .. p1}, Lcom/futuredial/wbxml/ConvertXML;->isCDATAType(Lorg/w3c/dom/Element;)Z

    move-result v25

    if-eqz v25, :cond_a

    const-string v25, "Item"

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_a

    .line 516
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    .line 517
    .local v19, p:Lorg/w3c/dom/Node;
    const-string v25, "Meta"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/futuredial/wbxml/ConvertXML;->getXMLChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 518
    .local v11, m:Lorg/w3c/dom/Node;
    if-eqz v11, :cond_9

    .line 520
    const-string v25, "Type"

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lcom/futuredial/wbxml/ConvertXML;->getXMLChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v23

    .line 521
    .local v23, t:Lorg/w3c/dom/Node;
    if-eqz v23, :cond_9

    .line 523
    check-cast v23, Lorg/w3c/dom/Element;

    .end local v23           #t:Lorg/w3c/dom/Node;
    invoke-static/range {v23 .. v23}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v24

    .line 524
    .local v24, v:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 525
    const-string v25, "message"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    if-lez v25, :cond_9

    .line 527
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_bVxxAsUnicode:Z

    .line 531
    .end local v24           #v:Ljava/lang/String;
    :cond_9
    const-string v25, "coding"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 532
    .local v21, strCoding:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/wbxml/ConvertXML;->encodeOpaqueData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 534
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 539
    .end local v11           #m:Lorg/w3c/dom/Node;
    .end local v19           #p:Lorg/w3c/dom/Node;
    .end local v21           #strCoding:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/ConvertXML;->encodeStringAContent(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 541
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 546
    :cond_b
    if-eqz v4, :cond_11

    .line 548
    const/4 v6, 0x1

    .line 549
    .local v6, bNeedEncodeChild:Z
    const-string v25, "Data"

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_f

    .line 551
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, nCount:I
    :goto_1
    if-ge v10, v13, :cond_f

    .line 553
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 554
    .local v12, n:Lorg/w3c/dom/Element;
    const-string v25, "DevInf"

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_e

    .line 556
    const/4 v6, 0x0

    .line 557
    const/4 v14, 0x0

    .line 558
    .local v14, nDocID:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 572
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 562
    :sswitch_0
    const/16 v14, 0x1203

    .line 575
    :goto_2
    new-instance v9, Lcom/futuredial/wbxml/ConvertXML;

    invoke-direct {v9}, Lcom/futuredial/wbxml/ConvertXML;-><init>()V

    .line 576
    .local v9, devxml:Lcom/futuredial/wbxml/ConvertXML;
    invoke-virtual {v9, v12, v14}, Lcom/futuredial/wbxml/ConvertXML;->ConvertToWBXML(Lorg/w3c/dom/Element;I)[B

    move-result-object v8

    .line 577
    .local v8, devwbxml:[B
    if-eqz v8, :cond_c

    array-length v0, v8

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 579
    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 567
    .end local v8           #devwbxml:[B
    .end local v9           #devxml:Lcom/futuredial/wbxml/ConvertXML;
    :sswitch_1
    const/16 v14, 0xfd4

    .line 568
    goto :goto_2

    .line 581
    .restart local v8       #devwbxml:[B
    .restart local v9       #devxml:Lcom/futuredial/wbxml/ConvertXML;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/futuredial/wbxml/ConvertXML;->encodeOpaqueData([B)Z

    move-result v25

    if-nez v25, :cond_f

    .line 583
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 551
    .end local v8           #devwbxml:[B
    .end local v9           #devxml:Lcom/futuredial/wbxml/ConvertXML;
    .end local v14           #nDocID:I
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 590
    .end local v10           #i:I
    .end local v12           #n:Lorg/w3c/dom/Element;
    .end local v13           #nCount:I
    :cond_f
    if-eqz v6, :cond_11

    .line 592
    const/4 v10, 0x0

    .restart local v10       #i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    .restart local v13       #nCount:I
    :goto_3
    if-ge v10, v13, :cond_11

    .line 594
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 595
    .restart local v12       #n:Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/wbxml/ConvertXML;->encodeElement(Lorg/w3c/dom/Element;)Z

    move-result v25

    if-nez v25, :cond_10

    .line 597
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 592
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 603
    .end local v6           #bNeedEncodeChild:Z
    .end local v10           #i:I
    .end local v12           #n:Lorg/w3c/dom/Element;
    .end local v13           #nCount:I
    :cond_11
    if-nez v4, :cond_12

    if-eqz v5, :cond_13

    .line 605
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeElementEnd()Z

    move-result v25

    if-nez v25, :cond_13

    .line 607
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 611
    :cond_13
    if-eqz v3, :cond_14

    .line 613
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    .line 614
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 616
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    .line 619
    :cond_14
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 558
    nop

    :sswitch_data_0
    .sparse-switch
        0xfd3 -> :sswitch_1
        0x1201 -> :sswitch_0
    .end sparse-switch
.end method

.method protected encodeElementEnd()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 445
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/BinArray;->setByte(I)V

    .line 446
    return v1
.end method

.method protected encodeElementEx(Lcom/futuredial/xmlbuild/XmlElement;)Z
    .locals 27
    .parameter "ele"

    .prologue
    .line 798
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 800
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeSwitchCodepage()Z

    move-result v25

    if-nez v25, :cond_0

    .line 803
    const/16 v25, 0x0

    .line 966
    :goto_0
    return v25

    .line 807
    :cond_0
    const/4 v3, 0x0

    .line 808
    .local v3, bCodePageChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    move-object/from16 v18, v0

    .line 809
    .local v18, oldToken:Lcom/futuredial/wbxml/XMLToken;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    move/from16 v16, v0

    .line 810
    .local v16, nOldCodePage:I
    const/16 v15, 0xff

    .line 811
    .local v15, nNewCodePage:I
    const-string v25, "xmlns"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->findAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 812
    .local v20, strCodePage:Ljava/lang/String;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_2

    .line 814
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/ConvertXML;->getNewCodePage(Ljava/lang/String;)I

    move-result v15

    .line 815
    const/16 v25, 0xff

    move/from16 v0, v25

    if-ne v15, v0, :cond_1

    .line 817
    const/16 v25, 0x0

    goto :goto_0

    .line 819
    :cond_1
    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 821
    const/4 v3, 0x1

    .line 822
    move-object/from16 v0, p0

    iput v15, v0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeSwitchCodepage()Z

    move-result v25

    if-nez v25, :cond_2

    .line 825
    const/16 v25, 0x0

    goto :goto_0

    .line 830
    :cond_2
    const/4 v5, 0x0

    .line 831
    .local v5, bExistContent:Z
    const/4 v4, 0x0

    .line 832
    .local v4, bExistChildNode:Z
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/xmlbuild/XmlElement;->getChildXmlElementList()Ljava/util/ArrayList;

    move-result-object v7

    .line 833
    .local v7, childNodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/xmlbuild/XmlElement;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v22

    .line 834
    .local v22, strValue:Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_3

    .line 836
    const/4 v4, 0x1

    .line 838
    :cond_3
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_4

    .line 840
    const/4 v5, 0x1

    .line 842
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    move-object/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/futuredial/wbxml/XMLToken;->getTokenID(Ljava/lang/String;)I

    move-result v17

    .line 843
    .local v17, nTag:I
    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 845
    const/16 v25, 0x0

    goto :goto_0

    .line 848
    :cond_5
    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    .line 850
    :cond_6
    or-int/lit8 v17, v17, 0x40

    .line 853
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/ConvertXML;->encodeEleTag(I)Z

    move-result v25

    if-nez v25, :cond_8

    .line 855
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 858
    :cond_8
    if-eqz v5, :cond_b

    .line 860
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_bVxxAsUnicode:Z

    .line 861
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/xmlbuild/XmlElement;->IsCDATA()Z

    move-result v25

    if-eqz v25, :cond_a

    const-string v25, "Item"

    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/xmlbuild/XmlElement;->getParentElement()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_a

    .line 863
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/xmlbuild/XmlElement;->getParentElement()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v19

    .line 864
    .local v19, p:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v25, "Meta"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    .line 865
    .local v11, m:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v11, :cond_9

    .line 867
    const-string v25, "Type"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v23

    .line 868
    .local v23, t:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v23, :cond_9

    .line 870
    invoke-virtual/range {v23 .. v23}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v24

    .line 871
    .local v24, v:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 872
    const-string v25, "message"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    if-lez v25, :cond_9

    .line 874
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_bVxxAsUnicode:Z

    .line 878
    .end local v23           #t:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v24           #v:Ljava/lang/String;
    :cond_9
    const-string v25, "coding"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/futuredial/xmlbuild/XmlElement;->findAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 879
    .local v21, strCoding:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/wbxml/ConvertXML;->encodeOpaqueData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 881
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 886
    .end local v11           #m:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v19           #p:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v21           #strCoding:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/ConvertXML;->encodeStringAContent(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 888
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 893
    :cond_b
    if-eqz v4, :cond_11

    .line 895
    const/4 v6, 0x1

    .line 896
    .local v6, bNeedEncodeChild:Z
    const-string v25, "Data"

    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_f

    .line 898
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, nCount:I
    :goto_1
    if-ge v10, v13, :cond_f

    .line 900
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/futuredial/xmlbuild/XmlElement;

    .line 901
    .local v12, n:Lcom/futuredial/xmlbuild/XmlElement;
    const-string v25, "DevInf"

    invoke-virtual {v12}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_e

    .line 903
    const/4 v6, 0x0

    .line 904
    const/4 v14, 0x0

    .line 905
    .local v14, nDocID:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 919
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 909
    :sswitch_0
    const/16 v14, 0x1203

    .line 922
    :goto_2
    new-instance v9, Lcom/futuredial/wbxml/ConvertXML;

    invoke-direct {v9}, Lcom/futuredial/wbxml/ConvertXML;-><init>()V

    .line 923
    .local v9, devxml:Lcom/futuredial/wbxml/ConvertXML;
    invoke-virtual {v9, v12, v14}, Lcom/futuredial/wbxml/ConvertXML;->ConvertToWBXMLEx(Lcom/futuredial/xmlbuild/XmlElement;I)[B

    move-result-object v8

    .line 924
    .local v8, devwbxml:[B
    if-eqz v8, :cond_c

    array-length v0, v8

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 926
    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 914
    .end local v8           #devwbxml:[B
    .end local v9           #devxml:Lcom/futuredial/wbxml/ConvertXML;
    :sswitch_1
    const/16 v14, 0xfd4

    .line 915
    goto :goto_2

    .line 928
    .restart local v8       #devwbxml:[B
    .restart local v9       #devxml:Lcom/futuredial/wbxml/ConvertXML;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/futuredial/wbxml/ConvertXML;->encodeOpaqueData([B)Z

    move-result v25

    if-nez v25, :cond_f

    .line 930
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 898
    .end local v8           #devwbxml:[B
    .end local v9           #devxml:Lcom/futuredial/wbxml/ConvertXML;
    .end local v14           #nDocID:I
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 937
    .end local v10           #i:I
    .end local v12           #n:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v13           #nCount:I
    :cond_f
    if-eqz v6, :cond_11

    .line 939
    const/4 v10, 0x0

    .restart local v10       #i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    .restart local v13       #nCount:I
    :goto_3
    if-ge v10, v13, :cond_11

    .line 941
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/futuredial/xmlbuild/XmlElement;

    .line 942
    .restart local v12       #n:Lcom/futuredial/xmlbuild/XmlElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/wbxml/ConvertXML;->encodeElementEx(Lcom/futuredial/xmlbuild/XmlElement;)Z

    move-result v25

    if-nez v25, :cond_10

    .line 944
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 939
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 950
    .end local v6           #bNeedEncodeChild:Z
    .end local v10           #i:I
    .end local v12           #n:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v13           #nCount:I
    :cond_11
    if-nez v4, :cond_12

    if-eqz v5, :cond_13

    .line 952
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeElementEnd()Z

    move-result v25

    if-nez v25, :cond_13

    .line 954
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 958
    :cond_13
    if-eqz v3, :cond_14

    .line 960
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    .line 961
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 963
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    .line 966
    :cond_14
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 905
    nop

    :sswitch_data_0
    .sparse-switch
        0xfd3 -> :sswitch_1
        0x1201 -> :sswitch_0
    .end sparse-switch
.end method

.method protected encodeOpaqueData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "strValue"
    .parameter "strCoding"

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 400
    .local v0, binData:[B
    :try_start_0
    iget-boolean v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_bVxxAsUnicode:Z

    if-eqz v2, :cond_2

    .line 402
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 404
    const-string v2, "binhex"

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 406
    invoke-static {p1}, Lcom/futuredial/wbxml/ConvertXML;->binHex2byte(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 432
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/futuredial/wbxml/ConvertXML;->encodeOpaqueData([B)Z

    move-result v2

    :goto_1
    return v2

    .line 411
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/futuredial/wbxml/ConvertXML;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_2
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_strFormat:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_strFormat:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 422
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 428
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected encodeOpaqueData([B)Z
    .locals 2
    .parameter "binData"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/BinArray;->setByte(I)V

    .line 354
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/BinArray;->setInt32(I)V

    .line 355
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0, p1}, Lcom/futuredial/wbxml/BinArray;->setBinData([B)V

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method protected encodePubDocID()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XmlDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, strPublicID:Ljava/lang/String;
    iput-boolean v3, p0, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    .line 89
    iput v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    .line 90
    const-string v1, "-//SYNCML//DTD_SyncML_1.2//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const/16 v1, 0x1201

    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 93
    new-instance v1, Lcom/futuredial/wbxml/SyncML12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    iget v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    invoke-virtual {v1, v2}, Lcom/futuredial/wbxml/BinArray;->setInt32(I)V

    .line 115
    return v3

    .line 95
    :cond_0
    const-string v1, "-//SYNCML//DTD_DevInf_1.2//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 97
    const/16 v1, 0x1203

    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 98
    new-instance v1, Lcom/futuredial/wbxml/DevInf12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "-//SYNCML//DTD_SyncML_1.1//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 102
    const/16 v1, 0xfd3

    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 103
    new-instance v1, Lcom/futuredial/wbxml/SyncML11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 105
    :cond_2
    const-string v1, "-//SYNCML//DTD_DevInf_1.1//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 107
    const/16 v1, 0xfd4

    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 108
    new-instance v1, Lcom/futuredial/wbxml/DevInf11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 112
    :cond_3
    iput v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    goto :goto_0
.end method

.method protected encodePubDocID(I)Z
    .locals 3
    .parameter "nDocID"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 639
    iput-boolean v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    .line 640
    iput v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    .line 641
    sparse-switch p1, :sswitch_data_0

    .line 667
    :goto_0
    return v0

    .line 645
    :sswitch_0
    new-instance v0, Lcom/futuredial/wbxml/SyncML12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/SyncML12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 666
    :goto_1
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    iget v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    invoke-virtual {v0, v2}, Lcom/futuredial/wbxml/BinArray;->setInt32(I)V

    move v0, v1

    .line 667
    goto :goto_0

    .line 650
    :sswitch_1
    new-instance v0, Lcom/futuredial/wbxml/DevInf12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/DevInf12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_1

    .line 655
    :sswitch_2
    new-instance v0, Lcom/futuredial/wbxml/SyncML11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/SyncML11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_1

    .line 660
    :sswitch_3
    new-instance v0, Lcom/futuredial/wbxml/DevInf11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/DevInf11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_1

    .line 641
    :sswitch_data_0
    .sparse-switch
        0xfd3 -> :sswitch_2
        0xfd4 -> :sswitch_3
        0x1201 -> :sswitch_0
        0x1203 -> :sswitch_1
    .end sparse-switch
.end method

.method protected encodePubDocIDByStrTbl()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iget v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    if-nez v1, :cond_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeCharset()Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    :cond_1
    :goto_0
    return v0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertXML;->encodeStrTbl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected encodeStrTbl()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/BinArray;->setInt32(I)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected encodeStringAContent(Ljava/lang/String;)Z
    .locals 4
    .parameter "strValue"

    .prologue
    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_strFormat:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_strFormat:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 330
    .local v0, binData:[B
    :goto_0
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/futuredial/wbxml/BinArray;->setByte(I)V

    .line 331
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v2, v0}, Lcom/futuredial/wbxml/BinArray;->setStringA([B)V

    .line 338
    const/4 v2, 0x1

    .end local v0           #binData:[B
    :goto_1
    return v2

    .line 328
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0       #binData:[B
    goto :goto_0

    .line 333
    .end local v0           #binData:[B
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected encodeSwitchCodepage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v1, v0}, Lcom/futuredial/wbxml/BinArray;->setByte(I)V

    .line 148
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    iget v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/futuredial/wbxml/BinArray;->setByte(I)V

    .line 150
    iget v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    sparse-switch v1, :sswitch_data_0

    .line 202
    :goto_0
    return v0

    .line 153
    :sswitch_0
    iget v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    new-instance v0, Lcom/futuredial/wbxml/SyncML12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/SyncML12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 202
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :pswitch_1
    new-instance v0, Lcom/futuredial/wbxml/MetInf12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/MetInf12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_1

    .line 166
    :sswitch_1
    iget v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 169
    :pswitch_2
    new-instance v0, Lcom/futuredial/wbxml/DevInf12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/DevInf12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_1

    .line 176
    :sswitch_2
    iget v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 179
    :pswitch_3
    new-instance v0, Lcom/futuredial/wbxml/SyncML11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/SyncML11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_1

    .line 182
    :pswitch_4
    new-instance v0, Lcom/futuredial/wbxml/MetInf11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/MetInf11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_1

    .line 189
    :sswitch_3
    iget v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_3

    goto :goto_0

    .line 192
    :pswitch_5
    new-instance v0, Lcom/futuredial/wbxml/DevInf11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/DevInf11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_1

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0xfd3 -> :sswitch_2
        0xfd4 -> :sswitch_3
        0x1201 -> :sswitch_0
        0x1203 -> :sswitch_1
    .end sparse-switch

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 166
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 176
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 189
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method protected encodeWBXMLVersion()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/BinArray;->setByte(I)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method protected encodeXmlDocPubDocID()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 765
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XmlDocEx:Lcom/futuredial/xmlbuild/XmlDoc;

    invoke-virtual {v1}, Lcom/futuredial/xmlbuild/XmlDoc;->getDocTypeString()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, strPublicID:Ljava/lang/String;
    iput-boolean v3, p0, Lcom/futuredial/wbxml/ConvertXML;->m_bCodePageChanged:Z

    .line 767
    iput v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nCodePageID:I

    .line 768
    const-string v1, "-//SYNCML//DTD_SyncML_1.2//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 770
    const/16 v1, 0x1201

    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 771
    new-instance v1, Lcom/futuredial/wbxml/SyncML12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 792
    :goto_0
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    iget v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    invoke-virtual {v1, v2}, Lcom/futuredial/wbxml/BinArray;->setInt32(I)V

    .line 793
    return v3

    .line 773
    :cond_0
    const-string v1, "-//SYNCML//DTD_DevInf_1.2//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 775
    const/16 v1, 0x1203

    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 776
    new-instance v1, Lcom/futuredial/wbxml/DevInf12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 778
    :cond_1
    const-string v1, "-//SYNCML//DTD_SyncML_1.1//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 780
    const/16 v1, 0xfd3

    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 781
    new-instance v1, Lcom/futuredial/wbxml/SyncML11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 783
    :cond_2
    const-string v1, "-//SYNCML//DTD_DevInf_1.1//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 785
    const/16 v1, 0xfd4

    iput v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    .line 786
    new-instance v1, Lcom/futuredial/wbxml/DevInf11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 790
    :cond_3
    iput v2, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    goto :goto_0
.end method

.method protected getNewCodePage(Ljava/lang/String;)I
    .locals 2
    .parameter "strCodePage"

    .prologue
    .line 206
    const/16 v0, 0xff

    .line 207
    .local v0, nret:I
    iget v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_nDocID:I

    sparse-switch v1, :sswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 210
    :sswitch_0
    const-string v1, "syncml:SYNCML1.2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 213
    new-instance v1, Lcom/futuredial/wbxml/SyncML12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 215
    :cond_1
    const-string v1, "syncml:metinf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 218
    new-instance v1, Lcom/futuredial/wbxml/MetInf12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/MetInf12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 222
    :sswitch_1
    const-string v1, "syncml:devinf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 225
    new-instance v1, Lcom/futuredial/wbxml/DevInf12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 229
    :sswitch_2
    const-string v1, "syncml:SYNCML1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 231
    const/4 v0, 0x0

    .line 232
    new-instance v1, Lcom/futuredial/wbxml/SyncML11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 234
    :cond_2
    const-string v1, "syncml:metinf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 237
    new-instance v1, Lcom/futuredial/wbxml/MetInf11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/MetInf11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 241
    :sswitch_3
    const-string v1, "syncml:devinf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 244
    new-instance v1, Lcom/futuredial/wbxml/DevInf11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0xfd3 -> :sswitch_2
        0xfd4 -> :sswitch_3
        0x1201 -> :sswitch_0
        0x1203 -> :sswitch_1
    .end sparse-switch
.end method

.method protected initEnv(Ljava/lang/String;)Z
    .locals 4
    .parameter "strXML"

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 65
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_DocBld:Ljavax/xml/parsers/DocumentBuilder;

    .line 67
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_DocBld:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XmlDoc:Lorg/w3c/dom/Document;

    .line 68
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XmlDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_RootElement:Lorg/w3c/dom/Element;

    .line 69
    new-instance v1, Lcom/futuredial/wbxml/BinArray;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lcom/futuredial/wbxml/BinArray;-><init>(I)V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initEnv(Lorg/w3c/dom/Element;I)Z
    .locals 3
    .parameter "rootEle"
    .parameter "nDocID"

    .prologue
    .line 626
    :try_start_0
    iput-object p1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_RootElement:Lorg/w3c/dom/Element;

    .line 627
    new-instance v1, Lcom/futuredial/wbxml/BinArray;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lcom/futuredial/wbxml/BinArray;-><init>(I)V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 629
    :catch_0
    move-exception v0

    .line 631
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 632
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initEnvEx(Lcom/futuredial/xmlbuild/XmlElement;I)Z
    .locals 2
    .parameter "rootEle"
    .parameter "nDocID"

    .prologue
    .line 698
    iput-object p1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_RootElementEx:Lcom/futuredial/xmlbuild/XmlElement;

    .line 699
    new-instance v0, Lcom/futuredial/wbxml/BinArray;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/futuredial/wbxml/BinArray;-><init>(I)V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    .line 700
    const/4 v0, 0x1

    return v0
.end method

.method protected initXmlDocEnv(Lcom/futuredial/xmlbuild/XmlDoc;)Z
    .locals 2
    .parameter "xmlDoc"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XmlDocEx:Lcom/futuredial/xmlbuild/XmlDoc;

    .line 757
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_XmlDocEx:Lcom/futuredial/xmlbuild/XmlDoc;

    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlDoc;->getRootElement()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_RootElementEx:Lcom/futuredial/xmlbuild/XmlElement;

    .line 758
    new-instance v0, Lcom/futuredial/wbxml/BinArray;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/futuredial/wbxml/BinArray;-><init>(I)V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    .line 760
    const/4 v0, 0x1

    return v0
.end method

.method protected isCDATAType(Lorg/w3c/dom/Element;)Z
    .locals 2
    .parameter "ele"

    .prologue
    .line 436
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;

    move-result-object v0

    .line 437
    .local v0, txtNodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 439
    const/4 v1, 0x1

    .line 441
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVxxAsUnicode(Z)V
    .locals 0
    .parameter "bAsUnicode"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/futuredial/wbxml/ConvertXML;->m_bVxxAsUnicode:Z

    .line 57
    return-void
.end method
