.class public Lcom/jme3/light/DirectionalLight;
.super Lcom/jme3/light/Light;
.source "DirectionalLight.java"


# instance fields
.field protected direction:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    .line 52
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x4080

    invoke-direct {v0, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public computeLastDistance(Lcom/jme3/scene/Spatial;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/light/DirectionalLight;->lastDistance:F

    .line 57
    return-void
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getType()Lcom/jme3/light/Light$Type;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/jme3/light/Light$Type;->Directional:Lcom/jme3/light/Light$Type;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/jme3/light/Light;->read(Lcom/jme3/export/JmeImporter;)V

    .line 100
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 101
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "direction"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    .line 102
    return-void
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 80
    iget-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->isUnitVector()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 83
    :cond_0
    return-void
.end method
