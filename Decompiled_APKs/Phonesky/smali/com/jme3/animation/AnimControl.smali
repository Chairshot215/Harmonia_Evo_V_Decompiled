.class public final Lcom/jme3/animation/AnimControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "AnimControl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field animationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private transient channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/AnimChannel;",
            ">;"
        }
    .end annotation
.end field

.field private transient listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/AnimEventListener;",
            ">;"
        }
    .end annotation
.end field

.field skeleton:Lcom/jme3/animation/Skeleton;

.field private skeletonControl:Lcom/jme3/animation/SkeletonControl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/Skeleton;)V
    .locals 1
    .parameter "skeleton"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    .line 97
    iput-object p1, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 98
    invoke-virtual {p0}, Lcom/jme3/animation/AnimControl;->reset()V

    .line 99
    return-void
.end method


# virtual methods
.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 4
    .parameter "spatial"

    .prologue
    .line 112
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/AnimControl;

    .line 113
    .local v0, clone:Lcom/jme3/animation/AnimControl;
    iput-object p1, v0, Lcom/jme3/animation/AnimControl;->spatial:Lcom/jme3/scene/Spatial;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    .line 117
    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz v2, :cond_0

    .line 118
    new-instance v2, Lcom/jme3/animation/Skeleton;

    iget-object v3, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-direct {v2, v3}, Lcom/jme3/animation/Skeleton;-><init>(Lcom/jme3/animation/Skeleton;)V

    iput-object v2, v0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    return-object v0

    .line 125
    .end local v0           #clone:Lcom/jme3/animation/AnimControl;
    :catch_0
    move-exception v1

    .line 126
    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method protected controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0
    .parameter "rm"
    .parameter "vp"

    .prologue
    .line 344
    return-void
.end method

.method protected controlUpdate(F)V
    .locals 3
    .parameter "tpf"

    .prologue
    .line 324
    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v2}, Lcom/jme3/animation/Skeleton;->reset()V

    .line 328
    :cond_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    .line 329
    .local v1, vars:Lcom/jme3/util/TempVars;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/animation/AnimChannel;

    invoke-virtual {v2, p1, v1}, Lcom/jme3/animation/AnimChannel;->update(FLcom/jme3/util/TempVars;)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    .line 334
    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v2}, Lcom/jme3/animation/Skeleton;->updateWorldVectors()V

    .line 337
    :cond_2
    return-void
.end method

.method public getSkeleton()Lcom/jme3/animation/Skeleton;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    return-object v0
.end method

.method notifyAnimCycleDone(Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V
    .locals 2
    .parameter "channel"
    .parameter "name"

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/jme3/animation/AnimControl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/AnimEventListener;

    invoke-interface {v1, p0, p1, p2}, Lcom/jme3/animation/AnimEventListener;->onAnimCycleDone(Lcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 356
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    .line 357
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 358
    .local v0, in:Lcom/jme3/export/InputCapsule;
    const-string v3, "skeleton"

    invoke-interface {v0, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/animation/Skeleton;

    iput-object v3, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 359
    const-string v3, "animations"

    invoke-interface {v0, v3, v4}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    .line 361
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getFormatVersion()I

    move-result v3

    if-nez v3, :cond_0

    .line 368
    const-string v3, "targets"

    invoke-interface {v0, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v1

    .line 369
    .local v1, sav:[Lcom/jme3/export/Savable;
    if-eqz v1, :cond_0

    .line 370
    array-length v3, v1

    new-array v2, v3, [Lcom/jme3/scene/Mesh;

    .line 371
    .local v2, targets:[Lcom/jme3/scene/Mesh;
    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    new-instance v3, Lcom/jme3/animation/SkeletonControl;

    iget-object v4, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-direct {v3, v2, v4}, Lcom/jme3/animation/SkeletonControl;-><init>([Lcom/jme3/scene/Mesh;Lcom/jme3/animation/Skeleton;)V

    iput-object v3, p0, Lcom/jme3/animation/AnimControl;->skeletonControl:Lcom/jme3/animation/SkeletonControl;

    .line 373
    iget-object v3, p0, Lcom/jme3/animation/AnimControl;->spatial:Lcom/jme3/scene/Spatial;

    iget-object v4, p0, Lcom/jme3/animation/AnimControl;->skeletonControl:Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 376
    .end local v1           #sav:[Lcom/jme3/export/Savable;
    .end local v2           #targets:[Lcom/jme3/scene/Mesh;
    :cond_0
    return-void
.end method

.method final reset()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0}, Lcom/jme3/animation/Skeleton;->resetAndUpdate()V

    .line 294
    :cond_0
    return-void
.end method

.method public setAnimations(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/animation/Animation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, animations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jme3/animation/Animation;>;"
    iput-object p1, p0, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    .line 137
    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2
    .parameter "spatial"

    .prologue
    .line 278
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeletonControl:Lcom/jme3/animation/SkeletonControl;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->spatial:Lcom/jme3/scene/Spatial;

    iget-object v1, p0, Lcom/jme3/animation/AnimControl;->skeletonControl:Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    .line 282
    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    .line 285
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeletonControl:Lcom/jme3/animation/SkeletonControl;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/jme3/animation/AnimControl;->skeletonControl:Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 288
    :cond_1
    return-void
.end method
