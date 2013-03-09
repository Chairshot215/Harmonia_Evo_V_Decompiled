.class public Lcom/futuredial/wbxml/SamConvertXML;
.super Lcom/futuredial/wbxml/ConvertXML;
.source "SamConvertXML.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/futuredial/wbxml/ConvertXML;-><init>()V

    return-void
.end method


# virtual methods
.method protected encodeWBXMLVersion()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12
    iget-object v0, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    invoke-virtual {v0, v1}, Lcom/futuredial/wbxml/BinArray;->setByte(I)V

    .line 13
    return v1
.end method

.method protected encodeXmlDocPubDocID()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    iget-object v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_XmlDocEx:Lcom/futuredial/xmlbuild/XmlDoc;

    invoke-virtual {v1}, Lcom/futuredial/xmlbuild/XmlDoc;->getDocTypeString()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, strPublicID:Ljava/lang/String;
    iput-boolean v2, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_bCodePageChanged:Z

    .line 20
    iput v2, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_nCodePageID:I

    .line 21
    const-string v1, "-//SYNCML//DTD_SyncML_1.2//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 23
    const/16 v1, 0x1201

    iput v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_nDocID:I

    .line 24
    new-instance v1, Lcom/futuredial/wbxml/SyncML12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_Buffer:Lcom/futuredial/wbxml/BinArray;

    iget v2, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_nDocID:I

    invoke-virtual {v1, v2}, Lcom/futuredial/wbxml/BinArray;->setInt32(I)V

    .line 46
    const/4 v1, 0x1

    return v1

    .line 26
    :cond_0
    const-string v1, "-//SYNCML//DTD_DevInf_1.2//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 28
    const/16 v1, 0x1203

    iput v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_nDocID:I

    .line 29
    new-instance v1, Lcom/futuredial/wbxml/DevInf12Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf12Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 31
    :cond_1
    const-string v1, "-//SYNCML//DTD_SyncML_1.1//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 33
    const/16 v1, 0xfd3

    iput v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_nDocID:I

    .line 34
    new-instance v1, Lcom/futuredial/wbxml/SyncML11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/SyncML11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 36
    :cond_2
    const-string v1, "-//SYNCML//DTD_DevInf_1.1//EN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 38
    const/16 v1, 0xfd4

    iput v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_nDocID:I

    .line 39
    new-instance v1, Lcom/futuredial/wbxml/DevInf11Token;

    invoke-direct {v1}, Lcom/futuredial/wbxml/DevInf11Token;-><init>()V

    iput-object v1, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_XMLToken:Lcom/futuredial/wbxml/XMLToken;

    goto :goto_0

    .line 43
    :cond_3
    iput v2, p0, Lcom/futuredial/wbxml/SamConvertXML;->m_nDocID:I

    goto :goto_0
.end method
