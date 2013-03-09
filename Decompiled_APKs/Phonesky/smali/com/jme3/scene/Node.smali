.class public Lcom/jme3/scene/Node;
.super Lcom/jme3/scene/Spatial;
.source "Node.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected children:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList",
            "<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/scene/Node;->$assertionsDisabled:Z

    .line 63
    const-class v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Node;->logger:Ljava/util/logging/Logger;

    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/jme3/scene/Spatial;-><init>()V

    .line 69
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/Spatial;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/jme3/scene/Spatial;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/Spatial;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    .line 87
    return-void
.end method


# virtual methods
.method public attachChild(Lcom/jme3/scene/Spatial;)I
    .locals 6
    .parameter "child"

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eq p1, p0, :cond_2

    .line 241
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    .line 244
    :cond_1
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Spatial;->setParent(Lcom/jme3/scene/Node;)V

    .line 245
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 251
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    .line 252
    sget-object v0, Lcom/jme3/scene/Node;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    sget-object v0, Lcom/jme3/scene/Node;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Child ({0}) attached to this node ({1})"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    return v0
.end method

.method public clone(Z)Lcom/jme3/scene/Node;
    .locals 1
    .parameter "cloneMaterials"

    .prologue
    .line 565
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->clone(Z)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    .line 572
    .local v0, nodeClone:Lcom/jme3/scene/Node;
    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Spatial;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->clone(Z)Lcom/jme3/scene/Node;

    move-result-object v0

    return-object v0
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 6
    .parameter "other"
    .parameter "results"

    .prologue
    .line 492
    const/4 v4, 0x0

    .line 493
    .local v4, total:I
    iget-object v5, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v5}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    .local v0, arr$:[Lcom/jme3/scene/Spatial;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 494
    .local v1, child:Lcom/jme3/scene/Spatial;
    invoke-virtual {v1, p1, p2}, Lcom/jme3/scene/Spatial;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v5

    add-int/2addr v4, v5

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v1           #child:Lcom/jme3/scene/Spatial;
    :cond_0
    return v4
.end method

.method public detachChild(Lcom/jme3/scene/Spatial;)I
    .locals 3
    .parameter "child"

    .prologue
    const/4 v1, -0x1

    .line 304
    if-nez p1, :cond_0

    .line 305
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 307
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 308
    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, p1}, Lcom/jme3/util/SafeArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 309
    .local v0, index:I
    if-eq v0, v1, :cond_1

    .line 310
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->detachChildAt(I)Lcom/jme3/scene/Spatial;

    .line 315
    .end local v0           #index:I
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public detachChildAt(I)Lcom/jme3/scene/Spatial;
    .locals 5
    .parameter "index"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    .line 352
    .local v0, child:Lcom/jme3/scene/Spatial;
    if-eqz v0, :cond_0

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setParent(Lcom/jme3/scene/Node;)V

    .line 354
    sget-object v1, Lcom/jme3/scene/Node;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "{0}: Child removed."

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->setBoundRefresh()V

    .line 363
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 365
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    .line 367
    :cond_0
    return-object v0
.end method

.method public getChild(I)Lcom/jme3/scene/Spatial;
    .locals 1
    .parameter "i"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/Spatial;

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v2

    const-string v3, "children"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    .line 603
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 605
    iput-object p0, v3, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->read(Lcom/jme3/export/JmeImporter;)V

    .line 610
    return-void
.end method

.method protected setLightListRefresh()V
    .locals 5

    .prologue
    .line 113
    invoke-super {p0}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    .line 114
    iget-object v4, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    .local v0, arr$:[Lcom/jme3/scene/Spatial;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 115
    .local v1, child:Lcom/jme3/scene/Spatial;
    iget v4, v1, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 114
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    goto :goto_1

    .line 120
    .end local v1           #child:Lcom/jme3/scene/Spatial;
    :cond_1
    return-void
.end method

.method public setMaterial(Lcom/jme3/material/Material;)V
    .locals 2
    .parameter "mat"

    .prologue
    .line 478
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->setMaterial(Lcom/jme3/material/Material;)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    return-void
.end method

.method protected setTransformRefresh()V
    .locals 5

    .prologue
    .line 102
    invoke-super {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 103
    iget-object v4, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    .local v0, arr$:[Lcom/jme3/scene/Spatial;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 104
    .local v1, child:Lcom/jme3/scene/Spatial;
    iget v4, v1, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 103
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    goto :goto_1

    .line 109
    .end local v1           #child:Lcom/jme3/scene/Spatial;
    :cond_1
    return-void
.end method

.method public updateGeometricState()V
    .locals 5

    .prologue
    .line 160
    iget v4, p0, Lcom/jme3/scene/Node;->refreshFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->updateWorldLightList()V

    .line 164
    :cond_0
    iget v4, p0, Lcom/jme3/scene/Node;->refreshFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->updateWorldTransforms()V

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 176
    iget-object v4, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    .local v0, arr$:[Lcom/jme3/scene/Spatial;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 177
    .local v1, child:Lcom/jme3/scene/Spatial;
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v0           #arr$:[Lcom/jme3/scene/Spatial;
    .end local v1           #child:Lcom/jme3/scene/Spatial;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget v4, p0, Lcom/jme3/scene/Node;->refreshFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->updateWorldBound()V

    .line 185
    :cond_3
    sget-boolean v4, Lcom/jme3/scene/Node;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    iget v4, p0, Lcom/jme3/scene/Node;->refreshFlags:I

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 186
    :cond_4
    return-void
.end method

.method public updateLogicalState(F)V
    .locals 5
    .parameter "tpf"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    .line 149
    iget-object v4, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    .local v0, arr$:[Lcom/jme3/scene/Spatial;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 154
    .local v1, child:Lcom/jme3/scene/Spatial;
    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected updateWorldBound()V
    .locals 7

    .prologue
    .line 124
    invoke-super {p0}, Lcom/jme3/scene/Spatial;->updateWorldBound()V

    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, resultBound:Lcom/jme3/bounding/BoundingVolume;
    iget-object v5, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v5}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    .local v0, arr$:[Lcom/jme3/scene/Spatial;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 131
    .local v1, child:Lcom/jme3/scene/Spatial;
    sget-boolean v5, Lcom/jme3/scene/Node;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget v5, v1, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 132
    :cond_0
    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/bounding/BoundingVolume;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    .line 129
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 138
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/scene/Node;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v5, v6}, Lcom/jme3/bounding/BoundingVolume;->clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v4

    goto :goto_1

    .line 142
    .end local v1           #child:Lcom/jme3/scene/Spatial;
    :cond_3
    iput-object v4, p0, Lcom/jme3/scene/Node;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    .line 143
    return-void
.end method
