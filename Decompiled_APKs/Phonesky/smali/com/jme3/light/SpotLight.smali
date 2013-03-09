.class public Lcom/jme3/light/SpotLight;
.super Lcom/jme3/light/Light;
.source "SpotLight.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# instance fields
.field protected direction:Lcom/jme3/math/Vector3f;

.field protected invSpotRange:F

.field protected packedAngleCos:F

.field protected position:Lcom/jme3/math/Vector3f;

.field protected spotInnerAngle:F

.field protected spotOuterAngle:F

.field protected spotRange:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    .line 57
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    .line 58
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x4080

    invoke-direct {v0, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    .line 59
    const v0, 0x3dc90fdb

    iput v0, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    .line 60
    const v0, 0x3e060a92

    iput v0, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    .line 61
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    .line 62
    iput v2, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    .line 63
    iput v2, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    .line 67
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computePackedCos()V

    .line 68
    return-void
.end method

.method private computePackedCos()V
    .locals 3

    .prologue
    .line 71
    iget v2, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    invoke-static {v2}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    .line 72
    .local v0, innerCos:F
    iget v2, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    invoke-static {v2}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    .line 73
    .local v1, outerCos:F
    const/high16 v2, 0x447a

    mul-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    .line 74
    iget v2, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    .line 75
    return-void
.end method


# virtual methods
.method protected computeLastDistance(Lcom/jme3/scene/Spatial;)V
    .locals 3
    .parameter "owner"

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    .line 81
    .local v0, bv:Lcom/jme3/bounding/BoundingVolume;
    iget-object v1, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingVolume;->distanceSquaredTo(Lcom/jme3/math/Vector3f;)F

    move-result v1

    iput v1, p0, Lcom/jme3/light/SpotLight;->lastDistance:F

    .line 85
    .end local v0           #bv:Lcom/jme3/bounding/BoundingVolume;
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v1

    iput v1, p0, Lcom/jme3/light/SpotLight;->lastDistance:F

    goto :goto_0
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getInvSpotRange()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    return v0
.end method

.method public getPackedAngleCos()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    return v0
.end method

.method public getPosition()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getType()Lcom/jme3/light/Light$Type;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/jme3/light/Light$Type;->Spot:Lcom/jme3/light/Light$Type;

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

    .line 205
    invoke-super {p0, p1}, Lcom/jme3/light/Light;->read(Lcom/jme3/export/JmeImporter;)V

    .line 206
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 207
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "spotInnerAngle"

    const v2, 0x3dc90fdb

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    .line 208
    const-string v1, "spotOuterAngle"

    const v2, 0x3e060a92

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    .line 209
    const-string v1, "direction"

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    .line 210
    const-string v1, "position"

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    .line 211
    const-string v1, "spotRange"

    const/high16 v2, 0x42c8

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    .line 212
    iget v1, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 213
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iput v3, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    goto :goto_0
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 98
    return-void
.end method

.method public setPosition(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 106
    return-void
.end method

.method public setSpotInnerAngle(F)V
    .locals 0
    .parameter "spotInnerAngle"

    .prologue
    .line 159
    iput p1, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    .line 160
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computePackedCos()V

    .line 161
    return-void
.end method

.method public setSpotOuterAngle(F)V
    .locals 0
    .parameter "spotOuterAngle"

    .prologue
    .line 178
    iput p1, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    .line 179
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computePackedCos()V

    .line 180
    return-void
.end method

.method public setSpotRange(F)V
    .locals 2
    .parameter "spotRange"

    .prologue
    const/4 v1, 0x0

    .line 126
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpotLight range cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iput p1, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    .line 130
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    .line 131
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    iput v1, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    goto :goto_0
.end method
