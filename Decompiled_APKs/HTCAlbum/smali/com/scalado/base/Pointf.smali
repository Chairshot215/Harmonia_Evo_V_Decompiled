.class public Lcom/scalado/base/Pointf;
.super Ljava/lang/Object;
.source "Pointf.java"


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/scalado/base/Pointf;->x:F

    .line 9
    iput v0, p0, Lcom/scalado/base/Pointf;->y:F

    .line 16
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/scalado/base/Pointf;->x:F

    .line 9
    iput v0, p0, Lcom/scalado/base/Pointf;->y:F

    .line 27
    iput p1, p0, Lcom/scalado/base/Pointf;->x:F

    .line 28
    iput p2, p0, Lcom/scalado/base/Pointf;->y:F

    .line 29
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Pointf;
    .locals 3

    .prologue
    .line 70
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

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/scalado/base/Pointf;->clone()Lcom/scalado/base/Pointf;

    move-result-object v0

    return-object v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/scalado/base/Pointf;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/scalado/base/Pointf;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 47
    iput p1, p0, Lcom/scalado/base/Pointf;->x:F

    .line 48
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 66
    iput p1, p0, Lcom/scalado/base/Pointf;->y:F

    .line 67
    return-void
.end method
