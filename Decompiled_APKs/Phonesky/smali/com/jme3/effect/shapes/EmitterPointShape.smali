.class public Lcom/jme3/effect/shapes/EmitterPointShape;
.super Ljava/lang/Object;
.source "EmitterPointShape.java"

# interfaces
.implements Lcom/jme3/effect/shapes/EmitterShape;


# instance fields
.field private point:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
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
    .line 94
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "point"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/effect/shapes/EmitterPointShape;->point:Lcom/jme3/math/Vector3f;

    .line 95
    return-void
.end method
