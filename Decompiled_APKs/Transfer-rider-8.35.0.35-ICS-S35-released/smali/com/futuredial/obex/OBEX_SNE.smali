.class public abstract Lcom/futuredial/obex/OBEX_SNE;
.super Ljava/lang/Object;
.source "OBEX_SNE.java"


# instance fields
.field protected m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

.field protected m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

.field protected m_ObexSetPathPkg:Lcom/futuredial/obex/OBEX_SP_PKG;

.field protected m_bFinished:Z

.field protected m_nObexErrCode:B

.field protected nParamterCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/futuredial/obex/OBEX_SNE;->nParamterCount:I

    .line 21
    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/futuredial/obex/OBEX_SNE;->m_nObexErrCode:B

    .line 23
    iput-boolean v1, p0, Lcom/futuredial/obex/OBEX_SNE;->m_bFinished:Z

    .line 24
    new-instance v0, Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_CON_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    .line 25
    new-instance v0, Lcom/futuredial/obex/OBEX_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    .line 26
    new-instance v0, Lcom/futuredial/obex/OBEX_SP_PKG;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_SP_PKG;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexSetPathPkg:Lcom/futuredial/obex/OBEX_SP_PKG;

    .line 27
    iput v1, p0, Lcom/futuredial/obex/OBEX_SNE;->nParamterCount:I

    .line 28
    return-void
.end method


# virtual methods
.method public IsFinished()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/futuredial/obex/OBEX_SNE;->m_bFinished:Z

    return v0
.end method

.method public IsObexFinished([B)Z
    .locals 4
    .parameter "DataStream"

    .prologue
    const/4 v1, 0x1

    .line 48
    new-instance v0, Lcom/futuredial/obex/XWORD;

    invoke-direct {v0}, Lcom/futuredial/obex/XWORD;-><init>()V

    .line 49
    .local v0, len:Lcom/futuredial/obex/XWORD;
    aget-byte v2, p1, v1

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-virtual {v0, v2, v3}, Lcom/futuredial/obex/XWORD;->setXWORD(BB)V

    .line 50
    array-length v2, p1

    invoke-virtual {v0}, Lcom/futuredial/obex/XWORD;->getXWORD()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 54
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectStream()[B
    .locals 4

    .prologue
    .line 59
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 60
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->setMaxPkgSizeForce(I)V

    .line 61
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->setVersion(B)V

    .line 62
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 63
    .local v1, ret:[B
    const/16 v2, 0x9

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 64
    .local v0, csTarget:[B
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x46

    invoke-virtual {v2, v3, v0}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 65
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v1

    .line 66
    const-string v2, "getConnectStream"

    invoke-static {v2, v1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 67
    return-object v1

    .line 63
    nop

    :array_0
    .array-data 0x1
        0x49t
        0x52t
        0x4dt
        0x43t
        0x2dt
        0x53t
        0x59t
        0x4et
        0x43t
    .end array-data
.end method

.method public getDisconnectStream()[B
    .locals 6

    .prologue
    const/16 v5, -0x35

    .line 72
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 74
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v4, -0x7f

    invoke-virtual {v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 76
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v3, v5}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v3

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v3

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 77
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 78
    const/16 v3, 0x9

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    .line 79
    .local v1, csTarget:[B
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v4, 0x46

    invoke-virtual {v3, v4, v1}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 81
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v2

    .line 82
    .local v2, ret:[B
    const-string v3, "setDisconnectResponseStream"

    invoke-static {v3, v2}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 83
    return-object v2

    .line 78
    :array_0
    .array-data 0x1
        0x49t
        0x52t
        0x4dt
        0x43t
        0x2dt
        0x53t
        0x59t
        0x4et
        0x43t
    .end array-data
.end method

.method public getGetObjectStream()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    new-array v0, v3, [B

    .line 139
    .local v0, ret:[B
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 140
    const-string v1, "getGetObjectStream"

    invoke-static {v1, v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 141
    return-object v0
.end method

.method public getObexErrorCode()B
    .locals 1

    .prologue
    .line 40
    iget-byte v0, p0, Lcom/futuredial/obex/OBEX_SNE;->m_nObexErrCode:B

    return v0
.end method

.method public getObexPKG()Lcom/futuredial/obex/OBEX_PKG;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    return-object v0
.end method

.method public getParaCount()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/futuredial/obex/OBEX_SNE;->nParamterCount:I

    return v0
.end method

.method public abstract getTargetName()[B
.end method

.method public initGetObject()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, -0x35

    .line 112
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_bFinished:Z

    .line 117
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 119
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 121
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2, v4}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v2

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v2

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 122
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 124
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_SNE;->getTargetName()[B

    move-result-object v1

    .line 125
    .local v1, name:[B
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2, v5, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 127
    return v5
.end method

.method public setConnectResponseStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    .line 100
    const-string v1, "setConnectResponseStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 101
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v1, p1}, Lcom/futuredial/obex/OBEX_CON_PKG;->setObexPkgStream([B)Z

    move-result v0

    .line 106
    .local v0, bret:Z
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/obex/OBEX_SNE;->m_nObexErrCode:B

    goto :goto_0
.end method

.method public setDisconnectResponseStream([B)Z
    .locals 3
    .parameter "RespStream"

    .prologue
    const/4 v0, 0x0

    .line 88
    const-string v1, "setDisconnectResponseStream"

    invoke-static {v1, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 89
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1, p1, v0}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 94
    .local v0, bret:Z
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v1

    iput-byte v1, p0, Lcom/futuredial/obex/OBEX_SNE;->m_nObexErrCode:B

    goto :goto_0
.end method

.method public setGetObjectResponseStream([B)Z
    .locals 13
    .parameter "RespStream"

    .prologue
    const/4 v12, 0x6

    const/4 v7, 0x1

    const/16 v11, -0x35

    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 146
    const-string v8, "setGetObjectResponseStream"

    invoke-static {v8, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 147
    if-eqz p1, :cond_0

    array-length v8, p1

    if-ge v8, v10, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v6

    .line 151
    :cond_1
    iget-object v8, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v8, p1, v6}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v1

    .line 152
    .local v1, b:Z
    iget-object v8, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v8}, Lcom/futuredial/obex/OBEX_PKG;->getCommand()B

    move-result v8

    iput-byte v8, p0, Lcom/futuredial/obex/OBEX_SNE;->m_nObexErrCode:B

    .line 153
    if-eqz v1, :cond_0

    .line 157
    iget-byte v8, p0, Lcom/futuredial/obex/OBEX_SNE;->m_nObexErrCode:B

    and-int/lit8 v8, v8, 0x7f

    const/16 v9, 0x20

    if-ne v8, v9, :cond_6

    .line 159
    iput-boolean v7, p0, Lcom/futuredial/obex/OBEX_SNE;->m_bFinished:Z

    .line 170
    :goto_1
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, 0x48

    invoke-virtual {v6, v8}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v6

    check-cast v6, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v2, v6

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 171
    .local v2, body:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v2, :cond_2

    .line 173
    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v6

    invoke-static {v6}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 178
    :cond_2
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, 0x49

    invoke-virtual {v6, v8}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v6

    check-cast v6, Lcom/futuredial/obex/OBEX_HEADER_W;

    move-object v4, v6

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 179
    .local v4, dbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v4, :cond_3

    .line 181
    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;->getValue()[B

    move-result-object v6

    invoke-static {v6}, Lcom/futuredial/ParseThread;->AddByteArray([B)V

    .line 188
    :cond_3
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v8, 0x4c

    invoke-virtual {v6, v8}, Lcom/futuredial/obex/OBEX_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v5

    check-cast v5, Lcom/futuredial/obex/OBEX_HEADER_W;

    .line 189
    .local v5, h:Lcom/futuredial/obex/OBEX_HEADER_W;
    if-eqz v5, :cond_4

    .line 190
    invoke-virtual {v5}, Lcom/futuredial/obex/OBEX_HEADER_W;->getHeaderStream()[B

    move-result-object v0

    .line 191
    .local v0, a:[B
    if-eqz v0, :cond_4

    array-length v6, v0

    if-le v6, v12, :cond_4

    .line 192
    aget-byte v6, v0, v10

    const/16 v8, 0x8

    if-ne v6, v8, :cond_4

    .line 194
    const/4 v6, 0x5

    aget-byte v6, v0, v6

    shl-int/lit8 v6, v6, 0x8

    const v8, 0xff00

    and-int/2addr v6, v8

    aget-byte v8, v0, v12

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v6, v8

    iput v6, p0, Lcom/futuredial/obex/OBEX_SNE;->nParamterCount:I

    .line 200
    .end local v0           #a:[B
    :cond_4
    iget-boolean v6, p0, Lcom/futuredial/obex/OBEX_SNE;->m_bFinished:Z

    if-nez v6, :cond_5

    .line 202
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 204
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v6, v10}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 206
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v6, v11}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v6

    check-cast v6, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v3, v6

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 207
    .local v3, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_SNE;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v8

    invoke-virtual {v6, v11, v8}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .end local v3           #conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    :cond_5
    move v6, v7

    .line 209
    goto/16 :goto_0

    .line 161
    .end local v2           #body:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v4           #dbody:Lcom/futuredial/obex/OBEX_HEADER_W;
    .end local v5           #h:Lcom/futuredial/obex/OBEX_HEADER_W;
    :cond_6
    iget-byte v8, p0, Lcom/futuredial/obex/OBEX_SNE;->m_nObexErrCode:B

    and-int/lit8 v8, v8, 0x7f

    const/16 v9, 0x10

    if-ne v8, v9, :cond_7

    .line 163
    iput-boolean v6, p0, Lcom/futuredial/obex/OBEX_SNE;->m_bFinished:Z

    goto/16 :goto_1

    .line 167
    :cond_7
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-byte v8, p0, Lcom/futuredial/obex/OBEX_SNE;->m_nObexErrCode:B

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(I)V

    goto/16 :goto_0
.end method
