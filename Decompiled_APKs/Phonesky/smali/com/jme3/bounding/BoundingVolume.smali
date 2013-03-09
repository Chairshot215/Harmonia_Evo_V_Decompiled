.class public abstract Lcom/jme3/bounding/BoundingVolume;
.super Ljava/lang/Object;
.source "BoundingVolume.java"

# interfaces
.implements Lcom/jme3/collision/Collidable;
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/bounding/BoundingVolume$Type;
    }
.end annotation


# instance fields
.field protected center:Lcom/jme3/math/Vector3f;

.field protected checkPlane:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    .line 78
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    .line 81
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/bounding/BoundingVolume;
    .locals 3

    .prologue
    .line 312
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingVolume;

    .line 313
    .local v0, clone:Lcom/jme3/bounding/BoundingVolume;
    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, v0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    return-object v0

    .line 315
    .end local v0           #clone:Lcom/jme3/bounding/BoundingVolume;
    :catch_0
    move-exception v1

    .line 316
    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public abstract clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingVolume;->clone()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    return-object v0
.end method

.method public abstract computeFromPoints(Ljava/nio/FloatBuffer;)V
.end method

.method public final distanceSquaredTo(Lcom/jme3/math/Vector3f;)F
    .locals 1
    .parameter "point"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v0

    return v0
.end method

.method public abstract distanceToEdge(Lcom/jme3/math/Vector3f;)F
.end method

.method public final getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getCheckPlane()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    return v0
.end method

.method public abstract getType()Lcom/jme3/bounding/BoundingVolume$Type;
.end method

.method public abstract intersectsBoundingBox(Lcom/jme3/bounding/BoundingBox;)Z
.end method

.method public abstract mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
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
    .line 325
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "center"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    .line 326
    return-void
.end method

.method public final setCenter(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "newCenter"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 202
    return-void
.end method

.method public final setCheckPlane(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 101
    iput p1, p0, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    .line 102
    return-void
.end method

.method public abstract transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
.end method

.method public abstract whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;
.end method
