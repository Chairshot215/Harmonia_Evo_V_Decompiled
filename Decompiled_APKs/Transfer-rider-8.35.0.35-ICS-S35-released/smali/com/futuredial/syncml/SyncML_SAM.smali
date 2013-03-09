.class public Lcom/futuredial/syncml/SyncML_SAM;
.super Lcom/futuredial/syncml/SyncML_MOT;
.source "SyncML_SAM.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/futuredial/syncml/SyncML_MOT;-><init>()V

    .line 12
    new-instance v0, Lcom/futuredial/syncml/SvrSamParser;

    invoke-direct {v0}, Lcom/futuredial/syncml/SvrSamParser;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_SAM;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    .line 13
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_SAM;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 14
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_SAM;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 15
    iput-boolean v1, p0, Lcom/futuredial/syncml/SyncML_SAM;->m_bObexFinished:Z

    .line 16
    iput-boolean v1, p0, Lcom/futuredial/syncml/SyncML_SAM;->m_bSyncMLFinished:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_SAM;->m_Buffer:Ljava/util/ArrayList;

    .line 18
    iput-byte v1, p0, Lcom/futuredial/syncml/SyncML_SAM;->m_nObexErrCode:B

    .line 19
    return-void
.end method


# virtual methods
.method public ParseSyncML([B)[B
    .locals 4
    .parameter "wbxml"

    .prologue
    const/4 v2, 0x0

    .line 23
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_SAM;->activity:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_SAM;->policy:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object v2

    .line 28
    :cond_1
    invoke-static {p1}, Lcom/futuredial/wbxml/Convert;->ConvertWBXML2XmlDoc([B)Lcom/futuredial/xmlbuild/XmlDoc;

    move-result-object v0

    .line 29
    .local v0, xmlDoc:Lcom/futuredial/xmlbuild/XmlDoc;
    if-eqz v0, :cond_0

    .line 39
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_SAM;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    invoke-virtual {v3, v0}, Lcom/futuredial/syncml/SrvParser;->ParseAndBuildSyncMLDoc(Lcom/futuredial/xmlbuild/XmlDoc;)Lcom/futuredial/xmlbuild/XmlDoc;

    move-result-object v1

    .line 40
    .local v1, xmlDocRes:Lcom/futuredial/xmlbuild/XmlDoc;
    if-eqz v1, :cond_0

    .line 53
    invoke-static {v1}, Lcom/futuredial/wbxml/Convert;->SamConvertXmlDoc2WBXML(Lcom/futuredial/xmlbuild/XmlDoc;)[B

    move-result-object v2

    goto :goto_0
.end method
