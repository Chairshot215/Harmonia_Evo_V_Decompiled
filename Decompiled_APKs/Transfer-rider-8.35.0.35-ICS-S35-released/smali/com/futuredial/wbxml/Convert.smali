.class public Lcom/futuredial/wbxml/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertWBXML2XML([B)Ljava/lang/String;
    .locals 2
    .parameter "cWBXMLDataStream"

    .prologue
    .line 9
    new-instance v0, Lcom/futuredial/wbxml/ConvertWBXML;

    invoke-direct {v0}, Lcom/futuredial/wbxml/ConvertWBXML;-><init>()V

    .line 10
    .local v0, cov:Lcom/futuredial/wbxml/ConvertWBXML;
    invoke-virtual {v0, p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ConvertToXML([B)Ljava/lang/String;

    move-result-object v1

    .line 11
    .local v1, strRet:Ljava/lang/String;
    const/4 v0, 0x0

    .line 13
    return-object v1
.end method

.method public static ConvertWBXML2XmlDoc([B)Lcom/futuredial/xmlbuild/XmlDoc;
    .locals 2
    .parameter "cWBXMLDataStream"

    .prologue
    .line 18
    new-instance v0, Lcom/futuredial/wbxml/ConvertWBXML;

    invoke-direct {v0}, Lcom/futuredial/wbxml/ConvertWBXML;-><init>()V

    .line 19
    .local v0, cov:Lcom/futuredial/wbxml/ConvertWBXML;
    invoke-virtual {v0, p0}, Lcom/futuredial/wbxml/ConvertWBXML;->ConvertToXmlDoc([B)Lcom/futuredial/xmlbuild/XmlDoc;

    move-result-object v1

    .line 20
    .local v1, doc:Lcom/futuredial/xmlbuild/XmlDoc;
    const/4 v0, 0x0

    .line 22
    return-object v1
.end method

.method public static ConvertXML2WBXML(Ljava/lang/String;)[B
    .locals 2
    .parameter "strXML"

    .prologue
    .line 42
    new-instance v0, Lcom/futuredial/wbxml/ConvertXML;

    invoke-direct {v0}, Lcom/futuredial/wbxml/ConvertXML;-><init>()V

    .line 43
    .local v0, cov:Lcom/futuredial/wbxml/ConvertXML;
    invoke-virtual {v0, p0}, Lcom/futuredial/wbxml/ConvertXML;->ConvertToWBXML(Ljava/lang/String;)[B

    move-result-object v1

    .line 44
    .local v1, ret:[B
    const/4 v0, 0x0

    .line 46
    return-object v1
.end method

.method public static ConvertXmlDoc2WBXML(Lcom/futuredial/xmlbuild/XmlDoc;)[B
    .locals 2
    .parameter "xmlDoc"

    .prologue
    .line 26
    new-instance v0, Lcom/futuredial/wbxml/ConvertXML;

    invoke-direct {v0}, Lcom/futuredial/wbxml/ConvertXML;-><init>()V

    .line 27
    .local v0, cov:Lcom/futuredial/wbxml/ConvertXML;
    invoke-virtual {v0, p0}, Lcom/futuredial/wbxml/ConvertXML;->ConvertXmlDoc2WBXML(Lcom/futuredial/xmlbuild/XmlDoc;)[B

    move-result-object v1

    .line 28
    .local v1, ret:[B
    const/4 v0, 0x0

    .line 30
    return-object v1
.end method

.method public static SamConvertXmlDoc2WBXML(Lcom/futuredial/xmlbuild/XmlDoc;)[B
    .locals 2
    .parameter "xmlDoc"

    .prologue
    .line 34
    new-instance v0, Lcom/futuredial/wbxml/SamConvertXML;

    invoke-direct {v0}, Lcom/futuredial/wbxml/SamConvertXML;-><init>()V

    .line 35
    .local v0, cov:Lcom/futuredial/wbxml/SamConvertXML;
    invoke-virtual {v0, p0}, Lcom/futuredial/wbxml/SamConvertXML;->ConvertXmlDoc2WBXML(Lcom/futuredial/xmlbuild/XmlDoc;)[B

    move-result-object v1

    .line 36
    .local v1, ret:[B
    const/4 v0, 0x0

    .line 38
    return-object v1
.end method
