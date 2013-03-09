.class public Lcom/futuredial/bluetooth/DetectNokiaObex;
.super Ljava/lang/Object;
.source "DetectNokiaObex.java"


# instance fields
.field protected m_Buffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field protected m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

.field protected m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

.field protected m_bObexFinished:Z

.field protected m_nObexErrCode:B

.field private final pcsuite_capability_type:Ljava/lang/String;

.field private final pcsuite_who:Ljava/lang/String;

.field private sModel:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "x-obex/capability"

    iput-object v0, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->pcsuite_capability_type:Ljava/lang/String;

    .line 32
    const-string v0, "PC Suite"

    iput-object v0, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->pcsuite_who:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->sModel:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 38
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 39
    iput-boolean v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_bObexFinished:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    .line 41
    iput-byte v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_nObexErrCode:B

    .line 43
    return-void
.end method


# virtual methods
.method public Byte2String([B)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 117
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 118
    .local v1, strRet:Ljava/io/StringWriter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 120
    aget-byte v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public GetPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->sModel:Ljava/lang/String;

    return-object v0
.end method

.method public IsObexFinished()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_bObexFinished:Z

    return v0
.end method

.method public getConnectPCSuiteStream()[B
    .locals 5

    .prologue
    .line 51
    const/16 v2, 0x10

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 52
    .local v0, pcsuite_target:[B
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 53
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, -0x80

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->setCommand(B)V

    .line 54
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x46

    invoke-virtual {v2, v3, v0}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 55
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x4a

    const-string v4, "PC Suite"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 57
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v1

    .line 58
    .local v1, ret:[B
    const-string v2, "getConnectStream"

    invoke-static {v2, v1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 59
    return-object v1

    .line 51
    :array_0
    .array-data 0x1
        0xf9t
        0xect
        0x7bt
        0xc4t
        0x95t
        0x3ct
        0x11t
        0xd2t
        0x98t
        0x4et
        0x52t
        0x54t
        0x0t
        0xdct
        0x9et
        0x9t
    .end array-data
.end method

.method public getDisconnectStream()[B
    .locals 5

    .prologue
    const/16 v4, -0x35

    .line 76
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 78
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v3, -0x7f

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 80
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2, v4}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v2

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v2

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 81
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 83
    iget-object v2, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v1

    .line 84
    .local v1, ret:[B
    const-string v2, "setDisconnectResponseStream"

    invoke-static {v2, v1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 85
    return-object v1
.end method

.method public getGetObjectStream()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    new-array v0, v3, [B

    .line 173
    .local v0, ret:[B
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 174
    const-string v1, "getGetObjectStream"

    invoke-static {v1, v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 175
    return-object v0
.end method

.method public getResult()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 228
    new-array v3, v6, [B

    .line 230
    .local v3, ret:[B
    const/4 v2, 0x0

    .line 231
    .local v2, nLen:I
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 232
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 234
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    new-array v3, v2, [B

    .line 237
    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 240
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-static {v5, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_1
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 244
    return-object v3
.end method

.method public initGetCapabilityObject()Z
    .locals 4

    .prologue
    const/16 v3, -0x35

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_bObexFinished:Z

    .line 103
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 106
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 108
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v1, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v1

    check-cast v1, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v1

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 109
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 110
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v2, 0x42

    const-string v3, "x-obex/capability"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 111
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v2, 0x4a

    const-string v3, "PC Suite"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 113
    const/4 v1, 0x1

    return v1
.end method

.method public setCapabilityObject([B)Z
    .locals 15
    .parameter "objCapability"

    .prologue
    .line 127
    invoke-virtual/range {p0 .. p1}, Lcom/futuredial/bluetooth/DetectNokiaObex;->Byte2String([B)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, strXML:Ljava/lang/String;
    const/4 v4, 0x0

    .line 131
    .local v4, bRet:Z
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 132
    .local v1, DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 135
    .local v0, DocBld:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v13, Lorg/xml/sax/InputSource;

    new-instance v14, Ljava/io/StringReader;

    invoke-direct {v14, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 136
    .local v3, XmlDoc:Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 137
    .local v2, RootElement:Lorg/w3c/dom/Element;
    const/4 v13, 0x1

    invoke-static {v2, v13}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;

    move-result-object v9

    .line 139
    .local v9, nod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, nSize:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 141
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    .line 142
    .local v6, eleGeneral:Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .line 144
    .local v11, strName:Ljava/lang/String;
    const-string v13, "General"

    invoke-virtual {v11, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_1

    .line 146
    const-string v13, "Model"

    invoke-static {v6, v13}, Lcom/futuredial/wbxml/ConvertXML;->getXMLChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 147
    .local v10, sn:Lorg/w3c/dom/Node;
    if-eqz v10, :cond_1

    .line 149
    check-cast v10, Lorg/w3c/dom/Element;

    .end local v10           #sn:Lorg/w3c/dom/Node;
    invoke-static {v10}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->sModel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v4, 0x1

    .line 161
    .end local v0           #DocBld:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #RootElement:Lorg/w3c/dom/Element;
    .end local v3           #XmlDoc:Lorg/w3c/dom/Document;
    .end local v6           #eleGeneral:Lorg/w3c/dom/Node;
    .end local v7           #i:I
    .end local v8           #nSize:I
    .end local v9           #nod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v11           #strName:Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 139
    .restart local v0       #DocBld:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2       #RootElement:Lorg/w3c/dom/Element;
    .restart local v3       #XmlDoc:Lorg/w3c/dom/Document;
    .restart local v6       #eleGeneral:Lorg/w3c/dom/Node;
    .restart local v7       #i:I
    .restart local v8       #nSize:I
    .restart local v9       #nod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v11       #strName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 156
    .end local v0           #DocBld:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #RootElement:Lorg/w3c/dom/Element;
    .end local v3           #XmlDoc:Lorg/w3c/dom/Document;
    .end local v6           #eleGeneral:Lorg/w3c/dom/Node;
    .end local v7           #i:I
    .end local v8           #nSize:I
    .end local v9           #nod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v11           #strName:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 158
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setConnectResponseStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_1
    const-string v1, "setConnectResponseStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 69
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v1, p1}, Lcom/futuredial/obex/OBEX_CON_PKG;->setObexPkgStream([B)Z

    move-result v0

    .line 70
    .local v0, bret:Z
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_nObexErrCode:B

    goto :goto_0
.end method

.method public setDisconnectResponseStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    const/4 v0, 0x0

    .line 90
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    const-string v1, "setDisconnectResponseStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 95
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1, p1, v0}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 96
    .local v0, bret:Z
    iget-object v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_nObexErrCode:B

    goto :goto_0
.end method

.method public setGetObjectResponseStream([B)Z
    .locals 10
    .parameter "RespStream"

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x1

    const/16 v8, -0x35

    const/4 v4, 0x0

    .line 180
    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v9, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v4

    .line 184
    :cond_1
    const-string v6, "setGetObjectResponseStream"

    invoke-static {v6, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 185
    iget-object v6, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6, p1, v4}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 186
    .local v0, b:Z
    iget-object v6, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v6

    iput-byte v6, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_nObexErrCode:B

    .line 187
    if-eqz v0, :cond_0

    .line 191
    iget-byte v6, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_nObexErrCode:B

    and-int/lit8 v6, v6, 0x7f

    const/16 v7, 0x20

    if-ne v6, v7, :cond_5

    .line 193
    iput-boolean v5, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_bObexFinished:Z

    .line 204
    :goto_1
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v6, 0x48

    invoke-virtual {v4, v6}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v1, v4

    check-cast v1, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 205
    .local v1, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v1, :cond_2

    .line 207
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_2
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v6, 0x49

    invoke-virtual {v4, v6}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v3, v4

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 210
    .local v3, dbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v3, :cond_3

    .line 212
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_3
    iget-boolean v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_bObexFinished:Z

    if-nez v4, :cond_4

    .line 216
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 218
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v4, v9}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 220
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v4, v8}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v4

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 221
    .local v2, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v6

    invoke-virtual {v4, v8, v6}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .end local v2           #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    :cond_4
    move v4, v5

    .line 223
    goto :goto_0

    .line 195
    .end local v1           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v3           #dbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    :cond_5
    iget-byte v6, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_nObexErrCode:B

    and-int/lit8 v6, v6, 0x7f

    const/16 v7, 0x10

    if-ne v6, v7, :cond_6

    .line 197
    iput-boolean v4, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_bObexFinished:Z

    goto :goto_1

    .line 201
    :cond_6
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-byte v6, p0, Lcom/futuredial/bluetooth/DetectNokiaObex;->m_nObexErrCode:B

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(I)V

    goto/16 :goto_0
.end method
