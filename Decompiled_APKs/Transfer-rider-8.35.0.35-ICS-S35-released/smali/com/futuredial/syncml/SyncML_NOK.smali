.class public Lcom/futuredial/syncml/SyncML_NOK;
.super Ljava/lang/Object;
.source "SyncML_NOK.java"


# instance fields
.field protected activity:Landroid/content/Context;

.field protected alert_status:Ljava/lang/String;

.field protected bFinalEleEveryMsg:Z

.field protected category:Ljava/lang/String;

.field protected content:Ljava/lang/String;

.field protected include_ctcap:Z

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

.field protected m_bSyncMLFinished:Z

.field protected m_nObexErrCode:B

.field protected max_obex_pkg_size:I

.field protected max_obj_size:I

.field protected max_pkg_size:I

.field protected obex_connect_target:Ljava/lang/String;

.field protected obex_content_type:Ljava/lang/String;

.field protected obex_select_service_type:Ljava/lang/String;

.field protected objToPut:[B

.field protected objToPutIndex:I

.field protected pcsuite_capability_type:Ljava/lang/String;

.field protected pcsuite_target:[B

.field protected pcsuite_who:Ljava/lang/String;

.field protected policy:Ljava/lang/String;

.field protected sn:Ljava/lang/String;

.field protected support_max_obj_size:Z

.field protected support_max_pkg_size:Z

.field protected support_more_data:Z

.field protected support_number_of_change:Z

.field protected sync_ml_channel:I

.field protected sync_ml_guid:Ljava/lang/String;

.field protected syncmlParser:Lcom/futuredial/syncml/Parser;

.field protected syncml_format:Ljava/lang/String;

.field protected syncml_server_object:[B

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x800

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->activity:Landroid/content/Context;

    .line 35
    iput-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->policy:Ljava/lang/String;

    .line 37
    const-string v0, "nokia"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->category:Ljava/lang/String;

    .line 38
    const-string v0, "1.2"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->version:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->support_more_data:Z

    .line 40
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->support_number_of_change:Z

    .line 41
    iput v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->max_pkg_size:I

    .line 42
    const/high16 v0, 0x10

    iput v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->max_obj_size:I

    .line 43
    const-string v0, "text/v-card"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->content:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->include_ctcap:Z

    .line 45
    iput-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncml_server_object:[B

    .line 46
    const-string v0, "00000002-0000-1000-8000-0002ee000002"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->sync_ml_guid:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->sync_ml_channel:I

    .line 48
    iput v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->max_obex_pkg_size:I

    .line 49
    const-string v0, "SYNCML-SYNC"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_connect_target:Ljava/lang/String;

    .line 50
    const-string v0, "application/vnd.syncml.ds.notification"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_select_service_type:Ljava/lang/String;

    .line 51
    const-string v0, "application/vnd.syncml+wbxml"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_content_type:Ljava/lang/String;

    .line 52
    const-string v0, "PC Suite"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_who:Ljava/lang/String;

    .line 53
    const-string v0, "x-obex/capability"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_capability_type:Ljava/lang/String;

    .line 54
    iput-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_target:[B

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->sn:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->support_max_pkg_size:Z

    .line 57
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->support_max_obj_size:Z

    .line 58
    const-string v0, "200"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->alert_status:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPut:[B

    .line 69
    iput v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPutIndex:I

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncml_format:Ljava/lang/String;

    .line 72
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->bFinalEleEveryMsg:Z

    .line 81
    new-instance v0, Lcom/futuredial/syncml/Parser;

    invoke-direct {v0}, Lcom/futuredial/syncml/Parser;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    .line 82
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 83
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 84
    iput-boolean v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    .line 85
    iput-boolean v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bSyncMLFinished:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    .line 87
    iput-byte v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

    .line 88
    return-void
.end method


# virtual methods
.method public Byte2String([B)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 363
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 364
    .local v1, strRet:Ljava/io/StringWriter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 366
    aget-byte v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public IsObexFinished()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    return v0
.end method

.method public IsSyncMLFinished()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ParseSyncML([B)[B
    .locals 4
    .parameter "wbxml"

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->activity:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->policy:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-object v2

    .line 538
    :cond_1
    invoke-static {p1}, Lcom/futuredial/wbxml/Convert;->ConvertWBXML2XmlDoc([B)Lcom/futuredial/xmlbuild/XmlDoc;

    move-result-object v0

    .line 539
    .local v0, xmlDoc:Lcom/futuredial/xmlbuild/XmlDoc;
    if-eqz v0, :cond_0

    .line 549
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    invoke-virtual {v3, v0}, Lcom/futuredial/syncml/Parser;->ParseAndBuildSyncMLDoc(Lcom/futuredial/xmlbuild/XmlDoc;)Lcom/futuredial/xmlbuild/XmlDoc;

    move-result-object v1

    .line 550
    .local v1, xmlDocRes:Lcom/futuredial/xmlbuild/XmlDoc;
    if-eqz v1, :cond_0

    .line 563
    invoke-static {v1}, Lcom/futuredial/wbxml/Convert;->ConvertXmlDoc2WBXML(Lcom/futuredial/xmlbuild/XmlDoc;)[B

    move-result-object v2

    goto :goto_0
.end method

.method public getAbortStream()[B
    .locals 6

    .prologue
    const/16 v5, -0x35

    .line 149
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 151
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 153
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v3, v5}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v3

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v3

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 154
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 155
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_connect_target:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 156
    .local v1, csTarget:[B
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v4, 0x46

    invoke-virtual {v3, v4, v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 158
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v2

    .line 159
    .local v2, ret:[B
    const-string v3, "getAbortStream"

    invoke-static {v3, v2}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 160
    return-object v2
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectPCSuiteStream()[B
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->activity:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->policy:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 126
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v2, -0x80

    invoke-virtual {v1, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->setCommand(B)V

    .line 127
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v2, 0x46

    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_target:[B

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 128
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v2, 0x4a

    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_who:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 130
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v0

    .line 131
    .local v0, ret:[B
    const-string v1, "getConnectStream"

    invoke-static {v1, v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public getConnectStream()[B
    .locals 4

    .prologue
    .line 104
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->activity:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->policy:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 106
    :cond_0
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 110
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, -0x80

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->setCommand(B)V

    .line 111
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_connect_target:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 112
    .local v0, csTarget:[B
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x46

    invoke-virtual {v2, v3, v0}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 113
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v1

    .line 114
    .local v1, ret:[B
    const-string v2, "getConnectStream"

    invoke-static {v2, v1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectStream()[B
    .locals 6

    .prologue
    const/16 v5, -0x35

    .line 179
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 181
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v4, -0x7f

    invoke-virtual {v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 183
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v3, v5}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v3

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v3

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 184
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 185
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_connect_target:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 186
    .local v1, csTarget:[B
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v4, 0x46

    invoke-virtual {v3, v4, v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 188
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v2

    .line 189
    .local v2, ret:[B
    const-string v3, "setDisconnectResponseStream"

    invoke-static {v3, v2}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 190
    return-object v2
.end method

.method public getGetObjectStream()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    new-array v0, v3, [B

    .line 426
    .local v0, ret:[B
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 427
    const-string v1, "getGetObjectStream"

    invoke-static {v1, v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 428
    return-object v0
.end method

.method public getMax_msg_size()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parameter;->getMaxMessageSize()I

    move-result v0

    return v0
.end method

.method public getMax_obex_pkg_size()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->max_obex_pkg_size:I

    return v0
.end method

.method public getMax_obj_size()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->max_obj_size:I

    return v0
.end method

.method public getMax_pkg_size()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->max_pkg_size:I

    return v0
.end method

.method public getObex_connect_target()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_connect_target:Ljava/lang/String;

    return-object v0
.end method

.method public getObex_content_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getObex_select_service_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_select_service_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPcsuite_target()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_target:[B

    return-object v0
.end method

.method public getPcsuite_who()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_who:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getPutObjectStream()[B
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 256
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_PKG;->getSize()I

    move-result v1

    .line 257
    .local v1, nLen:I
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_CON_PKG;->getMaxPkgSize()I

    move-result v2

    .line 258
    .local v2, nMaxPkgLen:I
    sub-int v0, v2, v1

    .line 259
    .local v0, nFreeLen:I
    if-ge v0, v9, :cond_0

    .line 261
    const/4 v5, 0x0

    .line 284
    :goto_0
    return-object v5

    .line 263
    :cond_0
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPut:[B

    array-length v6, v6

    iget v7, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPutIndex:I

    sub-int v3, v6, v7

    .line 265
    .local v3, nRemainLen:I
    if-lt v0, v3, :cond_1

    .line 267
    iput-boolean v9, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    .line 268
    new-array v4, v3, [B

    .line 269
    .local v4, obj:[B
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPut:[B

    iget v7, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPutIndex:I

    invoke-static {v6, v7, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPutIndex:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPutIndex:I

    .line 271
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v7, 0x49

    invoke-virtual {v6, v7, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 282
    :goto_1
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    iget-boolean v7, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    invoke-virtual {v6, v8, v7}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v5

    .line 283
    .local v5, ret:[B
    const-string v6, "getPutObjectStream"

    invoke-static {v6, v5}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    goto :goto_0

    .line 275
    .end local v4           #obj:[B
    .end local v5           #ret:[B
    :cond_1
    new-array v4, v0, [B

    .line 276
    .restart local v4       #obj:[B
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPut:[B

    iget v7, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPutIndex:I

    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPutIndex:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPutIndex:I

    .line 278
    iput-boolean v8, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    .line 279
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v7, 0x48

    invoke-virtual {v6, v7, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    goto :goto_1
.end method

.method public getResult()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 485
    new-array v3, v6, [B

    .line 487
    .local v3, ret:[B
    const/4 v2, 0x0

    .line 488
    .local v2, nLen:I
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 489
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 491
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_0
    new-array v3, v2, [B

    .line 494
    const/4 v2, 0x0

    .line 495
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 497
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-static {v5, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 500
    :cond_1
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 501
    return-object v3
.end method

.method public getSelectServiceStream()[B
    .locals 6

    .prologue
    const/16 v5, -0x35

    .line 207
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 208
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 210
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v3, v5}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v3

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v3

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 211
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 213
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_select_service_type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 214
    .local v1, csType:[B
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v4, 0x42

    invoke-virtual {v3, v4, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 216
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v4, -0x3d

    iget-object v5, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncml_server_object:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 217
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v4, 0x49

    iget-object v5, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncml_server_object:[B

    invoke-virtual {v3, v4, v5}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 219
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v2

    .line 220
    .local v2, ret:[B
    const-string v3, "getSelectServiceStream"

    invoke-static {v3, v2}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 221
    return-object v2
.end method

.method public getSync_ml_channel()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->sync_ml_channel:I

    return v0
.end method

.method public getSync_ml_guid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->sync_ml_guid:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncmlResult()Ljava/util/ArrayList;
    .locals 9
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
    .line 506
    iget-object v7, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    invoke-virtual {v7}, Lcom/futuredial/syncml/Parser;->getItemStorage()Lcom/futuredial/syncml/ItemStorage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/futuredial/syncml/ItemStorage;->getInItemArray()Ljava/util/ArrayList;

    move-result-object v2

    .line 507
    .local v2, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/syncml/Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v3, objRet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/syncml/Item;>;"
    iget-object v7, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    invoke-virtual {v7}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/futuredial/syncml/Parameter;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, strType:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, nCount:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 511
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/futuredial/syncml/Item;

    .line 512
    .local v6, tmp:Lcom/futuredial/syncml/Item;
    invoke-virtual {v6}, Lcom/futuredial/syncml/Item;->getDataType()Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, strDType:Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 518
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 520
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    .end local v4           #strDType:Ljava/lang/String;
    .end local v6           #tmp:Lcom/futuredial/syncml/Item;
    :cond_2
    return-object v3
.end method

.method public getSyncml_server_object()[B
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncml_server_object:[B

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->version:Ljava/lang/String;

    return-object v0
.end method

.method public initGetCapabilityObject()Z
    .locals 4

    .prologue
    const/16 v3, -0x35

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    .line 348
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 349
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 351
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 353
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v1, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v1

    check-cast v1, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v1

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 354
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 355
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_capability_type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 356
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v2, 0x4a

    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_who:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 358
    const/4 v1, 0x1

    return v1
.end method

.method public initGetObject()Z
    .locals 5

    .prologue
    const/16 v4, -0x35

    .line 330
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    .line 331
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 334
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 336
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2, v4}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v2

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v2

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 337
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 339
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_content_type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 340
    .local v1, csType:[B
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v3, 0x42

    invoke-virtual {v2, v3, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 342
    const/4 v2, 0x1

    return v2
.end method

.method public initPutObject([B)V
    .locals 5
    .parameter "objToPut"

    .prologue
    const/4 v2, 0x0

    const/16 v4, -0x35

    .line 238
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    .line 239
    iput-object p1, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPut:[B

    .line 240
    iput v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPutIndex:I

    .line 242
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 243
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 245
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2, v4}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v2

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v2

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 246
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 248
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_content_type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 249
    .local v1, csType:[B
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v3, 0x42

    invoke-virtual {v2, v3, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 251
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v3, -0x3d

    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPut:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 252
    return-void
.end method

.method public isInclude_ctcap()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->include_ctcap:Z

    return v0
.end method

.method public isSupport_max_obj_size()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->support_max_obj_size:Z

    return v0
.end method

.method public isSupport_max_pkg_size()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->support_max_pkg_size:Z

    return v0
.end method

.method public isSupport_more_data()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->support_more_data:Z

    return v0
.end method

.method public isSupport_number_of_change()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->support_number_of_change:Z

    return v0
.end method

.method public setAbortResponseStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    const/4 v0, 0x0

    .line 166
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    const-string v1, "setAbortResponseStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 171
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1, p1, v0}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 172
    .local v0, bret:Z
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

    goto :goto_0
.end method

.method public setActivity(Landroid/content/Context;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/futuredial/syncml/SyncML_NOK;->activity:Landroid/content/Context;

    .line 568
    return-void
.end method

.method public setCapabilityObject([B)Z
    .locals 20
    .parameter "objCapability"

    .prologue
    .line 373
    invoke-virtual/range {p0 .. p1}, Lcom/futuredial/syncml/SyncML_NOK;->Byte2String([B)Ljava/lang/String;

    move-result-object v16

    .line 374
    .local v16, strXML:Ljava/lang/String;
    const/4 v7, 0x0

    .line 377
    .local v7, bRet:Z
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 378
    .local v3, DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 380
    .local v2, DocBld:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v17, Lorg/xml/sax/InputSource;

    new-instance v18, Ljava/io/StringReader;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v17 .. v18}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 381
    .local v6, XmlDoc:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 382
    .local v4, RootElement:Lorg/w3c/dom/Element;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;

    move-result-object v12

    .line 384
    .local v12, nod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, nSize:I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 386
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Node;

    .line 387
    .local v9, eleGeneral:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 389
    .local v14, strName:Ljava/lang/String;
    const-string v17, "General"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_1

    .line 391
    const-string v17, "SN"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/futuredial/wbxml/ConvertXML;->getXMLChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 392
    .local v13, sn:Lorg/w3c/dom/Node;
    if-eqz v13, :cond_1

    .line 394
    check-cast v13, Lorg/w3c/dom/Element;

    .end local v13           #sn:Lorg/w3c/dom/Node;
    invoke-static {v13}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v15

    .line 395
    .local v15, strSN:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncml_format:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, SyncML:Ljava/lang/String;
    invoke-static {v5}, Lcom/futuredial/wbxml/Convert;->ConvertXML2WBXML(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->syncml_server_object:[B

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncml_server_object:[B

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v17, :cond_1

    .line 401
    const/4 v7, 0x1

    .line 414
    .end local v2           #DocBld:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #RootElement:Lorg/w3c/dom/Element;
    .end local v5           #SyncML:Ljava/lang/String;
    .end local v6           #XmlDoc:Lorg/w3c/dom/Document;
    .end local v9           #eleGeneral:Lorg/w3c/dom/Node;
    .end local v10           #i:I
    .end local v11           #nSize:I
    .end local v12           #nod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v14           #strName:Ljava/lang/String;
    .end local v15           #strSN:Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 384
    .restart local v2       #DocBld:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #RootElement:Lorg/w3c/dom/Element;
    .restart local v6       #XmlDoc:Lorg/w3c/dom/Document;
    .restart local v9       #eleGeneral:Lorg/w3c/dom/Node;
    .restart local v10       #i:I
    .restart local v11       #nSize:I
    .restart local v12       #nod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v14       #strName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 409
    .end local v2           #DocBld:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #DocBldFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #RootElement:Lorg/w3c/dom/Element;
    .end local v6           #XmlDoc:Lorg/w3c/dom/Document;
    .end local v9           #eleGeneral:Lorg/w3c/dom/Node;
    .end local v10           #i:I
    .end local v11           #nSize:I
    .end local v12           #nod:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v14           #strName:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 411
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setConnectResponseStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_1
    const-string v1, "setConnectResponseStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 142
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v1, p1}, Lcom/futuredial/obex/OBEX_CON_PKG;->setObexPkgStream([B)Z

    move-result v0

    .line 143
    .local v0, bret:Z
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

    goto :goto_0
.end method

.method public setDisconnectResponseStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    const/4 v0, 0x0

    .line 195
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    const-string v1, "setDisconnectResponseStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 200
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1, p1, v0}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 201
    .local v0, bret:Z
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

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

    .line 433
    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v9, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v4

    .line 437
    :cond_1
    const-string v6, "setGetObjectResponseStream"

    invoke-static {v6, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 438
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6, p1, v4}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 439
    .local v0, b:Z
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v6

    iput-byte v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

    .line 440
    if-eqz v0, :cond_0

    .line 444
    iget-byte v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

    and-int/lit8 v6, v6, 0x7f

    const/16 v7, 0x20

    if-ne v6, v7, :cond_5

    .line 446
    iput-boolean v5, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    .line 457
    :goto_1
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v6, 0x48

    invoke-virtual {v4, v6}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v1, v4

    check-cast v1, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 458
    .local v1, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v1, :cond_2

    .line 460
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_2
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v6, 0x49

    invoke-virtual {v4, v6}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v3, v4

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 463
    .local v3, dbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v3, :cond_3

    .line 465
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_3
    iget-boolean v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    if-nez v4, :cond_4

    .line 469
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 471
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v4, v9}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 473
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v4, v8}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v4

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 474
    .local v2, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v6

    invoke-virtual {v4, v8, v6}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .end local v2           #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    :cond_4
    move v4, v5

    .line 480
    goto :goto_0

    .line 448
    .end local v1           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v3           #dbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    :cond_5
    iget-byte v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

    and-int/lit8 v6, v6, 0x7f

    const/16 v7, 0x10

    if-ne v6, v7, :cond_6

    .line 450
    iput-boolean v4, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    goto :goto_1

    .line 454
    :cond_6
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-byte v6, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(I)V

    goto/16 :goto_0
.end method

.method public setMax_msg_size(I)V
    .locals 1
    .parameter "maxMsgSize"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/futuredial/syncml/Parameter;->setMaxMessageSize(I)V

    .line 604
    return-void
.end method

.method public setPolicy(Ljava/lang/String;)Z
    .locals 19
    .parameter "policy"

    .prologue
    .line 648
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->policy:Ljava/lang/String;

    .line 652
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->activity:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 653
    .local v16, theRes:Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 654
    .local v2, am:Landroid/content/res/AssetManager;
    const-string v17, "syncml.config.xml"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 656
    .local v10, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 657
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 658
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 659
    .local v6, dom:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 661
    .local v14, root:Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/futuredial/wbxml/ConvertXML;->getXMLChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 662
    .local v13, policyNode:Lorg/w3c/dom/Node;
    if-nez v13, :cond_0

    .line 664
    const/16 v17, 0x0

    .line 798
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

    .line 667
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

    .line 668
    .local v4, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    if-nez v4, :cond_1

    .line 670
    const/16 v17, 0x0

    goto :goto_0

    .line 673
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, nCount:I
    :goto_1
    if-ge v9, v11, :cond_1a

    .line 675
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    .line 676
    .local v5, cn:Lorg/w3c/dom/Node;
    if-nez v5, :cond_3

    .line 673
    .end local v5           #cn:Lorg/w3c/dom/Node;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 680
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_3
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .line 681
    .local v15, strNodeName:Ljava/lang/String;
    const-string v17, "category"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_4

    .line 683
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->category:Ljava/lang/String;

    goto :goto_2

    .line 794
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

    .line 796
    .local v7, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_0

    .line 685
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

    .line 687
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->version:Ljava/lang/String;

    goto :goto_2

    .line 689
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_5
    const-string v17, "not_support_more_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_6

    .line 691
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->support_more_data:Z

    goto :goto_2

    .line 693
    :cond_6
    const-string v17, "not_support_number_of_change"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_7

    .line 695
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->support_number_of_change:Z

    goto :goto_2

    .line 697
    :cond_7
    const-string v17, "not_support_max_pkg_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_8

    .line 699
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->support_max_pkg_size:Z

    goto :goto_2

    .line 701
    :cond_8
    const-string v17, "not_support_max_obj_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_9

    .line 703
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->support_max_obj_size:Z

    goto/16 :goto_2

    .line 705
    :cond_9
    const-string v17, "max_pkg_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_a

    .line 707
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->max_pkg_size:I

    goto/16 :goto_2

    .line 709
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_a
    const-string v17, "max_obj_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_b

    .line 711
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->max_obj_size:I

    goto/16 :goto_2

    .line 713
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_b
    const-string v17, "content"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_c

    .line 715
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->content:Ljava/lang/String;

    goto/16 :goto_2

    .line 717
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_c
    const-string v17, "syncml_server_object"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_d

    .line 719
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v12

    .line 720
    .local v12, object:Ljava/lang/String;
    invoke-static {v12}, Lcom/futuredial/wbxml/ConvertXML;->binHex2byte(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->syncml_server_object:[B

    goto/16 :goto_2

    .line 722
    .end local v12           #object:Ljava/lang/String;
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_d
    const-string v17, "sync_ml_guid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_e

    .line 724
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->sync_ml_guid:Ljava/lang/String;

    goto/16 :goto_2

    .line 726
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_e
    const-string v17, "sync_ml_channel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_f

    .line 728
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->sync_ml_channel:I

    goto/16 :goto_2

    .line 730
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_f
    const-string v17, "max_obex_pkg_size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_10

    .line 732
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->max_obex_pkg_size:I

    goto/16 :goto_2

    .line 734
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_10
    const-string v17, "obex_connect_target"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_11

    .line 736
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->obex_connect_target:Ljava/lang/String;

    goto/16 :goto_2

    .line 738
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_11
    const-string v17, "obex_select_service_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_12

    .line 740
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->obex_select_service_type:Ljava/lang/String;

    goto/16 :goto_2

    .line 742
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_12
    const-string v17, "obex_content_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_13

    .line 744
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->obex_content_type:Ljava/lang/String;

    goto/16 :goto_2

    .line 746
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_13
    const-string v17, "alert_status"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_14

    .line 748
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->alert_status:Ljava/lang/String;

    goto/16 :goto_2

    .line 750
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_14
    const-string v17, "include_ctcap"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_15

    .line 752
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->include_ctcap:Z

    goto/16 :goto_2

    .line 754
    :cond_15
    const-string v17, "pcsuite_who"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_16

    .line 756
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_who:Ljava/lang/String;

    goto/16 :goto_2

    .line 758
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_16
    const-string v17, "pcsuite_target"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_17

    .line 760
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v12

    .line 761
    .restart local v12       #object:Ljava/lang/String;
    invoke-static {v12}, Lcom/futuredial/wbxml/ConvertXML;->binHex2byte(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_target:[B

    goto/16 :goto_2

    .line 763
    .end local v12           #object:Ljava/lang/String;
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_17
    const-string v17, "pcsuite_capability_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_18

    .line 765
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->pcsuite_capability_type:Ljava/lang/String;

    goto/16 :goto_2

    .line 767
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_18
    const-string v17, "syncml_format"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_19

    .line 769
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->syncml_format:Ljava/lang/String;

    goto/16 :goto_2

    .line 771
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_19
    const-string v17, "final_element_every_msg"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_2

    .line 773
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_NOK;->bFinalEleEveryMsg:Z

    goto/16 :goto_2

    .line 777
    .end local v15           #strNodeName:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->include_ctcap:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parser;->setIncludeCTCap(Z)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->alert_status:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parser;->setAlertStatus(Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->bFinalEleEveryMsg:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parser;->setFinalEleEveryMsg(Z)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->support_more_data:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportMoreData(Z)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->support_number_of_change:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportNumberOfChange(Z)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->max_pkg_size:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setMaxMessageSize(I)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->max_obj_size:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setMaxObjectSize(I)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->content:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setContentType(Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getItemStorage()Lcom/futuredial/syncml/ItemStorage;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->content:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/ItemStorage;->setContentType(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->support_max_pkg_size:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportMaxMessageSize(Z)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->syncmlParser:Lcom/futuredial/syncml/Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/Parser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->support_max_obj_size:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/Parameter;->setSupportMaxObjectSize(Z)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->max_obex_pkg_size:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/obex/OBEX_CON_PKG;->setMaxPkgSizeForce(I)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/obex/OBEX_CON_PKG;->setVersion(B)V

    .line 792
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public setPutObjectRespStream([B)Z
    .locals 6
    .parameter "RespStream"

    .prologue
    const/4 v0, 0x0

    const/16 v5, -0x35

    .line 289
    if-eqz p1, :cond_0

    array-length v3, p1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    const-string v3, "setPutObjectRespStream"

    invoke-static {v3, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 294
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3, p1, v0}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 295
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    .line 297
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v3

    iput-byte v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

    .line 299
    iget-boolean v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_bObexFinished:Z

    if-nez v3, :cond_2

    .line 301
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 303
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 305
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v3, v5}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v3

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v1, v3

    check-cast v1, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 306
    .local v1, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 308
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->obex_content_type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 309
    .local v2, csType:[B
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v4, 0x42

    invoke-virtual {v3, v4, v2}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    goto :goto_0

    .line 313
    .end local v1           #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    .end local v2           #csType:[B
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/futuredial/syncml/SyncML_NOK;->objToPut:[B

    goto :goto_0
.end method

.method public setSelectServiceResponseStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    const/4 v0, 0x0

    .line 226
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    const-string v1, "setSelectServiceResponseStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 231
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1, p1, v0}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 232
    .local v0, bret:Z
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/syncml/SyncML_NOK;->m_nObexErrCode:B

    goto :goto_0
.end method
