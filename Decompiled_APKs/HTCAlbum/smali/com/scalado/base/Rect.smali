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

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/scalado/base/Rect;->x:I

    .line 10
    iput v0, p0, Lcom/scalado/base/Rect;->y:I

    .line 12
    iput v0, p0, Lcom/scalado/base/Rect;->w:I

    .line 14
    iput v0, p0, Lcom/scalado/base/Rect;->h:I

    .line 21
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/scalado/base/Rect;->x:I

    .line 10
    iput v0, p0, Lcom/scalado/base/Rect;->y:I

    .line 12
    iput v0, p0, Lcom/scalado/base/Rect;->w:I

    .line 14
    iput v0, p0, Lcom/scalado/base/Rect;->h:I

    .line 36
    iput p1, p0, Lcom/scalado/base/Rect;->x:I

    .line 37
    iput p2, p0, Lcom/scalado/base/Rect;->y:I

    .line 38
    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iput p3, p0, Lcom/scalado/base/Rect;->w:I

    .line 44
    iput p4, p0, Lcom/scalado/base/Rect;->h:I

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Rect;
    .locals 5

    .prologue
    .line 138
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

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->clone()Lcom/scalado/base/Rect;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    if-ne p0, p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    instance-of v3, p1, Lcom/scalado/base/Rect;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 154
    check-cast v0, Lcom/scalado/base/Rect;

    .line 155
    .local v0, r:Lcom/scalado/base/Rect;
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

    .line 161
    goto :goto_0
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/scalado/base/Size;

    iget v1, p0, Lcom/scalado/base/Rect;->w:I

    iget v2, p0, Lcom/scalado/base/Rect;->h:I

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/scalado/base/Rect;->h:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/scalado/base/Rect;->w:I

    return v0
.end method

.method public final getX()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/scalado/base/Rect;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/scalado/base/Rect;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 172
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
    .parameter "value"

    .prologue
    .line 83
    if-gez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput p1, p0, Lcom/scalado/base/Rect;->h:I

    .line 89
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 61
    if-gez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput p1, p0, Lcom/scalado/base/Rect;->w:I

    .line 67
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 107
    iput p1, p0, Lcom/scalado/base/Rect;->x:I

    .line 108
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 126
    iput p1, p0, Lcom/scalado/base/Rect;->y:I

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
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
