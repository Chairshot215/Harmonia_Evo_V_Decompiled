.class public Lcom/scalado/base/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/scalado/base/Vector;->x:I

    .line 10
    iput v0, p0, Lcom/scalado/base/Vector;->y:I

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/scalado/base/Vector;->x:I

    .line 10
    iput v0, p0, Lcom/scalado/base/Vector;->y:I

    .line 28
    iput p1, p0, Lcom/scalado/base/Vector;->x:I

    .line 29
    iput p2, p0, Lcom/scalado/base/Vector;->y:I

    .line 30
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Vector;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/scalado/base/Vector;

    iget v1, p0, Lcom/scalado/base/Vector;->x:I

    iget v2, p0, Lcom/scalado/base/Vector;->y:I

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Vector;-><init>(II)V

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
    invoke-virtual {p0}, Lcom/scalado/base/Vector;->clone()Lcom/scalado/base/Vector;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 76
    iget v1, p0, Lcom/scalado/base/Vector;->x:I

    move-object v0, p1

    check-cast v0, Lcom/scalado/base/Vector;

    iget v0, v0, Lcom/scalado/base/Vector;->x:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/scalado/base/Vector;->y:I

    check-cast p1, Lcom/scalado/base/Vector;

    .end local p1
    iget v1, p1, Lcom/scalado/base/Vector;->y:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getX()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/scalado/base/Vector;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/scalado/base/Vector;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 48
    iput p1, p0, Lcom/scalado/base/Vector;->x:I

    .line 49
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 67
    iput p1, p0, Lcom/scalado/base/Vector;->y:I

    .line 68
    return-void
.end method
