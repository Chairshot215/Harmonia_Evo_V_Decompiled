.class public Lcom/scalado/base/Rectf;
.super Ljava/lang/Object;
.source "Rectf.java"


# instance fields
.field private h:F

.field private w:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Rectf;->x:F

    iput v0, p0, Lcom/scalado/base/Rectf;->y:F

    iput v0, p0, Lcom/scalado/base/Rectf;->w:F

    iput v0, p0, Lcom/scalado/base/Rectf;->h:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/scalado/base/Rectf;->x:F

    iput v1, p0, Lcom/scalado/base/Rectf;->y:F

    iput v1, p0, Lcom/scalado/base/Rectf;->w:F

    iput v1, p0, Lcom/scalado/base/Rectf;->h:F

    iput p1, p0, Lcom/scalado/base/Rectf;->x:F

    iput p2, p0, Lcom/scalado/base/Rectf;->y:F

    cmpg-float v0, p3, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p4, v1

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p3, p0, Lcom/scalado/base/Rectf;->w:F

    iput p4, p0, Lcom/scalado/base/Rectf;->h:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Rectf;
    .locals 5

    new-instance v0, Lcom/scalado/base/Rectf;

    iget v1, p0, Lcom/scalado/base/Rectf;->x:F

    iget v2, p0, Lcom/scalado/base/Rectf;->y:F

    iget v3, p0, Lcom/scalado/base/Rectf;->w:F

    iget v4, p0, Lcom/scalado/base/Rectf;->h:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/base/Rectf;-><init>(FFFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/scalado/base/Rectf;->clone()Lcom/scalado/base/Rectf;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/scalado/base/Rectf;

    iget v1, v0, Lcom/scalado/base/Rectf;->h:F

    iget v2, p0, Lcom/scalado/base/Rectf;->h:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lcom/scalado/base/Rectf;->w:F

    iget v2, p0, Lcom/scalado/base/Rectf;->w:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lcom/scalado/base/Rectf;->x:F

    iget v2, p0, Lcom/scalado/base/Rectf;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lcom/scalado/base/Rectf;->y:F

    iget v2, p0, Lcom/scalado/base/Rectf;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeight()F
    .locals 1

    iget v0, p0, Lcom/scalado/base/Rectf;->h:F

    return v0
.end method

.method public final getWidth()F
    .locals 1

    iget v0, p0, Lcom/scalado/base/Rectf;->w:F

    return v0
.end method

.method public final getX()F
    .locals 1

    iget v0, p0, Lcom/scalado/base/Rectf;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    iget v0, p0, Lcom/scalado/base/Rectf;->y:F

    return v0
.end method

.method public setHeight(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/scalado/base/Rectf;->h:F

    return-void
.end method

.method public setWidth(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/scalado/base/Rectf;->w:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Rectf;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Rectf;->y:F

    return-void
.end method
