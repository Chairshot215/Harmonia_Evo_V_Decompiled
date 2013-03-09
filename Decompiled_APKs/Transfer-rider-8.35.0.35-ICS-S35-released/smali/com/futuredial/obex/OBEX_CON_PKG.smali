.class public Lcom/futuredial/obex/OBEX_CON_PKG;
.super Lcom/futuredial/obex/OBEX_PKG;
.source "OBEX_CON_PKG.java"


# instance fields
.field protected Flag:B

.field protected MaxPkgSize:Lcom/futuredial/obex/XWORD;

.field protected Version:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    .line 10
    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Version:B

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Flag:B

    .line 12
    new-instance v0, Lcom/futuredial/obex/XWORD;

    invoke-direct {v0}, Lcom/futuredial/obex/XWORD;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->MaxPkgSize:Lcom/futuredial/obex/XWORD;

    .line 13
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->MaxPkgSize:Lcom/futuredial/obex/XWORD;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/futuredial/obex/XWORD;->setXWORD(I)V

    .line 14
    return-void
.end method


# virtual methods
.method public getFlag()B
    .locals 1

    .prologue
    .line 34
    iget-byte v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Flag:B

    return v0
.end method

.method public getMaxPkgSize()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->MaxPkgSize:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0}, Lcom/futuredial/obex/XWORD;->getXWORD()I

    move-result v0

    return v0
.end method

.method public getObexPkgStream(Z)[B
    .locals 4
    .parameter "bLastFrame"

    .prologue
    const/4 v3, 0x4

    .line 55
    invoke-super {p0, v3, p1}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 56
    .local v0, retArray:[B
    const/4 v1, 0x3

    iget-byte v2, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Version:B

    aput-byte v2, v0, v1

    .line 57
    iget-byte v1, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Flag:B

    aput-byte v1, v0, v3

    .line 58
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->MaxPkgSize:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v2}, Lcom/futuredial/obex/XWORD;->getHeight()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 59
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->MaxPkgSize:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v2}, Lcom/futuredial/obex/XWORD;->getLow()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 60
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/futuredial/obex/OBEX_PKG;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->MaxPkgSize:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v1}, Lcom/futuredial/obex/XWORD;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 26
    iget-byte v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Version:B

    return v0
.end method

.method public setFlag(B)V
    .locals 0
    .parameter "nFlag"

    .prologue
    .line 30
    iput-byte p1, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Flag:B

    .line 31
    return-void
.end method

.method public setMaxPkgSize(I)V
    .locals 1
    .parameter "nMaxPkgSize"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->MaxPkgSize:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0}, Lcom/futuredial/obex/XWORD;->getXWORD()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->MaxPkgSize:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0, p1}, Lcom/futuredial/obex/XWORD;->setXWORD(I)V

    .line 43
    :cond_0
    return-void
.end method

.method public setMaxPkgSizeForce(I)V
    .locals 1
    .parameter "nMaxPkgSize"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->MaxPkgSize:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0, p1}, Lcom/futuredial/obex/XWORD;->setXWORD(I)V

    .line 47
    return-void
.end method

.method public setObexPkgStream([B)Z
    .locals 4
    .parameter "ObexStream"

    .prologue
    const/4 v3, 0x4

    .line 65
    invoke-super {p0, p1, v3}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 66
    .local v0, bret:Z
    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 77
    .end local v0           #bret:Z
    :goto_0
    return v0

    .line 70
    .restart local v0       #bret:Z
    :cond_0
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Version:B

    .line 71
    aget-byte v2, p1, v3

    iput-byte v2, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Flag:B

    .line 73
    new-instance v1, Lcom/futuredial/obex/XWORD;

    invoke-direct {v1}, Lcom/futuredial/obex/XWORD;-><init>()V

    .line 74
    .local v1, size:Lcom/futuredial/obex/XWORD;
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/XWORD;->setXWORD(BB)V

    .line 75
    invoke-virtual {v1}, Lcom/futuredial/obex/XWORD;->getXWORD()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->setMaxPkgSize(I)V

    goto :goto_0
.end method

.method public setObexRequestPkgStream([B)Z
    .locals 4
    .parameter "ObexStream"

    .prologue
    const/4 v3, 0x4

    .line 81
    invoke-super {p0, p1, v3}, Lcom/futuredial/obex/OBEX_PKG;->setObexRequestPkgStream([BI)Z

    move-result v0

    .line 82
    .local v0, bret:Z
    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 92
    .end local v0           #bret:Z
    :goto_0
    return v0

    .line 86
    .restart local v0       #bret:Z
    :cond_0
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Version:B

    .line 87
    aget-byte v2, p1, v3

    iput-byte v2, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Flag:B

    .line 88
    new-instance v1, Lcom/futuredial/obex/XWORD;

    invoke-direct {v1}, Lcom/futuredial/obex/XWORD;-><init>()V

    .line 89
    .local v1, size:Lcom/futuredial/obex/XWORD;
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/XWORD;->setXWORD(BB)V

    .line 90
    invoke-virtual {v1}, Lcom/futuredial/obex/XWORD;->getXWORD()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->setMaxPkgSize(I)V

    goto :goto_0
.end method

.method public setVersion(B)V
    .locals 0
    .parameter "nVersion"

    .prologue
    .line 22
    iput-byte p1, p0, Lcom/futuredial/obex/OBEX_CON_PKG;->Version:B

    .line 23
    return-void
.end method
