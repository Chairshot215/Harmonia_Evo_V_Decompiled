.class public Lcom/scalado/base/Pointf;
.super Ljava/lang/Object;
.source "Pointf.java"


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Pointf;->x:F

    iput v0, p0, Lcom/scalado/base/Pointf;->y:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Pointf;->x:F

    iput v0, p0, Lcom/scalado/base/Pointf;->y:F

    iput p1, p0, Lcom/scalado/base/Pointf;->x:F

    iput p2, p0, Lcom/scalado/base/Pointf;->y:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Pointf;
    .locals 3

    new-instance v0, Lcom/scalado/base/Pointf;

    iget v1, p0, Lcom/scalado/base/Pointf;->x:F

    iget v2, p0, Lcom/scalado/base/Pointf;->y:F

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Pointf;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/scalado/base/Pointf;->clone()Lcom/scalado/base/Pointf;

    move-result-object v0

    return-object v0
.end method

.method public final getX()F
    .locals 1

    iget v0, p0, Lcom/scalado/base/Pointf;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    iget v0, p0, Lcom/scalado/base/Pointf;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Pointf;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Pointf;->y:F

    return-void
.end method
