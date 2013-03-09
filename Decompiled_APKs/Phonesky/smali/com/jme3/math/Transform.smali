.class public final Lcom/jme3/math/Transform;
.super Ljava/lang/Object;
.source "Transform.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final IDENTITY:Lcom/jme3/math/Transform; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private rot:Lcom/jme3/math/Quaternion;

.field private scale:Lcom/jme3/math/Vector3f;

.field private translation:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    sput-object v0, Lcom/jme3/math/Transform;->IDENTITY:Lcom/jme3/math/Transform;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Quaternion;->IDENTITY:Lcom/jme3/math/Quaternion;

    invoke-direct {p0, v0, v1}, Lcom/jme3/math/Transform;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 2
    .parameter "translation"
    .parameter "rot"

    .prologue
    const/high16 v1, 0x3f80

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    .line 52
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    .line 53
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    .line 56
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 57
    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Transform;
    .locals 3

    .prologue
    .line 309
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Transform;

    .line 310
    .local v1, tq:Lcom/jme3/math/Transform;
    iget-object v2, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    .line 311
    iget-object v2, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    .line 312
    iget-object v2, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    return-object v1

    .line 314
    .end local v1           #tq:Lcom/jme3/math/Transform;
    :catch_0
    move-exception v0

    .line 315
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
    .line 45
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v0

    return-object v0
.end method

.method public combineWithParent(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 3
    .parameter "parent"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 197
    iget-object v0, p1, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 206
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 207
    iget-object v0, p1, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p1, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 211
    return-object p0
.end method

.method public getRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getScale()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

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
    .line 299
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 301
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "rot"

    new-instance v2, Lcom/jme3/math/Quaternion;

    invoke-direct {v2}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Quaternion;

    iput-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    .line 302
    const-string v1, "translation"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    .line 303
    const-string v1, "scale"

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    .line 304
    return-void
.end method

.method public set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 2
    .parameter "matrixQuat"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 286
    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v1, p1, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 287
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 288
    return-object p0
.end method

.method public setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;
    .locals 1
    .parameter "rot"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 84
    return-object p0
.end method

.method public setScale(F)Lcom/jme3/math/Transform;
    .locals 1
    .parameter "scale"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p1, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 122
    return-object p0
.end method

.method public setScale(FFF)Lcom/jme3/math/Transform;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 235
    return-object p0
.end method

.method public setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;
    .locals 1
    .parameter "scale"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 112
    return-object p0
.end method

.method public setTranslation(FFF)Lcom/jme3/math/Transform;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 223
    return-object p0
.end method

.method public setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;
    .locals 1
    .parameter "trans"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 94
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget v1, v1, Lcom/jme3/math/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget v1, v1, Lcom/jme3/math/Quaternion;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget v1, v1, Lcom/jme3/math/Quaternion;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget v1, v1, Lcom/jme3/math/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformInverseVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1
    .parameter "in"
    .parameter "store"

    .prologue
    .line 248
    if-nez p2, :cond_0

    .line 249
    new-instance p2, Lcom/jme3/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 256
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0, p2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 257
    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->inverse()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p2, p2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 258
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 260
    return-object p2
.end method
