.class public Lcom/scalado/base/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/scalado/base/Point;->x:I

    .line 9
    iput v0, p0, Lcom/scalado/base/Point;->y:I

    .line 16
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/scalado/base/Point;->x:I

    .line 9
    iput v0, p0, Lcom/scalado/base/Point;->y:I

    .line 27
    iput p1, p0, Lcom/scalado/base/Point;->x:I

    .line 28
    iput p2, p0, Lcom/scalado/base/Point;->y:I

    .line 29
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Point;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/scalado/base/Point;

    iget v1, p0, Lcom/scalado/base/Point;->x:I

    iget v2, p0, Lcom/scalado/base/Point;->y:I

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Point;-><init>(II)V

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
    .line 6
    invoke-virtual {p0}, Lcom/scalado/base/Point;->clone()Lcom/scalado/base/Point;

    move-result-object v0

    return-object v0
.end method

.method public final getX()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/scalado/base/Point;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/scalado/base/Point;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 47
    iput p1, p0, Lcom/scalado/base/Point;->x:I

    .line 48
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 66
    iput p1, p0, Lcom/scalado/base/Point;->y:I

    .line 67
    return-void
.end method
