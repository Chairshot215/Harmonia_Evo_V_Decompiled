.class public Lcom/jme3/effect/shapes/EmitterMeshVertexShape;
.super Ljava/lang/Object;
.source "EmitterMeshVertexShape.java"

# interfaces
.implements Lcom/jme3/effect/shapes/EmitterShape;


# instance fields
.field protected normals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/math/Vector3f;",
            ">;>;"
        }
    .end annotation
.end field

.field protected vertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/math/Vector3f;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
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

    .line 150
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 151
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v2, "vertices"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    .line 153
    const-string v2, "normals"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 154
    .local v1, tmpNormals:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/jme3/math/Vector3f;>;>;"
    if-eqz v1, :cond_0

    .line 155
    iput-object v1, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->normals:Ljava/util/List;

    .line 157
    :cond_0
    return-void
.end method
