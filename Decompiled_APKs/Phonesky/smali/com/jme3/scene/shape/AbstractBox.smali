.class public abstract Lcom/jme3/scene/shape/AbstractBox;
.super Lcom/jme3/scene/Mesh;
.source "AbstractBox.java"


# instance fields
.field public final center:Lcom/jme3/math/Vector3f;

.field public xExtent:F

.field public yExtent:F

.field public zExtent:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 58
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    .line 64
    return-void
.end method


# virtual methods
.method protected final computeVertices()[Lcom/jme3/math/Vector3f;
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    new-array v0, v4, [Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aput-object v1, v0, v7

    .line 77
    .local v0, axes:[Lcom/jme3/math/Vector3f;
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1
.end method

.method protected abstract duUpdateGeometryIndices()V
.end method

.method protected abstract duUpdateGeometryNormals()V
.end method

.method protected abstract duUpdateGeometryTextures()V
.end method

.method protected abstract duUpdateGeometryVertices()V
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->read(Lcom/jme3/export/JmeImporter;)V

    .line 194
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 195
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "xExtent"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    .line 196
    const-string v1, "yExtent"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    .line 197
    const-string v1, "zExtent"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    .line 198
    iget-object v2, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    const-string v1, "center"

    sget-object v3, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 199
    return-void
.end method

.method public final updateGeometry()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->duUpdateGeometryVertices()V

    .line 150
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->duUpdateGeometryNormals()V

    .line 151
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->duUpdateGeometryTextures()V

    .line 152
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->duUpdateGeometryIndices()V

    .line 153
    return-void
.end method

.method public final updateGeometry(Lcom/jme3/math/Vector3f;FFF)V
    .locals 1
    .parameter "center"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 168
    :cond_0
    iput p2, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    .line 169
    iput p3, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    .line 170
    iput p4, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    .line 171
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->updateGeometry()V

    .line 172
    return-void
.end method
