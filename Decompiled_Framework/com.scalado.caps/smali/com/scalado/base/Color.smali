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

    const/16 v1, 0xff

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Color;->a:I

    iput v0, p0, Lcom/scalado/base/Color;->r:I

    iput v0, p0, Lcom/scalado/base/Color;->g:I

    iput v0, p0, Lcom/scalado/base/Color;->b:I

    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    if-gt p3, v1, :cond_0

    if-ltz p4, :cond_0

    if-le p4, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Color value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->a:I

    iput p2, p0, Lcom/scalado/base/Color;->r:I

    iput p3, p0, Lcom/scalado/base/Color;->g:I

    iput p4, p0, Lcom/scalado/base/Color;->b:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Color;
    .locals 5

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

    invoke-virtual {p0}, Lcom/scalado/base/Color;->clone()Lcom/scalado/base/Color;

    move-result-object v0

    return-object v0
.end method

.method public final getA()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Color;->a:I

    return v0
.end method

.method public final getB()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Color;->b:I

    return v0
.end method

.method public final getG()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Color;->g:I

    return v0
.end method

.method public final getR()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Color;->r:I

    return v0
.end method

.method public setA(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Color value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->a:I

    return-void
.end method

.method public setB(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->b:I

    return-void
.end method

.method public setG(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->g:I

    return-void
.end method

.method public setR(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of [0-255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/base/Color;->r:I

    return-void
.end method
