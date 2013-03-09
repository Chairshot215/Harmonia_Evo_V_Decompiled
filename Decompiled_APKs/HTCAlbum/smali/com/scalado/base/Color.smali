.class public Lcom/scalado/base/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field private a:I

.field private b:I

.field private g:I

.field private r:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    const/16 v1, 0xff

    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/scalado/base/Color;->a:I

    .line 10
    iput v0, p0, Lcom/scalado/base/Color;->r:I

    .line 12
    iput v0, p0, Lcom/scalado/base/Color;->g:I

    .line 14
    iput v0, p0, Lcom/scalado/base/Color;->b:I

    .line 29
    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    if-gt p3, v1, :cond_0

    if-ltz p4, :cond_0

    if-le p4, v1, :cond_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Color value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->a:I

    .line 34
    iput p2, p0, Lcom/scalado/base/Color;->r:I

    .line 35
    iput p3, p0, Lcom/scalado/base/Color;->g:I

    .line 36
    iput p4, p0, Lcom/scalado/base/Color;->b:I

    .line 37
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Color;
    .locals 5

    .prologue
    .line 132
    new-instance v0, Lcom/scalado/base/Color;

    iget v1, p0, Lcom/scalado/base/Color;->a:I

    iget v2, p0, Lcom/scalado/base/Color;->r:I

    iget v3, p0, Lcom/scalado/base/Color;->g:I

    iget v4, p0, Lcom/scalado/base/Color;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/base/Color;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/scalado/base/Color;->clone()Lcom/scalado/base/Color;

    move-result-object v0

    return-object v0
.end method

.method public final getA()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/scalado/base/Color;->a:I

    return v0
.end method

.method public final getB()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/scalado/base/Color;->b:I

    return v0
.end method

.method public final getG()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/scalado/base/Color;->g:I

    return v0
.end method

.method public final getR()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/scalado/base/Color;->r:I

    return v0
.end method

.method public setA(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 55
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Color value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->a:I

    .line 60
    return-void
.end method

.method public setB(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 124
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->b:I

    .line 129
    return-void
.end method

.method public setG(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 101
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->g:I

    .line 106
    return-void
.end method

.method public setR(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 78
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->r:I

    .line 83
    return-void
.end method
