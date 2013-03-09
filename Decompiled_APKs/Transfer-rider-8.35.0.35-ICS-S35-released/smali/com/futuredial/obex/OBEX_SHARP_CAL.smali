.class public Lcom/futuredial/obex/OBEX_SHARP_CAL;
.super Lcom/futuredial/obex/OBEX_SNE;
.source "OBEX_SHARP_CAL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/futuredial/obex/OBEX_SNE;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectStream()[B
    .locals 4

    .prologue
    .line 17
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 18
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->setMaxPkgSizeForce(I)V

    .line 19
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->setVersion(B)V

    .line 20
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 21
    .local v1, ret:[B
    const/16 v2, 0xa

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 22
    .local v0, csTarget:[B
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v3, 0x46

    invoke-virtual {v2, v3, v0}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 23
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v1

    .line 24
    const-string v2, "getConnectStream"

    invoke-static {v2, v1}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 25
    return-object v1

    .line 21
    nop

    :array_0
    .array-data 0x1
        0x50t
        0x43t
        0x53t
        0x4ft
        0x46t
        0x54t
        0x57t
        0x41t
        0x52t
        0x45t
    .end array-data
.end method

.method protected getInitType()[B
    .locals 2

    .prologue
    .line 30
    const/16 v1, 0x11

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 31
    .local v0, type:[B
    return-object v0

    .line 30
    :array_0
    .array-data 0x1
        0x74t
        0x65t
        0x78t
        0x74t
        0x2ft
        0x78t
        0x2dt
        0x76t
        0x43t
        0x61t
        0x6ct
        0x65t
        0x6et
        0x64t
        0x61t
        0x72t
        0x0t
    .end array-data
.end method

.method public getTargetName()[B
    .locals 2

    .prologue
    .line 11
    const/16 v1, 0x20

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 12
    .local v0, name:[B
    return-object v0

    .line 11
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
        0x63t
        0x0t
        0x61t
        0x0t
        0x6ct
        0x0t
        0x2et
        0x0t
        0x76t
        0x0t
        0x63t
        0x0t
        0x73t
        0x0t
        0x0t
    .end array-data
.end method

.method public initGetObject()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, -0x35

    .line 36
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_bFinished:Z

    .line 38
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 40
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 42
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v3, v5}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v3

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v3

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 43
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 45
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_SHARP_CAL;->getTargetName()[B

    move-result-object v1

    .line 46
    .local v1, name:[B
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3, v6, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 48
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_SHARP_CAL;->getInitType()[B

    move-result-object v2

    .line 49
    .local v2, type:[B
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_SHARP_CAL;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v4, 0x42

    invoke-virtual {v3, v4, v2}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 51
    return v6
.end method
