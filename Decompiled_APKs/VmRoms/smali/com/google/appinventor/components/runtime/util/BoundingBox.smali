.class public final Lcom/google/appinventor/components/runtime/util/BoundingBox;
.super Ljava/lang/Object;


# instance fields
.field private bottom:D

.field private left:D

.field private right:D

.field private top:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    return-void
.end method


# virtual methods
.method public getBottom()D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    return-wide v0
.end method

.method public getLeft()D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    return-wide v0
.end method

.method public getRight()D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    return-wide v0
.end method

.method public getTop()D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    return-wide v0
.end method

.method public intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 10

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    iget-wide v2, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    iget-wide v4, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    iget-wide v6, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    iget-wide v8, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    cmpl-double v8, v0, v2

    if-gtz v8, :cond_0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<BoundingBox (left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
