.class public Lcom/futuredial/obex/OBEX_SP_PKG;
.super Lcom/futuredial/obex/OBEX_PKG;
.source "OBEX_SP_PKG.java"


# instance fields
.field protected Constans:B

.field protected Flag:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/futuredial/obex/OBEX_PKG;-><init>()V

    .line 9
    iput-byte v0, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Flag:B

    .line 10
    iput-byte v0, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Constans:B

    .line 11
    return-void
.end method


# virtual methods
.method public getConstans()B
    .locals 1

    .prologue
    .line 18
    iget-byte v0, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Constans:B

    return v0
.end method

.method public getFlag()B
    .locals 1

    .prologue
    .line 14
    iget-byte v0, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Flag:B

    return v0
.end method

.method public getObexPkgStream(Z)[B
    .locals 3
    .parameter "bLastFrame"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_SP_PKG;->getSize()I

    move-result v1

    invoke-super {p0}, Lcom/futuredial/obex/OBEX_PKG;->getSize()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-super {p0, v1, p1}, Lcom/futuredial/obex/OBEX_PKG;->getObexPkgStream(IZ)[B

    move-result-object v0

    .line 35
    .local v0, retArray:[B
    const/4 v1, 0x3

    iget-byte v2, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Flag:B

    aput-byte v2, v0, v1

    .line 36
    const/4 v1, 0x4

    iget-byte v2, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Constans:B

    aput-byte v2, v0, v1

    .line 37
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/futuredial/obex/OBEX_PKG;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setConstans(B)V
    .locals 0
    .parameter "nConstans"

    .prologue
    .line 26
    iput-byte p1, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Constans:B

    .line 27
    return-void
.end method

.method public setFlag(B)V
    .locals 0
    .parameter "nFlag"

    .prologue
    .line 22
    iput-byte p1, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Flag:B

    .line 23
    return-void
.end method

.method public setObexPkgStream([B)Z
    .locals 2
    .parameter "ObexStream"

    .prologue
    .line 42
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Lcom/futuredial/obex/OBEX_PKG;->setObexPkgStream([BI)Z

    move-result v0

    .line 43
    .local v0, bret:Z
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Flag:B

    .line 44
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/futuredial/obex/OBEX_SP_PKG;->Constans:B

    .line 45
    return v0
.end method
