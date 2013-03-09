.class public Lcom/jme3/light/PointLight;
.super Lcom/jme3/light/Light;
.source "PointLight.java"


# instance fields
.field protected invRadius:F

.field protected position:Lcom/jme3/math/Vector3f;

.field protected radius:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    .line 55
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    .line 56
    iput v1, p0, Lcom/jme3/light/PointLight;->radius:F

    .line 57
    iput v1, p0, Lcom/jme3/light/PointLight;->invRadius:F

    return-void
.end method


# virtual methods
.method public computeLastDistance(Lcom/jme3/scene/Spatial;)V
    .locals 3
    .parameter "owner"

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    .line 63
    .local v0, bv:Lcom/jme3/bounding/BoundingVolume;
    iget-object v1, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingVolume;->distanceSquaredTo(Lcom/jme3/math/Vector3f;)F

    move-result v1

    iput v1, p0, Lcom/jme3/light/PointLight;->lastDistance:F

    .line 67
    .end local v0           #bv:Lcom/jme3/bounding/BoundingVolume;
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v1

    iput v1, p0, Lcom/jme3/light/PointLight;->lastDistance:F

    goto :goto_0
.end method

.method public getInvRadius()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/jme3/light/PointLight;->invRadius:F

    return v0
.end method

.method public getPosition()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getType()Lcom/jme3/light/Light$Type;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/jme3/light/Light$Type;->Point:Lcom/jme3/light/Light$Type;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-super {p0, p1}, Lcom/jme3/light/Light;->read(Lcom/jme3/export/JmeImporter;)V

    .line 148
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 149
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    .line 150
    const-string v1, "radius"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/light/PointLight;->radius:F

    .line 151
    iget v1, p0, Lcom/jme3/light/PointLight;->radius:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 152
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/jme3/light/PointLight;->radius:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/light/PointLight;->invRadius:F

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iput v3, p0, Lcom/jme3/light/PointLight;->invRadius:F

    goto :goto_0
.end method

.method public setPosition(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 87
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .parameter "radius"

    .prologue
    const/4 v1, 0x0

    .line 113
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Light radius cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput p1, p0, Lcom/jme3/light/PointLight;->radius:F

    .line 117
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    .line 118
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/light/PointLight;->invRadius:F

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    iput v1, p0, Lcom/jme3/light/PointLight;->invRadius:F

    goto :goto_0
.end method
