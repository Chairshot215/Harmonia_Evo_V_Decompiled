.class public Lcom/jme3/effect/shapes/EmitterSphereShape;
.super Ljava/lang/Object;
.source "EmitterSphereShape.java"

# interfaces
.implements Lcom/jme3/effect/shapes/EmitterShape;


# instance fields
.field private center:Lcom/jme3/math/Vector3f;

.field private radius:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 114
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "center"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    .line 115
    const-string v1, "radius"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->radius:F

    .line 116
    return-void
.end method
