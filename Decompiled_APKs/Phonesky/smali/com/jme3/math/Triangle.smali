.class public Lcom/jme3/math/Triangle;
.super Lcom/jme3/math/AbstractTriangle;
.source "Triangle.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private index:I

.field private pointa:Lcom/jme3/math/Vector3f;

.field private pointb:Lcom/jme3/math/Vector3f;

.field private pointc:Lcom/jme3/math/Vector3f;

.field private projection:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/jme3/math/AbstractTriangle;-><init>()V

    .line 51
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointa:Lcom/jme3/math/Vector3f;

    .line 52
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointb:Lcom/jme3/math/Vector3f;

    .line 53
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointc:Lcom/jme3/math/Vector3f;

    .line 60
    return-void
.end method

.method public static computeTriangleNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"
    .parameter "store"

    .prologue
    .line 268
    if-nez p3, :cond_0

    .line 269
    new-instance p3, Lcom/jme3/math/Vector3f;

    .end local p3
    invoke-direct {p3, p1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    .line 274
    .restart local p3
    :goto_0
    invoke-virtual {p3, p0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iget v3, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v4, p0, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->crossLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 275
    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Triangle;
    .locals 3

    .prologue
    .line 293
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Triangle;

    .line 294
    .local v1, t:Lcom/jme3/math/Triangle;
    iget-object v2, p0, Lcom/jme3/math/Triangle;->pointa:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/math/Triangle;->pointa:Lcom/jme3/math/Vector3f;

    .line 295
    iget-object v2, p0, Lcom/jme3/math/Triangle;->pointb:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/math/Triangle;->pointb:Lcom/jme3/math/Vector3f;

    .line 296
    iget-object v2, p0, Lcom/jme3/math/Triangle;->pointc:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/math/Triangle;->pointc:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-object v1

    .line 298
    .end local v1           #t:Lcom/jme3/math/Triangle;
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->clone()Lcom/jme3/math/Triangle;

    move-result-object v0

    return-object v0
.end method

.method public get1()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointa:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public get2()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointb:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public get3()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointc:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "pointa"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointa:Lcom/jme3/math/Vector3f;

    .line 286
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "pointb"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointb:Lcom/jme3/math/Vector3f;

    .line 287
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "pointc"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointc:Lcom/jme3/math/Vector3f;

    .line 288
    return-void
.end method
