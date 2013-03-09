.class public Lcom/futuredial/obex/OBEX_PBAP;
.super Lcom/futuredial/obex/OBEX_SNE;
.source "OBEX_PBAP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/futuredial/obex/OBEX_SNE;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getConnectStream()[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 21
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 22
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->setMaxPkgSizeForce(I)V

    .line 23
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2, v4}, Lcom/futuredial/obex/OBEX_CON_PKG;->setVersion(B)V

    .line 24
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 25
    .local v1, ret:[B
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 26
    .local v0, csTarget:[B
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x46

    invoke-virtual {v2, v3, v0}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 27
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v1

    .line 28
    const-string v2, "getConnectStream"

    invoke-static {v2, v1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 29
    return-object v1

    .line 25
    nop

    :array_0
    .array-data 0x1
        0x79t
        0x61t
        0x35t
        0xf0t
        0xf0t
        0xc5t
        0x11t
        0xd8t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        0x9at
        0x66t
    .end array-data
.end method

.method public getDisconnectStream()[B
    .locals 5

    .prologue
    const/16 v4, -0x35

    .line 34
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 36
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v3, -0x7f

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 38
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2, v4}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v2

    check-cast v2, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v2

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 39
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 41
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v1

    .line 42
    .local v1, ret:[B
    const-string v2, "setDisconnectResponseStream"

    invoke-static {v2, v1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 43
    return-object v1
.end method

.method public getTargetName()[B
    .locals 2

    .prologue
    .line 15
    const/16 v1, 0x1e

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 16
    .local v0, name:[B
    return-object v0

    .line 15
    :array_0
    .array-data 0x1
        0x0t
        0x74t
        0x0t
        0x65t
        0x0t
        0x6ct
        0x0t
        0x65t
        0x0t
        0x63t
        0x0t
        0x6ft
        0x0t
        0x6dt
        0x0t
        0x2ft
        0x0t
        0x70t
        0x0t
        0x62t
        0x0t
        0x2et
        0x0t
        0x76t
        0x0t
        0x63t
        0x0t
        0x66t
        0x0t
        0x0t
    .end array-data
.end method

.method public initGetObject()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, -0x35

    .line 48
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_bFinished:Z

    .line 50
    iget-object v4, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 52
    iget-object v4, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 54
    iget-object v4, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v4, v6}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v4

    check-cast v4, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v4

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 55
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v4, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 57
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_PBAP;->getTargetName()[B

    move-result-object v1

    .line 58
    .local v1, name:[B
    iget-object v4, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v4, v7, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 60
    const/16 v4, 0xf

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 61
    .local v3, type:[B
    iget-object v4, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v5, 0x42

    invoke-virtual {v4, v5, v3}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 63
    const/16 v4, 0x8

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    .line 64
    .local v2, parameter:[B
    iget-object v4, p0, Lcom/futuredial/obex/OBEX_PBAP;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v5, 0x4c

    invoke-virtual {v4, v5, v2}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 66
    return v7

    .line 60
    nop

    :array_0
    .array-data 0x1
        0x78t
        0x2dt
        0x62t
        0x74t
        0x2ft
        0x70t
        0x68t
        0x6ft
        0x6et
        0x65t
        0x62t
        0x6ft
        0x6ft
        0x6bt
        0x0t
    .end array-data

    .line 63
    :array_1
    .array-data 0x1
        0x4t
        0x2t
        0xfft
        0xfft
        0x5t
        0x2t
        0x0t
        0x0t
    .end array-data
.end method
