.class public Lcom/futuredial/obex/XWORD;
.super Ljava/lang/Object;
.source "XWORD.java"


# instance fields
.field protected Height:I

.field protected Low:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/futuredial/obex/XWORD;->Height:I

    .line 10
    iput v0, p0, Lcom/futuredial/obex/XWORD;->Low:I

    .line 11
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/futuredial/obex/XWORD;->Height:I

    return v0
.end method

.method public getLow()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/futuredial/obex/XWORD;->Low:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    return v0
.end method

.method public getXWORD()I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/futuredial/obex/XWORD;->Height:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/futuredial/obex/XWORD;->Low:I

    or-int/2addr v0, v1

    return v0
.end method

.method public setXWORD(BB)V
    .locals 1
    .parameter "hValue"
    .parameter "lValue"

    .prologue
    .line 35
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/futuredial/obex/XWORD;->Height:I

    .line 36
    and-int/lit16 v0, p2, 0xff

    iput v0, p0, Lcom/futuredial/obex/XWORD;->Low:I

    .line 37
    return-void
.end method

.method public setXWORD(I)V
    .locals 1
    .parameter "Value"

    .prologue
    .line 30
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/futuredial/obex/XWORD;->Low:I

    .line 31
    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/futuredial/obex/XWORD;->Height:I

    .line 32
    return-void
.end method
