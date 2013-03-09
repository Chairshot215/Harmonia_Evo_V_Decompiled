.class public Lcom/htc/painting/engine/ViewPortSnapShot;
.super Ljava/lang/Object;
.source "ViewPortSnapShot.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawingRecord"


# instance fields
.field final mCreateTime:J

.field private final mGroupId:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(ILcom/htc/painting/engine/ViewPort;J)V
    .locals 2
    .parameter "groupid"
    .parameter "viewport"
    .parameter "createTime"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mGroupId:I

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mMatrix:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mRect:Landroid/graphics/RectF;

    .line 25
    iput-wide p3, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mCreateTime:J

    .line 26
    return-void
.end method

.method public static contentEqual(Lcom/htc/painting/engine/ViewPortSnapShot;Lcom/htc/painting/engine/ViewPortSnapShot;)Z
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    .line 78
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v4, 0x0

    .line 94
    :cond_1
    :goto_0
    return v4

    .line 80
    :cond_2
    const/4 v4, 0x0

    .line 81
    .local v4, result:Z
    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 82
    .local v0, matrixA:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 83
    .local v1, matrixB:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v2

    .line 84
    .local v2, rectA:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 86
    .local v3, rectB:Landroid/graphics/RectF;
    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v6, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static findSnapShotsOfSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/ViewPortSnapShot;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/painting/engine/ViewPortSnapShot;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/painting/engine/ViewPortSnapShot;",
            ">;)[",
            "Lcom/htc/painting/engine/ViewPortSnapShot;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, records:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    .local p1, refRecords:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v4, 0x0

    .line 123
    :cond_1
    :goto_0
    return-object v4

    .line 109
    :cond_2
    const/4 v4, 0x0

    .line 110
    .local v4, result:[Lcom/htc/painting/engine/ViewPortSnapShot;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/ViewPortSnapShot;

    .line 111
    .local v2, record:Lcom/htc/painting/engine/ViewPortSnapShot;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/ViewPortSnapShot;

    .line 112
    .local v3, refRecord:Lcom/htc/painting/engine/ViewPortSnapShot;
    invoke-virtual {v2}, Lcom/htc/painting/engine/ViewPortSnapShot;->getGroupId()I

    move-result v5

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPortSnapShot;->getGroupId()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 115
    if-nez v4, :cond_4

    .line 116
    const/4 v5, 0x2

    new-array v4, v5, [Lcom/htc/painting/engine/ViewPortSnapShot;

    .end local v4           #result:[Lcom/htc/painting/engine/ViewPortSnapShot;
    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 117
    .restart local v4       #result:[Lcom/htc/painting/engine/ViewPortSnapShot;
    goto :goto_0
.end method


# virtual methods
.method public computeReferenceDelta(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "result"
    .parameter "refNow"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 51
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 52
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/htc/painting/engine/ViewPortSnapShot;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/htc/painting/engine/ViewPortSnapShot;

    .end local p1
    invoke-static {p0, p1}, Lcom/htc/painting/engine/ViewPortSnapShot;->contentEqual(Lcom/htc/painting/engine/ViewPortSnapShot;Lcom/htc/painting/engine/ViewPortSnapShot;)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDirectMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDirectRectF()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mGroupId:I

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matrix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/engine/ViewPortSnapShot;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
