.class public Lcom/futuredial/syncml/SyncML_MOT;
.super Ljava/lang/Object;
.source "SyncML_MOT.java"


# instance fields
.field protected activity:Landroid/content/Context;

.field protected alert_status:Ljava/lang/String;

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

.field protected objToPut:[B

.field protected objToPutIndex:I

.field protected policy:Ljava/lang/String;

.field protected support_max_obj_size:Z

.field protected support_max_pkg_size:Z

.field protected support_more_data:Z

.field protected support_number_of_change:Z

.field protected sync_ml_guid:Ljava/lang/String;

.field protected syncmlParser:Lcom/futuredial/syncml/SrvParser;

.field protected syncml_format:Ljava/lang/String;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x800

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->activity:Landroid/content/Context;

    .line 29
    iput-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->policy:Ljava/lang/String;

    .line 31
    const-string v0, "motorola"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->category:Ljava/lang/String;

    .line 32
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->version:Ljava/lang/String;

    .line 33
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_MOT;->support_more_data:Z

    .line 34
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_MOT;->support_number_of_change:Z

    .line 35
    iput v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->max_pkg_size:I

    .line 36
    const/high16 v0, 0x10

    iput v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->max_obj_size:I

    .line 37
    const-string v0, "text/v-card"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->content:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->include_ctcap:Z

    .line 39
    const-string v0, "00001103-0000-1000-8000-00805f9b34fb"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->sync_ml_guid:Ljava/lang/String;

    .line 40
    iput v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->max_obex_pkg_size:I

    .line 41
    const-string v0, "SYNCML-SYNC"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->obex_connect_target:Ljava/lang/String;

    .line 42
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_MOT;->support_max_pkg_size:Z

    .line 43
    iput-boolean v2, p0, Lcom/futuredial/syncml/SyncML_MOT;->support_max_obj_size:Z

    .line 44
    const-string v0, "200"

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->alert_status:Ljava/lang/String;

    .line 54
    iput-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPut:[B

    .line 55
    iput v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPutIndex:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->syncml_format:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/futuredial/syncml/SrvParser;

    invoke-direct {v0}, Lcom/futuredial/syncml/SrvParser;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    .line 62
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 63
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 64
    iput-boolean v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bObexFinished:Z

    .line 65
    iput-boolean v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bSyncMLFinished:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    .line 67
    iput-byte v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_nObexErrCode:B

    .line 68
    return-void
.end method


# virtual methods
.method public IsObexFinished()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bObexFinished:Z

    return v0
.end method

.method public IsSyncMLFinished()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    invoke-virtual {v0}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuredial/syncml/Parameter;->getAppStatus()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 201
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

    .line 307
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->activity:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->policy:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v2

    .line 312
    :cond_1
    invoke-static {p1}, Lcom/futuredial/wbxml/Convert;->ConvertWBXML2XmlDoc([B)Lcom/futuredial/xmlbuild/XmlDoc;

    move-result-object v0

    .line 313
    .local v0, xmlDoc:Lcom/futuredial/xmlbuild/XmlDoc;
    if-eqz v0, :cond_0

    .line 323
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    invoke-virtual {v3, v0}, Lcom/futuredial/syncml/SrvParser;->ParseAndBuildSyncMLDoc(Lcom/futuredial/xmlbuild/XmlDoc;)Lcom/futuredial/xmlbuild/XmlDoc;

    move-result-object v1

    .line 324
    .local v1, xmlDocRes:Lcom/futuredial/xmlbuild/XmlDoc;
    if-eqz v1, :cond_0

    .line 337
    invoke-static {v1}, Lcom/futuredial/wbxml/Convert;->ConvertXmlDoc2WBXML(Lcom/futuredial/xmlbuild/XmlDoc;)[B

    move-result-object v2

    goto :goto_0
.end method

.method public PrintLog([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 517
    const-string v0, "Data"

    invoke-static {v0, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 518
    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectResponseStream()[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 81
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->activity:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->policy:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 83
    :cond_0
    const/4 v2, 0x0

    .line 95
    :goto_0
    return-object v2

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 87
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/futuredial/obex/OBEX_CON_PKG;->setCommand(B)V

    .line 88
    new-instance v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;-><init>()V

    .line 89
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    invoke-virtual {v0, v6}, Lcom/futuredial/obex/OBEX_HEADER_D;->setValue(I)V

    .line 90
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v4, -0x35

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(BI)V

    .line 91
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->obex_connect_target:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 92
    .local v1, csTarget:[B
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v4, 0x4a

    invoke-virtual {v3, v4, v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 93
    iget-object v3, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v3, v6}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v2

    .line 94
    .local v2, ret:[B
    const-string v3, "getConnectStream"

    invoke-static {v3, v2}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectStream()[B
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 114
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 116
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 117
    .local v0, ret:[B
    const-string v1, "setDisconnectResponseStream"

    invoke-static {v1, v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 118
    return-object v0
.end method

.method public getGetObjectStream(B)[B
    .locals 4
    .parameter "cmd"

    .prologue
    const/4 v3, 0x0

    .line 220
    new-array v0, v3, [B

    .line 221
    .local v0, ret:[B
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1, p1}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 222
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 223
    const-string v1, "getGetObjectStream"

    invoke-static {v1, v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 224
    return-object v0
.end method

.method public getMax_obex_pkg_size()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->max_obex_pkg_size:I

    return v0
.end method

.method public getMax_obj_size()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->max_obj_size:I

    return v0
.end method

.method public getMax_pkg_size()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->max_pkg_size:I

    return v0
.end method

.method public getObex_connect_target()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->obex_connect_target:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getPutObjectStream()[B
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 146
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 147
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_PKG;->getSize()I

    move-result v1

    .line 148
    .local v1, nLen:I
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_CON_PKG;->getMaxPkgSize()I

    move-result v2

    .line 149
    .local v2, nMaxPkgLen:I
    sub-int v0, v2, v1

    .line 150
    .local v0, nFreeLen:I
    if-ge v0, v9, :cond_0

    .line 152
    const/4 v5, 0x0

    .line 177
    :goto_0
    return-object v5

    .line 154
    :cond_0
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPut:[B

    array-length v6, v6

    iget v7, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPutIndex:I

    sub-int v3, v6, v7

    .line 156
    .local v3, nRemainLen:I
    if-lt v0, v3, :cond_1

    .line 158
    iput-boolean v9, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bObexFinished:Z

    .line 159
    new-array v4, v3, [B

    .line 160
    .local v4, obj:[B
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPut:[B

    iget v7, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPutIndex:I

    invoke-static {v6, v7, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPutIndex:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPutIndex:I

    .line 162
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v7, 0x49

    invoke-virtual {v6, v7, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 163
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 175
    :goto_1
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6, v8, v9}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v5

    .line 176
    .local v5, ret:[B
    const-string v6, "getPutObjectStream"

    invoke-static {v6, v5}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    goto :goto_0

    .line 167
    .end local v4           #obj:[B
    .end local v5           #ret:[B
    :cond_1
    new-array v4, v0, [B

    .line 168
    .restart local v4       #obj:[B
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPut:[B

    iget v7, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPutIndex:I

    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPutIndex:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPutIndex:I

    .line 170
    iput-boolean v8, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bObexFinished:Z

    .line 171
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v7, 0x48

    invoke-virtual {v6, v7, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 172
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    goto :goto_1
.end method

.method public getResult()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    new-array v3, v6, [B

    .line 288
    .local v3, ret:[B
    const/4 v2, 0x0

    .line 289
    .local v2, nLen:I
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 290
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 292
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    new-array v3, v2, [B

    .line 295
    const/4 v2, 0x0

    .line 296
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 298
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-static {v5, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_1
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 302
    return-object v3
.end method

.method public getSync_ml_guid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->sync_ml_guid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->version:Ljava/lang/String;

    return-object v0
.end method

.method public initGetObject()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bObexFinished:Z

    .line 207
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public initGetPutObject([B)V
    .locals 2
    .parameter "objToPut"

    .prologue
    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bObexFinished:Z

    .line 137
    iput-object p1, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPut:[B

    .line 138
    iput v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->objToPutIndex:I

    .line 140
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 141
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 142
    return-void
.end method

.method public isInclude_ctcap()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->include_ctcap:Z

    return v0
.end method

.method public isSupport_max_obj_size()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->support_max_obj_size:Z

    return v0
.end method

.method public isSupport_max_pkg_size()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->support_max_pkg_size:Z

    return v0
.end method

.method public isSupport_more_data()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->support_more_data:Z

    return v0
.end method

.method public isSupport_number_of_change()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->support_number_of_change:Z

    return v0
.end method

.method public setActivity(Landroid/content/Context;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/futuredial/syncml/SyncML_MOT;->activity:Landroid/content/Context;

    .line 342
    return-void
.end method

.method public setConnectRequestStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 104
    :cond_1
    const-string v1, "setConnectResponseStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 105
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v1, p1}, Lcom/futuredial/obex/OBEX_CON_PKG;->setObexRequestPkgStream([B)Z

    move-result v0

    .line 106
    .local v0, bret:Z
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_nObexErrCode:B

    goto :goto_0
.end method

.method public setDisconnectResponseStream([B)Z
    .locals 4
    .parameter "RespStream"

    .prologue
    const/4 v1, 0x0

    .line 123
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 131
    :cond_1
    :goto_0
    return v0

    .line 127
    :cond_2
    const-string v2, "setDisconnectResponseStream"

    invoke-static {v2, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 128
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2, p1, v1}, Lcom/futuredial/obex/OBEX_PKG;->setObexRequestPkgStream([BI)Z

    move-result v0

    .line 129
    .local v0, bret:Z
    iget-object v2, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v2

    iput-byte v2, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_nObexErrCode:B

    .line 130
    iget-byte v2, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_nObexErrCode:B

    const/16 v3, -0x7f

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public setGetObjectResponseStream([B)Z
    .locals 9
    .parameter "RespStream"

    .prologue
    const/4 v5, 0x1

    const/16 v8, -0x35

    const/4 v4, 0x0

    .line 229
    if-eqz p1, :cond_0

    array-length v6, p1

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v4

    .line 233
    :cond_1
    const-string v6, "setGetObjectResponseStream"

    invoke-static {v6, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 234
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6, p1, v4}, Lcom/futuredial/obex/OBEX_PKG;->setObexRequestPkgStream([BI)Z

    move-result v0

    .line 235
    .local v0, b:Z
    iget-object v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v6

    iput-byte v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_nObexErrCode:B

    .line 236
    if-eqz v0, :cond_0

    .line 240
    iget-byte v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_nObexErrCode:B

    and-int/lit8 v6, v6, -0x80

    const/16 v7, -0x80

    if-ne v6, v7, :cond_4

    .line 242
    iput-boolean v5, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bObexFinished:Z

    .line 253
    :goto_1
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v6, 0x48

    invoke-virtual {v4, v6}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v1, v4

    check-cast v1, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 254
    .local v1, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v1, :cond_2

    .line 256
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_2
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v6, 0x49

    invoke-virtual {v4, v6}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v3, v4

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 259
    .local v3, dbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v3, :cond_3

    .line 261
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_Buffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_3
    iget-boolean v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bObexFinished:Z

    if-nez v4, :cond_6

    .line 265
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 267
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 269
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v4, v8}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v4

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 270
    .local v2, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v6

    invoke-virtual {v4, v8, v6}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    :goto_2
    move v4, v5

    .line 281
    goto :goto_0

    .line 244
    .end local v1           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v2           #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    .end local v3           #dbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    :cond_4
    iget-byte v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_nObexErrCode:B

    and-int/lit8 v6, v6, 0x7f

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 246
    iput-boolean v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_bObexFinished:Z

    goto :goto_1

    .line 250
    :cond_5
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-byte v6, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_nObexErrCode:B

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(I)V

    goto/16 :goto_0

    .line 274
    .restart local v1       #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .restart local v3       #dbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    :cond_6
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 276
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 278
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v4, v8}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v2, v4

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 279
    .restart local v2       #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v4, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v6

    invoke-virtual {v4, v8, v6}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    goto :goto_2
.end method

.method public setModelInfo(I)V
    .locals 1
    .parameter "iModel"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    invoke-virtual {v0}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/futuredial/syncml/Parameter;->setCurModel(I)V

    .line 77
    return-void
.end method

.method public setPolicy(Ljava/lang/String;)Z
    .locals 18
    .parameter "policy"

    .prologue
    .line 398
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->policy:Ljava/lang/String;

    .line 401
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->activity:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 402
    .local v15, theRes:Landroid/content/res/Resources;
    invoke-virtual {v15}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 403
    .local v2, am:Landroid/content/res/AssetManager;
    const-string v16, "syncml.config.xml"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 405
    .local v10, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 406
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 407
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 408
    .local v6, dom:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .line 410
    .local v13, root:Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/futuredial/wbxml/ConvertXML;->getXMLChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 411
    .local v12, policyNode:Lorg/w3c/dom/Node;
    if-nez v12, :cond_0

    .line 413
    const/16 v16, 0x0

    .line 512
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v12           #policyNode:Lorg/w3c/dom/Node;
    .end local v13           #root:Lorg/w3c/dom/Element;
    .end local v15           #theRes:Landroid/content/res/Resources;
    :goto_0
    return v16

    .line 416
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v3       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #dom:Lorg/w3c/dom/Document;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v12       #policyNode:Lorg/w3c/dom/Node;
    .restart local v13       #root:Lorg/w3c/dom/Element;
    .restart local v15       #theRes:Landroid/content/res/Resources;
    :cond_0
    check-cast v12, Lorg/w3c/dom/Element;

    .end local v12           #policyNode:Lorg/w3c/dom/Node;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v12, v0}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNode(Lorg/w3c/dom/Element;S)Ljava/util/ArrayList;

    move-result-object v4

    .line 417
    .local v4, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    if-nez v4, :cond_1

    .line 419
    const/16 v16, 0x0

    goto :goto_0

    .line 422
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, nCount:I
    :goto_1
    if-ge v9, v11, :cond_12

    .line 424
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    .line 425
    .local v5, cn:Lorg/w3c/dom/Node;
    if-nez v5, :cond_3

    .line 422
    .end local v5           #cn:Lorg/w3c/dom/Node;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 429
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_3
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 430
    .local v14, strNodeName:Ljava/lang/String;
    const-string v16, "category"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_4

    .line 432
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->category:Ljava/lang/String;

    goto :goto_2

    .line 508
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #i:I
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #nCount:I
    .end local v13           #root:Lorg/w3c/dom/Element;
    .end local v14           #strNodeName:Ljava/lang/String;
    .end local v15           #theRes:Landroid/content/res/Resources;
    :catch_0
    move-exception v7

    .line 510
    .local v7, e:Ljava/lang/Exception;
    const/16 v16, 0x0

    goto :goto_0

    .line 434
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
    .restart local v13       #root:Lorg/w3c/dom/Element;
    .restart local v14       #strNodeName:Ljava/lang/String;
    .restart local v15       #theRes:Landroid/content/res/Resources;
    :cond_4
    const-string v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_5

    .line 436
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->version:Ljava/lang/String;

    goto :goto_2

    .line 438
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_5
    const-string v16, "not_support_more_data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_6

    .line 440
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->support_more_data:Z

    goto :goto_2

    .line 442
    :cond_6
    const-string v16, "not_support_number_of_change"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_7

    .line 444
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->support_number_of_change:Z

    goto :goto_2

    .line 446
    :cond_7
    const-string v16, "not_support_max_pkg_size"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_8

    .line 448
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->support_max_pkg_size:Z

    goto :goto_2

    .line 450
    :cond_8
    const-string v16, "not_support_max_obj_size"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_9

    .line 452
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->support_max_obj_size:Z

    goto/16 :goto_2

    .line 454
    :cond_9
    const-string v16, "max_pkg_size"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_a

    .line 456
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->max_pkg_size:I

    goto/16 :goto_2

    .line 458
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_a
    const-string v16, "max_obj_size"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_b

    .line 460
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->max_obj_size:I

    goto/16 :goto_2

    .line 462
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_b
    const-string v16, "content"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_c

    .line 464
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->content:Ljava/lang/String;

    goto/16 :goto_2

    .line 466
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_c
    const-string v16, "sync_ml_guid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_d

    .line 468
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->sync_ml_guid:Ljava/lang/String;

    goto/16 :goto_2

    .line 470
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_d
    const-string v16, "max_obex_pkg_size"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_e

    .line 472
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->max_obex_pkg_size:I

    goto/16 :goto_2

    .line 474
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_e
    const-string v16, "obex_connect_target"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_f

    .line 476
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->obex_connect_target:Ljava/lang/String;

    goto/16 :goto_2

    .line 478
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_f
    const-string v16, "alert_status"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_10

    .line 480
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->alert_status:Ljava/lang/String;

    goto/16 :goto_2

    .line 482
    .restart local v5       #cn:Lorg/w3c/dom/Node;
    :cond_10
    const-string v16, "include_ctcap"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_11

    .line 484
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->include_ctcap:Z

    goto/16 :goto_2

    .line 486
    :cond_11
    const-string v16, "syncml_format"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

    .line 488
    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #cn:Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/futuredial/wbxml/ConvertXML;->getXMLNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/syncml/SyncML_MOT;->syncml_format:Ljava/lang/String;

    goto/16 :goto_2

    .line 492
    .end local v14           #strNodeName:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->include_ctcap:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/SrvParser;->setIncludeCTCap(Z)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->alert_status:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/SrvParser;->setAlertStatus(Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->support_more_data:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/Parameter;->setSupportMoreData(Z)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->support_number_of_change:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/Parameter;->setSupportNumberOfChange(Z)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->max_pkg_size:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/Parameter;->setMaxMessageSize(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->max_obj_size:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/Parameter;->setMaxObjectSize(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->content:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/Parameter;->setContentType(Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->support_max_pkg_size:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/Parameter;->setSupportMaxMessageSize(Z)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->support_max_obj_size:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/Parameter;->setSupportMaxObjectSize(Z)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncmlParser:Lcom/futuredial/syncml/SrvParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/syncml/SrvParser;->getParameter()Lcom/futuredial/syncml/Parameter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->syncml_format:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/syncml/Parameter;->setAuth(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->max_obex_pkg_size:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/obex/OBEX_CON_PKG;->setMaxPkgSizeForce(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    move-object/from16 v16, v0

    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Lcom/futuredial/obex/OBEX_CON_PKG;->setVersion(B)V

    .line 506
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method public setPutObjectRespStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    const/4 v0, 0x0

    .line 182
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    const-string v1, "setPutObjectRespStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 187
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1, p1, v0}, Lcom/futuredial/obex/OBEX_PKG;->setObexRequestPkgStream([BI)Z

    move-result v0

    .line 188
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/syncml/SyncML_MOT;->m_nObexErrCode:B

    goto :goto_0
.end method
