.class public Lcom/jme3/math/Plane;
.super Ljava/lang/Object;
.source "Plane.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/math/Plane$Side;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field protected constant:F

.field protected normal:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/jme3/math/Plane;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Plane;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;F)V
    .locals 2
    .parameter "normal"
    .parameter "constant"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "normal cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 93
    iput p2, p0, Lcom/jme3/math/Plane;->constant:F

    .line 94
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Plane;
    .locals 3

    .prologue
    .line 277
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Plane;

    .line 278
    .local v1, p:Lcom/jme3/math/Plane;
    iget-object v2, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    return-object v1

    .line 280
    .end local v1           #p:Lcom/jme3/math/Plane;
    :catch_0
    move-exception v0

    .line 281
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
    .line 48
    invoke-virtual {p0}, Lcom/jme3/math/Plane;->clone()Lcom/jme3/math/Plane;

    move-result-object v0

    return-object v0
.end method

.method public getConstant()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/jme3/math/Plane;->constant:F

    return v0
.end method

.method public getNormal()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public pseudoDistance(Lcom/jme3/math/Vector3f;)F
    .locals 2
    .parameter "point"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    iget v1, p0, Lcom/jme3/math/Plane;->constant:F

    sub-float/2addr v0, v1

    return v0
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
    .line 269
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 270
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "normal"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    .line 271
    const-string v1, "constant"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Plane;->constant:F

    .line 272
    return-void
.end method

.method public setConstant(F)V
    .locals 0
    .parameter "constant"

    .prologue
    .line 134
    iput p1, p0, Lcom/jme3/math/Plane;->constant:F

    .line 135
    return-void
.end method

.method public setNormal(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 115
    return-void
.end method

.method public setNormal(Lcom/jme3/math/Vector3f;)V
    .locals 2
    .parameter "normal"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "normal cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 107
    return-void
.end method

.method public setPlanePoints(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 5
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 242
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    iget v1, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iget v2, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iget v3, p3, Lcom/jme3/math/Vector3f;->z:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->crossLocal(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 244
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Plane;->constant:F

    .line 245
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Normal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Constant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Plane;->constant:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
