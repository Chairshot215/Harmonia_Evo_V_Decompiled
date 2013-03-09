.class public Lcom/scalado/base/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field private h:I

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Rect;->x:I

    iput v0, p0, Lcom/scalado/base/Rect;->y:I

    iput v0, p0, Lcom/scalado/base/Rect;->w:I

    iput v0, p0, Lcom/scalado/base/Rect;->h:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Rect;->x:I

    iput v0, p0, Lcom/scalado/base/Rect;->y:I

    iput v0, p0, Lcom/scalado/base/Rect;->w:I

    iput v0, p0, Lcom/scalado/base/Rect;->h:I

    iput p1, p0, Lcom/scalado/base/Rect;->x:I

    iput p2, p0, Lcom/scalado/base/Rect;->y:I

    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p3, p0, Lcom/scalado/base/Rect;->w:I

    iput p4, p0, Lcom/scalado/base/Rect;->h:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Rect;
    .locals 5

    new-instance v0, Lcom/scalado/base/Rect;

    iget v1, p0, Lcom/scalado/base/Rect;->x:I

    iget v2, p0, Lcom/scalado/base/Rect;->y:I

    iget v3, p0, Lcom/scalado/base/Rect;->w:I

    iget v4, p0, Lcom/scalado/base/Rect;->h:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/base/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->clone()Lcom/scalado/base/Rect;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/scalado/base/Rect;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/scalado/base/Rect;

    iget v3, v0, Lcom/scalado/base/Rect;->h:I

    iget v4, p0, Lcom/scalado/base/Rect;->h:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/base/Rect;->w:I

    iget v4, p0, Lcom/scalado/base/Rect;->w:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/base/Rect;->x:I

    iget v4, p0, Lcom/scalado/base/Rect;->x:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/base/Rect;->y:I

    iget v4, p0, Lcom/scalado/base/Rect;->y:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 3

    new-instance v0, Lcom/scalado/base/Size;

    iget v1, p0, Lcom/scalado/base/Rect;->w:I

    iget v2, p0, Lcom/scalado/base/Rect;->h:I

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Rect;->h:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Rect;->w:I

    return v0
.end method

.method public final getX()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Rect;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Rect;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/scalado/base/Rect;->h:I

    iget v1, p0, Lcom/scalado/base/Rect;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/scalado/base/Rect;->x:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/scalado/base/Rect;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setHeight(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/scalado/base/Rect;->h:I

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/scalado/base/Rect;->w:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Rect;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Rect;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/base/Rect;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/base/Rect;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/base/Rect;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/base/Rect;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
