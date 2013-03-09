.class public Lcom/scalado/base/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Point;->x:I

    iput v0, p0, Lcom/scalado/base/Point;->y:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Point;->x:I

    iput v0, p0, Lcom/scalado/base/Point;->y:I

    iput p1, p0, Lcom/scalado/base/Point;->x:I

    iput p2, p0, Lcom/scalado/base/Point;->y:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Point;
    .locals 3

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

    invoke-virtual {p0}, Lcom/scalado/base/Point;->clone()Lcom/scalado/base/Point;

    move-result-object v0

    return-object v0
.end method

.method public final getX()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Point;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Point;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Point;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Point;->y:I

    return-void
.end method
