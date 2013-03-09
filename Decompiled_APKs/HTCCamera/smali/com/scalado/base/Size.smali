.class public Lcom/scalado/base/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private h:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Size;->w:I

    iput v0, p0, Lcom/scalado/base/Size;->h:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Size;->w:I

    iput v0, p0, Lcom/scalado/base/Size;->h:I

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/base/Size;->w:I

    iput p2, p0, Lcom/scalado/base/Size;->h:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/base/Size;
    .locals 3

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

    invoke-virtual {p0}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

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
    instance-of v3, p1, Lcom/scalado/base/Size;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/scalado/base/Size;

    iget v3, v0, Lcom/scalado/base/Size;->h:I

    iget v4, p0, Lcom/scalado/base/Size;->h:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/base/Size;->w:I

    iget v4, p0, Lcom/scalado/base/Size;->w:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Size;->h:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Size;->w:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/scalado/base/Size;->h:I

    iget v1, p0, Lcom/scalado/base/Size;->w:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setHeight(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the value must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/scalado/base/Size;->h:I

    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the value must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/scalado/base/Size;->w:I

    return-void
.end method

.method public shrinkToAspect(Lcom/scalado/base/Size;)V
    .locals 8

    iget v4, p0, Lcom/scalado/base/Size;->h:I

    iget v5, p1, Lcom/scalado/base/Size;->h:I

    if-gt v4, v5, :cond_0

    iget v4, p0, Lcom/scalado/base/Size;->w:I

    iget v5, p1, Lcom/scalado/base/Size;->w:I

    if-le v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/scalado/base/Size;->w:I

    int-to-long v4, v4

    iget v6, p1, Lcom/scalado/base/Size;->h:I

    int-to-long v6, v6

    mul-long v2, v4, v6

    iget v4, p0, Lcom/scalado/base/Size;->h:I

    int-to-long v4, v4

    iget v6, p1, Lcom/scalado/base/Size;->w:I

    int-to-long v6, v6

    mul-long v0, v4, v6

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    iget v4, p0, Lcom/scalado/base/Size;->w:I

    int-to-long v4, v4

    div-long v4, v0, v4

    long-to-int v4, v4

    iput v4, p0, Lcom/scalado/base/Size;->h:I

    iget v4, p1, Lcom/scalado/base/Size;->w:I

    iput v4, p0, Lcom/scalado/base/Size;->w:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v4, p0, Lcom/scalado/base/Size;->h:I

    int-to-long v4, v4

    div-long v4, v2, v4

    long-to-int v4, v4

    iput v4, p0, Lcom/scalado/base/Size;->w:I

    iget v4, p1, Lcom/scalado/base/Size;->h:I

    iput v4, p0, Lcom/scalado/base/Size;->h:I

    goto :goto_0
.end method
