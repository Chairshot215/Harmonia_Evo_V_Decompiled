.class public Lcom/futuredial/wbxml/ConvertWBXML;
.super Ljava/lang/Object;
.source "ConvertWBXML.java"


# instance fields
.field protected m_EleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/futuredial/xmlbuild/XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field protected m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

.field protected m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

.field protected m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

.field protected m_bVxxAsUnicode:Z

.field protected m_nCharset:I

.field protected m_nCodePageID:I

.field protected m_nDocID:I

.field protected m_nStringTblID:I

.field protected m_nWBXMLVersion:I

.field protected m_strCodePageStr:Ljava/lang/String;

.field protected m_strTbl:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_bVxxAsUnicode:Z

    .line 32
    iput v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nStringTblID:I

    .line 33
    iput v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    .line 34
    iput v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCharset:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nWBXMLVersion:I

    .line 36
    new-instance v0, Lcom/futuredial/xmlbuild/XmlDoc;

    invoke-direct {v0}, Lcom/futuredial/xmlbuild/XmlDoc;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    .line 38
    new-instance v0, Lcom/futuredial/wbxml/BinArray;

    invoke-direct {v0}, Lcom/futuredial/wbxml/BinArray;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    .line 39
    new-instance v0, Lcom/futuredial/wbxml/XMLToken;

    invoke-direct {v0}, Lcom/futuredial/wbxml/XMLToken;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strTbl:Ljava/util/Vector;

    .line 41
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    .line 43
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    .line 45
    return-void
.end method

.method public static ByteXStringW2StringW(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "strData"

    .prologue
    const/4 v7, 0x2

    .line 239
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 241
    :cond_0
    const-string v5, ""

    .line 269
    :goto_0
    return-object v5

    .line 256
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 259
    add-int/lit8 v2, v1, 0x4

    .line 260
    .local v2, len:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v2, v5, :cond_2

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 264
    :cond_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, str:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v0, v5

    .line 267
    .local v0, hexStr:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 269
    .end local v0           #hexStr:C
    .end local v2           #len:I
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static byte2StringA([B)Ljava/lang/String;
    .locals 4
    .parameter "binData"

    .prologue
    .line 211
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 213
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-object v2

    .line 215
    :cond_1
    const/4 v1, 0x0

    .line 216
    .local v1, ret:[C
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_2

    .line 218
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [C

    .line 219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 221
    aget-byte v2, p0, v0

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 222
    aget-char v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    .end local v0           #i:I
    :cond_2
    array-length v2, p0

    new-array v1, v2, [C

    .line 228
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 230
    aget-byte v2, p0, v0

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 231
    aget-char v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 234
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static byte2XStringW([B)Ljava/lang/String;
    .locals 7
    .parameter "binData"

    .prologue
    .line 274
    array-length v5, p0

    div-int/lit8 v5, v5, 0x2

    new-array v4, v5, [C

    .line 275
    .local v4, ret:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 277
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 278
    .local v1, h:I
    aget-byte v5, p0, v2

    and-int/lit16 v3, v5, 0xff

    .line 279
    .local v3, l:I
    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v5, v3

    const v6, 0xffff

    and-int v0, v5, v6

    .line 280
    .local v0, c:I
    div-int/lit8 v5, v2, 0x2

    int-to-char v6, v0

    aput-char v6, v4, v5

    .line 281
    add-int/lit8 v2, v2, 0x2

    .line 282
    goto :goto_0

    .line 283
    .end local v0           #c:I
    .end local v1           #h:I
    .end local v3           #l:I
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method


# virtual methods
.method public ConvertToXML([B)Ljava/lang/String;
    .locals 2
    .parameter "cWBXMLDataStream"

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/futuredial/wbxml/ConvertWBXML;->ConvertToXmlDoc([B)Lcom/futuredial/xmlbuild/XmlDoc;

    move-result-object v0

    .line 594
    .local v0, doc:Lcom/futuredial/xmlbuild/XmlDoc;
    invoke-virtual {v0}, Lcom/futuredial/xmlbuild/XmlDoc;->getXmlString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, strRet:Ljava/lang/String;
    return-object v1
.end method

.method public ConvertToXmlDoc([B)Lcom/futuredial/xmlbuild/XmlDoc;
    .locals 2
    .parameter "cWBXMLDataStream"

    .prologue
    const/4 v0, 0x0

    .line 562
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    invoke-virtual {v1}, Lcom/futuredial/xmlbuild/XmlDoc;->clearContent()V

    .line 564
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v1, p1}, Lcom/futuredial/wbxml/BinArray;->setData([B)V

    .line 566
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseWBXMLVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-object v0

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseWBXMLDocID()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseWBXMLDocIDByStringTbl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v1}, Lcom/futuredial/wbxml/BinArray;->getRemainSize()I

    move-result v1

    if-lez v1, :cond_3

    .line 583
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseTag()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    goto :goto_0
.end method

.method protected ParseEndFlag()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ParseOpaqueData()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 292
    iget-object v12, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v12}, Lcom/futuredial/wbxml/BinArray;->getInt32()I

    move-result v5

    .line 293
    .local v5, nLen:I
    iget-object v12, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v12, v5}, Lcom/futuredial/wbxml/BinArray;->getBinData(I)[B

    move-result-object v1

    .line 294
    .local v1, data:[B
    const/4 v4, 0x0

    .line 295
    .local v4, it:Lcom/futuredial/xmlbuild/XmlElement;
    iget-object v12, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 297
    iget-object v12, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #it:Lcom/futuredial/xmlbuild/XmlElement;
    check-cast v4, Lcom/futuredial/xmlbuild/XmlElement;

    .line 303
    .restart local v4       #it:Lcom/futuredial/xmlbuild/XmlElement;
    iput-boolean v11, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_bVxxAsUnicode:Z

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, bDevinf:Z
    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Data"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    .line 307
    invoke-virtual {v4}, Lcom/futuredial/xmlbuild/XmlElement;->getParentElement()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 308
    .local v6, ptXml:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v6, :cond_0

    .line 310
    const-string v11, "Meta"

    invoke-virtual {v6, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 311
    .local v8, xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v8, :cond_2

    .line 313
    const-string v11, "Type"

    invoke-virtual {v8, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 314
    .local v9, xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v9, :cond_0

    .line 316
    invoke-virtual {v9}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, strType:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 318
    const-string v11, "vmessage"

    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_0

    .line 320
    iput-boolean v10, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_bVxxAsUnicode:Z

    .line 350
    .end local v6           #ptXml:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v7           #strType:Ljava/lang/String;
    .end local v8           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v9           #xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 352
    new-instance v2, Lcom/futuredial/wbxml/ConvertWBXML;

    invoke-direct {v2}, Lcom/futuredial/wbxml/ConvertWBXML;-><init>()V

    .line 353
    .local v2, devConvert:Lcom/futuredial/wbxml/ConvertWBXML;
    invoke-virtual {v2, v1}, Lcom/futuredial/wbxml/ConvertWBXML;->ConvertToXmlDoc([B)Lcom/futuredial/xmlbuild/XmlDoc;

    move-result-object v3

    .line 354
    .local v3, doc:Lcom/futuredial/xmlbuild/XmlDoc;
    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlDoc;->getRootElement()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 376
    .end local v0           #bDevinf:Z
    .end local v2           #devConvert:Lcom/futuredial/wbxml/ConvertWBXML;
    .end local v3           #doc:Lcom/futuredial/xmlbuild/XmlDoc;
    :goto_1
    return v10

    :cond_1
    move v10, v11

    .line 301
    goto :goto_1

    .line 326
    .restart local v0       #bDevinf:Z
    .restart local v6       #ptXml:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v8       #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_2
    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlElement;->getParentElement()Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v6

    .line 327
    if-eqz v6, :cond_0

    .line 329
    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Put"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v6}, Lcom/futuredial/xmlbuild/XmlElement;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Results"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    .line 331
    :cond_3
    const-string v11, "Meta"

    invoke-virtual {v6, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v8

    .line 332
    if-eqz v8, :cond_0

    .line 334
    const-string v11, "Type"

    invoke-virtual {v8, v11}, Lcom/futuredial/xmlbuild/XmlElement;->getChild(Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlElement;

    move-result-object v9

    .line 335
    .restart local v9       #xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    if-eqz v9, :cond_0

    .line 337
    invoke-virtual {v9}, Lcom/futuredial/xmlbuild/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 338
    .restart local v7       #strType:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 339
    const-string v11, "devinf"

    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_0

    .line 341
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    .end local v6           #ptXml:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v7           #strType:Ljava/lang/String;
    .end local v8           #xmlMeta:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v9           #xmlType:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_4
    iget-boolean v11, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_bVxxAsUnicode:Z

    if-eqz v11, :cond_6

    .line 360
    array-length v11, v1

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_5

    .line 362
    const-string v11, "coding"

    const-string v12, "binhex"

    invoke-virtual {v4, v11, v12}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 363
    invoke-virtual {v4, v1}, Lcom/futuredial/xmlbuild/XmlElement;->setCDATABinHexValue([B)V

    goto :goto_1

    .line 368
    :cond_5
    invoke-static {v1}, Lcom/futuredial/wbxml/ConvertWBXML;->byte2XStringW([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/futuredial/xmlbuild/XmlElement;->setCDATAValue(Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :cond_6
    invoke-static {v1}, Lcom/futuredial/wbxml/ConvertWBXML;->byte2StringA([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/futuredial/xmlbuild/XmlElement;->setCDATAValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected ParseStringA()Z
    .locals 3

    .prologue
    .line 121
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v2}, Lcom/futuredial/wbxml/BinArray;->getStringA()[B

    move-result-object v1

    .line 122
    .local v1, rs:[B
    array-length v2, v1

    if-lez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/xmlbuild/XmlElement;

    .line 127
    .local v0, it:Lcom/futuredial/xmlbuild/XmlElement;
    invoke-static {v1}, Lcom/futuredial/wbxml/ConvertWBXML;->byte2StringA([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/futuredial/xmlbuild/XmlElement;->setValue(Ljava/lang/String;)V

    .line 129
    .end local v0           #it:Lcom/futuredial/xmlbuild/XmlElement;
    :cond_0
    const/4 v2, 0x1

    .line 131
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected ParseSwitchPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v1}, Lcom/futuredial/wbxml/BinArray;->getByte()I

    move-result v1

    iput v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    .line 138
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    sparse-switch v1, :sswitch_data_0

    .line 196
    :goto_0
    return v0

    .line 141
    :sswitch_0
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    new-instance v0, Lcom/futuredial/wbxml/SyncML12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/SyncML12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 145
    const-string v0, "syncml:SYNCML1.2"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    .line 196
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :pswitch_1
    new-instance v0, Lcom/futuredial/wbxml/MetInf12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/MetInf12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 149
    const-string v0, "syncml:metinf"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_1

    .line 156
    :sswitch_1
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 159
    :pswitch_2
    new-instance v0, Lcom/futuredial/wbxml/DevInf12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/DevInf12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 160
    const-string v0, "syncml:devinf"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_1

    .line 167
    :sswitch_2
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 170
    :pswitch_3
    new-instance v0, Lcom/futuredial/wbxml/SyncML11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/SyncML11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 171
    const-string v0, "syncml:SYNCML1.1"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_1

    .line 174
    :pswitch_4
    new-instance v0, Lcom/futuredial/wbxml/MetInf11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/MetInf11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 175
    const-string v0, "syncml:metinf"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_1

    .line 182
    :sswitch_3
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_3

    goto :goto_0

    .line 185
    :pswitch_5
    new-instance v0, Lcom/futuredial/wbxml/DevInf11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/DevInf11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 186
    const-string v0, "syncml:devinf"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_1

    .line 138
    :sswitch_data_0
    .sparse-switch
        0xfd3 -> :sswitch_2
        0xfd4 -> :sswitch_3
        0x1201 -> :sswitch_0
        0x1203 -> :sswitch_1
    .end sparse-switch

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 156
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 167
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 182
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method protected ParseTag()Z
    .locals 3

    .prologue
    .line 485
    const/4 v1, 0x1

    .line 486
    .local v1, ret:Z
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v2}, Lcom/futuredial/wbxml/BinArray;->getByte()I

    move-result v0

    .line 487
    .local v0, nTag:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseStringA()Z

    move-result v1

    .line 507
    :goto_0
    return v1

    .line 491
    :cond_0
    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseSwitchPage()Z

    move-result v1

    goto :goto_0

    .line 495
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseEndFlag()Z

    move-result v1

    goto :goto_0

    .line 499
    :cond_2
    const/16 v2, 0xc3

    if-ne v0, v2, :cond_3

    .line 501
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseOpaqueData()Z

    move-result v1

    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {p0, v0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseTagContent(I)Z

    move-result v1

    goto :goto_0
.end method

.method protected ParseTagContent(I)Z
    .locals 9
    .parameter "nTag"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 448
    and-int/lit16 v7, p1, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_4

    move v0, v6

    .line 449
    .local v0, bExistAttr:Z
    :goto_0
    and-int/lit8 v7, p1, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_0

    move v1, v6

    .line 450
    .local v1, bExistContent:Z
    :cond_0
    and-int/lit8 v4, p1, 0x3f

    .line 451
    .local v4, nRealTag:I
    invoke-virtual {p0, v4}, Lcom/futuredial/wbxml/ConvertWBXML;->getTagName(I)Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, strTag:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 455
    const-string v7, "wbxml"

    const-string v8, "convert->ParseTagContent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    new-instance v2, Lcom/futuredial/xmlbuild/XmlElement;

    invoke-direct {v2, v5}, Lcom/futuredial/xmlbuild/XmlElement;-><init>(Ljava/lang/String;)V

    .line 459
    .local v2, ele:Lcom/futuredial/xmlbuild/XmlElement;
    iget v7, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    invoke-virtual {v2, v7}, Lcom/futuredial/xmlbuild/XmlElement;->setNameSpace(I)V

    .line 461
    iget-object v7, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 463
    iget-object v7, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/xmlbuild/XmlElement;

    .line 464
    .local v3, it:Lcom/futuredial/xmlbuild/XmlElement;
    invoke-virtual {v3}, Lcom/futuredial/xmlbuild/XmlElement;->getNameSpace()I

    move-result v7

    invoke-virtual {v2}, Lcom/futuredial/xmlbuild/XmlElement;->getNameSpace()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 466
    const-string v7, "xmlns"

    iget-object v8, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 468
    :cond_2
    invoke-virtual {v2, v3}, Lcom/futuredial/xmlbuild/XmlElement;->setParentElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 469
    invoke-virtual {v3, v2}, Lcom/futuredial/xmlbuild/XmlElement;->addElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 477
    .end local v3           #it:Lcom/futuredial/xmlbuild/XmlElement;
    :goto_1
    if-eqz v1, :cond_3

    .line 479
    iget-object v7, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_EleStack:Ljava/util/Stack;

    invoke-virtual {v7, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_3
    return v6

    .end local v0           #bExistAttr:Z
    .end local v1           #bExistContent:Z
    .end local v2           #ele:Lcom/futuredial/xmlbuild/XmlElement;
    .end local v4           #nRealTag:I
    .end local v5           #strTag:Ljava/lang/String;
    :cond_4
    move v0, v1

    .line 448
    goto :goto_0

    .line 473
    .restart local v0       #bExistAttr:Z
    .restart local v1       #bExistContent:Z
    .restart local v2       #ele:Lcom/futuredial/xmlbuild/XmlElement;
    .restart local v4       #nRealTag:I
    .restart local v5       #strTag:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/futuredial/xmlbuild/XmlElement;->setParentElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    .line 474
    const-string v7, "xmlns"

    iget-object v8, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/futuredial/xmlbuild/XmlElement;->addAttr(Ljava/lang/String;Ljava/lang/String;)Lcom/futuredial/xmlbuild/XmlAttr;

    .line 475
    iget-object v7, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    invoke-virtual {v7, v2}, Lcom/futuredial/xmlbuild/XmlDoc;->setRootElement(Lcom/futuredial/xmlbuild/XmlElement;)V

    goto :goto_1
.end method

.method protected ParseWBXMLCharset()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0}, Lcom/futuredial/wbxml/BinArray;->getInt32()I

    move-result v0

    iput v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCharset:I

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected ParseWBXMLDocID()Z
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0}, Lcom/futuredial/wbxml/BinArray;->getInt32()I

    move-result v0

    iput v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    .line 61
    iget v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    if-lez v0, :cond_5

    .line 63
    iget v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    const/16 v1, 0x1201

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    const-string v1, "SyncML"

    const-string v2, "-//SYNCML//DTD_SyncML_1.2//EN"

    const-string v3, "http://www.openmobilealliance.org/tech/DTD/OMA-TS-SyncML_RepPro_DTD-V1_2.dtd"

    invoke-virtual {v0, v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlDoc;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/futuredial/wbxml/SyncML12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/SyncML12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 67
    const-string v0, "syncml:SYNCML1.2"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    .line 96
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 69
    :cond_0
    iget v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    const/16 v1, 0x1203

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    const/16 v1, 0x1023

    if-ne v0, v1, :cond_2

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    const-string v1, "DevInf"

    const-string v2, "-//SYNCML//DTD_DevInf_1.2//EN"

    const-string v3, "http://www.openmobilealliance.org/tech/DTD/OMA-TS-SyncML_RepPro_DTD-V1_2.dtd"

    invoke-virtual {v0, v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlDoc;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/futuredial/wbxml/DevInf12Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/DevInf12Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 73
    const-string v0, "syncml:devinf"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_2
    iget v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    const/16 v1, 0xfd3

    if-ne v0, v1, :cond_3

    .line 77
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    const-string v1, "SyncML"

    const-string v2, "-//SYNCML//DTD_SyncML_1.1//EN"

    const-string v3, "http://www.openmobilealliance.org/tech/DTD/OMA-TS-SyncML_RepPro_DTD-V1_1.dtd"

    invoke-virtual {v0, v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlDoc;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/futuredial/wbxml/SyncML11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/SyncML11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 79
    const-string v0, "syncml:SYNCML1.1"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_3
    iget v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    const/16 v1, 0xfd4

    if-ne v0, v1, :cond_4

    .line 83
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    const-string v1, "DevInf"

    const-string v2, "-//SYNCML//DTD_DevInf_1.1//EN"

    const-string v3, "http://www.openmobilealliance.org/tech/DTD/OMA-TS-SyncML_RepPro_DTD-V1_1.dtd"

    invoke-virtual {v0, v1, v2, v3}, Lcom/futuredial/xmlbuild/XmlDoc;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/futuredial/wbxml/DevInf11Token;

    invoke-direct {v0}, Lcom/futuredial/wbxml/DevInf11Token;-><init>()V

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 85
    const-string v0, "syncml:devinf"

    iput-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0}, Lcom/futuredial/wbxml/BinArray;->getByte()I

    move-result v0

    iput v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nStringTblID:I

    goto :goto_0
.end method

.method protected ParseWBXMLDocIDByStringTbl()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 512
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseWBXMLCharset()Z

    move-result v2

    if-nez v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return v1

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ParseWBXMLStringTbl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strTbl:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    if-nez v2, :cond_2

    .line 523
    iget-object v2, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strTbl:Ljava/util/Vector;

    iget v3, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nStringTblID:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    .local v0, strDocType:Ljava/lang/String;
    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 525
    const-string v2, "-//SYNCML//DTD_SyncML_1.2//EN"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 527
    const/16 v1, 0x1201

    iput v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    .line 528
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    const-string v2, "SyncML"

    const-string v3, "-//SYNCML//DTD_SyncML_1.2//EN"

    const-string v4, "http://www.openmobilealliance.org/tech/DTD/OMA-TS-SyncML_RepPro_DTD-V1_2.dtd"

    invoke-virtual {v1, v2, v3, v4}, Lcom/futuredial/xmlbuild/XmlDoc;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v1, Lcom/futuredial/wbxml/SyncML12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 530
    const-string v1, "syncml:SYNCML1.2"

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    .line 558
    .end local v0           #strDocType:Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 532
    .restart local v0       #strDocType:Ljava/lang/String;
    :cond_3
    const-string v2, "-//SYNCML//DTD_DevInf_1.2//EN"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 534
    const/16 v1, 0x1203

    iput v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    .line 535
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    const-string v2, "DevInf"

    const-string v3, "-//SYNCML//DTD_DevInf_1.2//EN"

    const-string v4, "http://www.openmobilealliance.org/tech/DTD/OMA-TS-SyncML_RepPro_DTD-V1_2.dtd"

    invoke-virtual {v1, v2, v3, v4}, Lcom/futuredial/xmlbuild/XmlDoc;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v1, Lcom/futuredial/wbxml/DevInf12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 537
    const-string v1, "syncml:devinf"

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_1

    .line 539
    :cond_4
    const-string v2, "-//SYNCML//DTD_SyncML_1.1//EN"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_5

    .line 541
    const/16 v1, 0xfd3

    iput v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    .line 542
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    const-string v2, "SyncML"

    const-string v3, "-//SYNCML//DTD_SyncML_1.1//EN"

    const-string v4, "http://www.openmobilealliance.org/tech/DTD/OMA-TS-SyncML_RepPro_DTD-V1_1.dtd"

    invoke-virtual {v1, v2, v3, v4}, Lcom/futuredial/xmlbuild/XmlDoc;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v1, Lcom/futuredial/wbxml/SyncML11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 544
    const-string v1, "syncml:SYNCML1.1"

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_1

    .line 546
    :cond_5
    const-string v2, "-//SYNCML//DTD_DevInf_1.1//EN"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 548
    const/16 v1, 0xfd4

    iput v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    .line 549
    iget-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLDoc:Lcom/futuredial/xmlbuild/XmlDoc;

    const-string v2, "DevInf"

    const-string v3, "-//SYNCML//DTD_DevInf_1.1//EN"

    const-string v4, "http://www.openmobilealliance.org/tech/DTD/OMA-TS-SyncML_RepPro_DTD-V1_1.dtd"

    invoke-virtual {v1, v2, v3, v4}, Lcom/futuredial/xmlbuild/XmlDoc;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v1, Lcom/futuredial/wbxml/DevInf11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 551
    const-string v1, "syncml:devinf"

    iput-object v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strCodePageStr:Ljava/lang/String;

    goto :goto_1
.end method

.method protected ParseWBXMLStringTbl()Z
    .locals 5

    .prologue
    .line 107
    iget-object v3, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strTbl:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 108
    iget-object v3, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v3}, Lcom/futuredial/wbxml/BinArray;->getInt32()I

    move-result v1

    .line 109
    .local v1, nLen:I
    const/4 v0, 0x0

    .line 110
    .local v0, nIndex:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 112
    iget-object v3, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v3, v1}, Lcom/futuredial/wbxml/BinArray;->getStringA(I)[B

    move-result-object v2

    .line 113
    .local v2, str:[B
    array-length v3, v2

    add-int/2addr v0, v3

    .line 114
    iget-object v3, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_strTbl:Ljava/util/Vector;

    invoke-static {v2}, Lcom/futuredial/wbxml/ConvertWBXML;->byte2StringA([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v2           #str:[B
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method protected ParseWBXMLVersion()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_WBXMLBuffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0}, Lcom/futuredial/wbxml/BinArray;->getByte()I

    move-result v0

    iput v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nWBXMLVersion:I

    .line 50
    iget v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nWBXMLVersion:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDataType()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_bVxxAsUnicode:Z

    return v0
.end method

.method protected getNewCodePageStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, strRet:Ljava/lang/String;
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nDocID:I

    sparse-switch v1, :sswitch_data_0

    .line 441
    const/4 v0, 0x0

    .line 444
    :goto_0
    return-object v0

    .line 391
    :sswitch_0
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_0

    .line 400
    const/4 v0, 0x0

    .line 401
    goto :goto_0

    .line 394
    :pswitch_0
    const-string v0, "syncml:SYNCML1.2"

    .line 395
    goto :goto_0

    .line 397
    :pswitch_1
    const-string v0, "syncml:metinf"

    .line 398
    goto :goto_0

    .line 405
    :sswitch_1
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_1

    .line 411
    const/4 v0, 0x0

    .line 412
    goto :goto_0

    .line 408
    :pswitch_2
    const-string v0, "syncml:devinf"

    .line 409
    goto :goto_0

    .line 416
    :sswitch_2
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_2

    .line 425
    const/4 v0, 0x0

    .line 426
    goto :goto_0

    .line 419
    :pswitch_3
    const-string v0, "syncml:SYNCML1.1"

    .line 420
    goto :goto_0

    .line 422
    :pswitch_4
    const-string v0, "syncml:metinf"

    .line 423
    goto :goto_0

    .line 430
    :sswitch_3
    iget v1, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_nCodePageID:I

    packed-switch v1, :pswitch_data_3

    .line 436
    const/4 v0, 0x0

    .line 437
    goto :goto_0

    .line 433
    :pswitch_5
    const-string v0, "syncml:devinf"

    .line 434
    goto :goto_0

    .line 388
    :sswitch_data_0
    .sparse-switch
        0xfd3 -> :sswitch_2
        0xfd4 -> :sswitch_3
        0x1201 -> :sswitch_0
        0x1203 -> :sswitch_1
    .end sparse-switch

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 405
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 416
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 430
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method protected getTagName(I)Ljava/lang/String;
    .locals 1
    .parameter "nTag"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/futuredial/wbxml/ConvertWBXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    invoke-virtual {v0, p1}, Lcom/futuredial/wbxml/XMLToken;->getTokenTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
