.class public Lcom/scalado/base/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private h:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/scalado/base/Size;->w:I

    .line 10
    iput v0, p0, Lcom/scalado/base/Size;->h:I

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/scalado/base/Size;->w:I

    .line 10
    iput v0, p0, Lcom/scalado/base/Size;->h:I

    .line 38
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput p1, p0, Lcom/scalado/base/Size;->w:I

    .line 42
    iput p2, p0, Lcom/scalado/base/Size;->h:I

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Size;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/scalado/base/Size;

    iget v1, p0, Lcom/scalado/base/Size;->w:I

    iget v2, p0, Lcom/scalado/base/Size;->h:I

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

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
    invoke-virtual {p0}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    instance-of v3, p1, Lcom/scalado/base/Size;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 131
    check-cast v0, Lcom/scalado/base/Size;

    .line 132
    .local v0, s:Lcom/scalado/base/Size;
    iget v3, v0, Lcom/scalado/base/Size;->h:I

    iget v4, p0, Lcom/scalado/base/Size;->h:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/base/Size;->w:I

    iget v4, p0, Lcom/scalado/base/Size;->w:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    .line 135
    goto :goto_0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/scalado/base/Size;->h:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/scalado/base/Size;->w:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/scalado/base/Size;->h:I

    iget v1, p0, Lcom/scalado/base/Size;->w:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setHeight(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 113
    if-gez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the value must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput p1, p0, Lcom/scalado/base/Size;->h:I

    .line 116
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 92
    if-gez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the value must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput p1, p0, Lcom/scalado/base/Size;->w:I

    .line 95
    return-void
.end method

.method public shrinkToAspect(Lcom/scalado/base/Size;)V
    .locals 8
    .parameter "boundingDimensions"

    .prologue
    .line 62
    iget v4, p0, Lcom/scalado/base/Size;->h:I

    iget v5, p1, Lcom/scalado/base/Size;->h:I

    if-gt v4, v5, :cond_0

    iget v4, p0, Lcom/scalado/base/Size;->w:I

    iget v5, p1, Lcom/scalado/base/Size;->w:I

    if-le v4, v5, :cond_1

    .line 64
    :cond_0
    iget v4, p0, Lcom/scalado/base/Size;->w:I

    int-to-long v4, v4

    iget v6, p1, Lcom/scalado/base/Size;->h:I

    int-to-long v6, v6

    mul-long v2, v4, v6

    .line 65
    .local v2, wBh:J
    iget v4, p0, Lcom/scalado/base/Size;->h:I

    int-to-long v4, v4

    iget v6, p1, Lcom/scalado/base/Size;->w:I

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 66
    .local v0, hBw:J
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 67
    iget v4, p0, Lcom/scalado/base/Size;->w:I

    int-to-long v4, v4

    div-long v4, v0, v4

    long-to-int v4, v4

    iput v4, p0, Lcom/scalado/base/Size;->h:I

    .line 68
    iget v4, p1, Lcom/scalado/base/Size;->w:I

    iput v4, p0, Lcom/scalado/base/Size;->w:I

    .line 74
    .end local v0           #hBw:J
    .end local v2           #wBh:J
    :cond_1
    :goto_0
    return-void

    .line 70
    .restart local v0       #hBw:J
    .restart local v2       #wBh:J
    :cond_2
    iget v4, p0, Lcom/scalado/base/Size;->h:I

    int-to-long v4, v4

    div-long v4, v2, v4

    long-to-int v4, v4

    iput v4, p0, Lcom/scalado/base/Size;->w:I

    .line 71
    iget v4, p1, Lcom/scalado/base/Size;->h:I

    iput v4, p0, Lcom/scalado/base/Size;->h:I

    goto :goto_0
.end method
