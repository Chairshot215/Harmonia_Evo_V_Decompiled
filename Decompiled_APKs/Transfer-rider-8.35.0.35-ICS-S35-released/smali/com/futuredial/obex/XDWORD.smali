.class public Lcom/futuredial/obex/XDWORD;
.super Ljava/lang/Object;
.source "XDWORD.java"


# instance fields
.field protected Height:Lcom/futuredial/obex/XWORD;

.field protected Low:Lcom/futuredial/obex/XWORD;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/futuredial/obex/XWORD;

    invoke-direct {v0}, Lcom/futuredial/obex/XWORD;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/XDWORD;->Height:Lcom/futuredial/obex/XWORD;

    .line 10
    new-instance v0, Lcom/futuredial/obex/XWORD;

    invoke-direct {v0}, Lcom/futuredial/obex/XWORD;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/XDWORD;->Low:Lcom/futuredial/obex/XWORD;

    .line 11
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/futuredial/obex/XDWORD;->Height:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0}, Lcom/futuredial/obex/XWORD;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLow()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/futuredial/obex/XDWORD;->Low:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0}, Lcom/futuredial/obex/XWORD;->getLow()I

    move-result v0

    return v0
.end method

.method public getMHeight()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/futuredial/obex/XDWORD;->Height:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0}, Lcom/futuredial/obex/XWORD;->getLow()I

    move-result v0

    return v0
.end method

.method public getMLow()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/futuredial/obex/XDWORD;->Low:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0}, Lcom/futuredial/obex/XWORD;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x4

    return v0
.end method

.method public getXDWORD()I
    .locals 3

    .prologue
    .line 30
    iget-object v2, p0, Lcom/futuredial/obex/XDWORD;->Height:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v2}, Lcom/futuredial/obex/XWORD;->getXWORD()I

    move-result v0

    .line 31
    .local v0, TH:I
    iget-object v2, p0, Lcom/futuredial/obex/XDWORD;->Low:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v2}, Lcom/futuredial/obex/XWORD;->getXWORD()I

    move-result v1

    .line 32
    .local v1, TL:I
    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v2, v1

    and-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public setXDWORD(BBBB)V
    .locals 1
    .parameter "hValue"
    .parameter "mhValue"
    .parameter "mlValue"
    .parameter "lValue"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/futuredial/obex/XDWORD;->Height:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0, p1, p2}, Lcom/futuredial/obex/XWORD;->setXWORD(BB)V

    .line 26
    iget-object v0, p0, Lcom/futuredial/obex/XDWORD;->Low:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0, p3, p4}, Lcom/futuredial/obex/XWORD;->setXWORD(BB)V

    .line 27
    return-void
.end method

.method public setXDWORD(I)V
    .locals 4
    .parameter "Value"

    .prologue
    const v3, 0xffff

    .line 18
    const/high16 v2, -0x1

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    and-int v0, v2, v3

    .line 19
    .local v0, TH:I
    and-int v1, p1, v3

    .line 20
    .local v1, TL:I
    iget-object v2, p0, Lcom/futuredial/obex/XDWORD;->Height:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v2, v0}, Lcom/futuredial/obex/XWORD;->setXWORD(I)V

    .line 21
    iget-object v2, p0, Lcom/futuredial/obex/XDWORD;->Low:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v2, v1}, Lcom/futuredial/obex/XWORD;->setXWORD(I)V

    .line 22
    return-void
.end method
