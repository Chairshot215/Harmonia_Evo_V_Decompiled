.class public Lcom/jme3/effect/shapes/EmitterBoxShape;
.super Ljava/lang/Object;
.source "EmitterBoxShape.java"

# interfaces
.implements Lcom/jme3/effect/shapes/EmitterShape;


# instance fields
.field private len:Lcom/jme3/math/Vector3f;

.field private min:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
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
    const/4 v2, 0x0

    .line 114
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 115
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "min"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    .line 116
    const-string v1, "length"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    .line 117
    return-void
.end method
