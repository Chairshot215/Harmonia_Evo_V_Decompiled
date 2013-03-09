.class public abstract Lcom/jme3/scene/Spatial;
.super Ljava/lang/Object;
.source "Spatial.java"

# interfaces
.implements Lcom/jme3/asset/Asset;
.implements Lcom/jme3/collision/Collidable;
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/Spatial$BatchHint;,
        Lcom/jme3/scene/Spatial$CullHint;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected batchHint:Lcom/jme3/scene/Spatial$BatchHint;

.field protected controls:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList",
            "<",
            "Lcom/jme3/scene/control/Control;",
            ">;"
        }
    .end annotation
.end field

.field protected cullHint:Lcom/jme3/scene/Spatial$CullHint;

.field protected transient frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

.field protected key:Lcom/jme3/asset/AssetKey;

.field protected localLights:Lcom/jme3/light/LightList;

.field protected localTransform:Lcom/jme3/math/Transform;

.field protected name:Ljava/lang/String;

.field protected transient parent:Lcom/jme3/scene/Node;

.field protected queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public transient queueDistance:F

.field protected transient refreshFlags:I

.field protected shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field protected userData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation
.end field

.field protected worldBound:Lcom/jme3/bounding/BoundingVolume;

.field protected transient worldLights:Lcom/jme3/light/LightList;

.field protected worldTransform:Lcom/jme3/math/Transform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/scene/Spatial;->$assertionsDisabled:Z

    .line 68
    const-class v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Spatial;->logger:Ljava/util/logging/Logger;

    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    .line 123
    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->batchHint:Lcom/jme3/scene/Spatial$BatchHint;

    .line 138
    sget-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 139
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 140
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    .line 141
    const/high16 v0, -0x80

    iput v0, p0, Lcom/jme3/scene/Spatial;->queueDistance:F

    .line 144
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/control/Control;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 166
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    .line 167
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    .line 169
    new-instance v0, Lcom/jme3/light/LightList;

    invoke-direct {v0, p0}, Lcom/jme3/light/LightList;-><init>(Lcom/jme3/scene/Spatial;)V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    .line 170
    new-instance v0, Lcom/jme3/light/LightList;

    invoke-direct {v0, p0}, Lcom/jme3/light/LightList;-><init>(Lcom/jme3/scene/Spatial;)V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    .line 172
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/jme3/scene/Spatial;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    .line 186
    return-void
.end method

.method private runControlUpdate(F)V
    .locals 5
    .parameter "tpf"

    .prologue
    .line 535
    iget-object v4, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    :cond_0
    return-void

    .line 539
    :cond_1
    iget-object v4, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/control/Control;

    .local v0, arr$:[Lcom/jme3/scene/control/Control;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 540
    .local v1, c:Lcom/jme3/scene/control/Control;
    invoke-interface {v1, p1}, Lcom/jme3/scene/control/Control;->update(F)V

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addControl(Lcom/jme3/scene/control/Control;)V
    .locals 1
    .parameter "control"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-interface {p1, p0}, Lcom/jme3/scene/control/Control;->setSpatial(Lcom/jme3/scene/Spatial;)V

    .line 573
    return-void
.end method

.method public addLight(Lcom/jme3/light/Light;)V
    .locals 1
    .parameter "light"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {v0, p1}, Lcom/jme3/light/LightList;->add(Lcom/jme3/light/Light;)V

    .line 914
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    .line 915
    return-void
.end method

.method public checkCulling(Lcom/jme3/renderer/Camera;)Z
    .locals 5
    .parameter "cam"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 240
    iget v1, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scene graph is not properly updated for rendering.\nState was changed after rootNode.updateGeometricState() call. \nMake sure you do not modify the scene from another thread!\nProblem spatial name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getCullHint()Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v0

    .line 248
    .local v0, cm:Lcom/jme3/scene/Spatial$CullHint;
    sget-boolean v1, Lcom/jme3/scene/Spatial;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 249
    :cond_1
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    if-ne v0, v1, :cond_2

    .line 250
    sget-object v1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->setLastFrustumIntersection(Lcom/jme3/renderer/Camera$FrustumIntersect;)V

    .line 269
    :goto_0
    return v3

    .line 252
    :cond_2
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    if-ne v0, v1, :cond_3

    .line 253
    sget-object v1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->setLastFrustumIntersection(Lcom/jme3/renderer/Camera$FrustumIntersect;)V

    move v3, v2

    .line 254
    goto :goto_0

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    iget-object v1, v1, Lcom/jme3/scene/Node;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    :goto_1
    iput-object v1, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 261
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    sget-object v4, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-ne v1, v4, :cond_6

    .line 262
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getQueueBucket()Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    move-result-object v1

    sget-object v4, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    if-ne v1, v4, :cond_5

    .line 263
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jme3/renderer/Camera;->containsGui(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v3

    goto :goto_0

    .line 258
    :cond_4
    sget-object v1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    goto :goto_1

    .line 265
    :cond_5
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jme3/renderer/Camera;->contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 269
    :cond_6
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    sget-object v4, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-eq v1, v4, :cond_7

    move v1, v2

    :goto_2
    move v3, v1

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_2
.end method

.method checkDoBoundUpdate()V
    .locals 5

    .prologue
    .line 514
    iget v4, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 532
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    .line 521
    instance-of v4, p0, Lcom/jme3/scene/Node;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 522
    check-cast v3, Lcom/jme3/scene/Node;

    .line 523
    .local v3, node:Lcom/jme3/scene/Node;
    invoke-virtual {v3}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v2

    .line 524
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 525
    invoke-virtual {v3, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    .line 526
    .local v0, child:Lcom/jme3/scene/Spatial;
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->checkDoBoundUpdate()V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 531
    .end local v0           #child:Lcom/jme3/scene/Spatial;
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #node:Lcom/jme3/scene/Node;
    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldBound()V

    goto :goto_0
.end method

.method checkDoTransformUpdate()V
    .locals 8

    .prologue
    .line 465
    iget v6, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v6, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v6, :cond_2

    .line 470
    iget-object v6, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v7, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v6, v7}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    .line 471
    iget v6, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    goto :goto_0

    .line 473
    :cond_2
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v5

    .line 475
    .local v5, vars:Lcom/jme3/util/TempVars;
    iget-object v4, v5, Lcom/jme3/util/TempVars;->spatialStack:[Lcom/jme3/scene/Spatial;

    .line 476
    .local v4, stack:[Lcom/jme3/scene/Spatial;
    move-object v3, p0

    .line 477
    .local v3, rootNode:Lcom/jme3/scene/Spatial;
    const/4 v1, 0x0

    .line 479
    .local v1, i:I
    :goto_1
    iget-object v0, v3, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    .line 480
    .local v0, hisParent:Lcom/jme3/scene/Spatial;
    if-nez v0, :cond_4

    .line 481
    iget-object v6, v3, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v7, v3, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v6, v7}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    .line 482
    iget v6, v3, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v3, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 483
    add-int/lit8 v1, v1, -0x1

    .line 497
    :cond_3
    invoke-virtual {v5}, Lcom/jme3/util/TempVars;->release()V

    .line 499
    move v2, v1

    .local v2, j:I
    :goto_2
    if-ltz v2, :cond_0

    .line 500
    aget-object v3, v4, v2

    .line 504
    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->updateWorldTransforms()V

    .line 499
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 487
    .end local v2           #j:I
    :cond_4
    aput-object v3, v4, v1

    .line 489
    iget v6, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 493
    move-object v3, v0

    .line 494
    add-int/lit8 v1, v1, 0x1

    .line 495
    goto :goto_1
.end method

.method public clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .prologue
    .line 1182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->clone(Z)Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method

.method public clone(Z)Lcom/jme3/scene/Spatial;
    .locals 6
    .parameter

    .prologue
    .line 1120
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    .line 1121
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    if-eqz v2, :cond_0

    .line 1122
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v2}, Lcom/jme3/bounding/BoundingVolume;->clone()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    .line 1124
    :cond_0
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    invoke-virtual {v2}, Lcom/jme3/light/LightList;->clone()Lcom/jme3/light/LightList;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    .line 1125
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {v2}, Lcom/jme3/light/LightList;->clone()Lcom/jme3/light/LightList;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    .line 1128
    iget-object v2, v1, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {v2, v1}, Lcom/jme3/light/LightList;->setOwner(Lcom/jme3/scene/Spatial;)V

    .line 1129
    iget-object v2, v1, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    invoke-virtual {v2, v1}, Lcom/jme3/light/LightList;->setOwner(Lcom/jme3/scene/Spatial;)V

    .line 1134
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    .line 1135
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    .line 1137
    instance-of v2, v1, Lcom/jme3/scene/Node;

    if-eqz v2, :cond_1

    .line 1138
    move-object v0, p0

    check-cast v0, Lcom/jme3/scene/Node;

    move-object v2, v0

    .line 1139
    move-object v0, v1

    check-cast v0, Lcom/jme3/scene/Node;

    move-object v3, v0

    .line 1140
    new-instance v4, Lcom/jme3/util/SafeArrayList;

    const-class v5, Lcom/jme3/scene/Spatial;

    invoke-direct {v4, v5}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v4, v3, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    .line 1141
    iget-object v2, v2, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    .line 1142
    invoke-virtual {v2, p1}, Lcom/jme3/scene/Spatial;->clone(Z)Lcom/jme3/scene/Spatial;

    move-result-object v2

    .line 1143
    iput-object v3, v2, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    .line 1144
    iget-object v5, v3, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v5, v2}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1163
    :catch_0
    move-exception v1

    .line 1164
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1148
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, v1, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    .line 1149
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    .line 1150
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 1151
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    .line 1153
    new-instance v2, Lcom/jme3/util/SafeArrayList;

    const-class v3, Lcom/jme3/scene/control/Control;

    invoke-direct {v2, v3}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v2, v1, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    .line 1154
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 1155
    iget-object v4, v1, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, v3}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/control/Control;

    invoke-interface {v2, v1}, Lcom/jme3/scene/control/Control;->cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1158
    :cond_2
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 1159
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v1, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1162
    :cond_3
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->clone()Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method

.method public getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/scene/control/Control;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, controlType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/control/Control;

    .local v0, arr$:[Lcom/jme3/scene/control/Control;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 618
    .local v1, c:Lcom/jme3/scene/control/Control;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    .end local v1           #c:Lcom/jme3/scene/control/Control;
    :goto_1
    return-object v1

    .line 617
    .restart local v1       #c:Lcom/jme3/scene/control/Control;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    .end local v1           #c:Lcom/jme3/scene/control/Control;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCullHint()Lcom/jme3/scene/Spatial$CullHint;
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    if-eq v0, v1, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    .line 1026
    :goto_0
    return-object v0

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->getCullHint()Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v0

    goto :goto_0

    .line 1026
    :cond_1
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0
.end method

.method public getLocalTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/jme3/scene/Node;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public getQueueBucket()Lcom/jme3/renderer/queue/RenderQueue$Bucket;
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    if-eq v0, v1, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 1052
    :goto_0
    return-object v0

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->getQueueBucket()Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    move-result-object v0

    goto :goto_0

    .line 1052
    :cond_1
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    goto :goto_0
.end method

.method public getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-eq v0, v1, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    .line 1069
    :goto_0
    return-object v0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v0

    goto :goto_0

    .line 1069
    :cond_1
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    goto :goto_0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1208
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 1209
    const/4 v0, 0x0

    .line 1216
    :cond_0
    :goto_0
    return-object v0

    .line 1212
    :cond_1
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/Savable;

    .line 1213
    .local v0, s:Lcom/jme3/export/Savable;
    instance-of v1, v0, Lcom/jme3/scene/UserData;

    if-eqz v1, :cond_0

    .line 1214
    check-cast v0, Lcom/jme3/scene/UserData;

    .end local v0           #s:Lcom/jme3/export/Savable;
    invoke-virtual {v0}, Lcom/jme3/scene/UserData;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWorldBound()Lcom/jme3/bounding/BoundingVolume;
    .locals 1

    .prologue
    .line 1307
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoBoundUpdate()V

    .line 1308
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    return-object v0
.end method

.method public getWorldLightList()Lcom/jme3/light/LightList;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    return-object v0
.end method

.method public getWorldRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    .line 322
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getWorldTransform()Lcom/jme3/math/Transform;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    .line 355
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public getWorldTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    .line 333
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
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
    const/4 v4, 0x0

    .line 1274
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 1276
    const-string v0, "name"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    .line 1277
    const-string v0, "world_bound"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingVolume;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    .line 1278
    const-string v0, "cull_mode"

    const-class v2, Lcom/jme3/scene/Spatial$CullHint;

    sget-object v3, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial$CullHint;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    .line 1279
    const-string v0, "batch_hint"

    const-class v2, Lcom/jme3/scene/Spatial$BatchHint;

    sget-object v3, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial$BatchHint;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->batchHint:Lcom/jme3/scene/Spatial$BatchHint;

    .line 1280
    const-string v0, "queue"

    const-class v2, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 1282
    const-string v0, "shadow_mode"

    const-class v2, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    .line 1285
    const-string v0, "transform"

    sget-object v2, Lcom/jme3/math/Transform;->IDENTITY:Lcom/jme3/math/Transform;

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Transform;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    .line 1287
    const-string v0, "lights"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/LightList;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    .line 1288
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {v0, p0}, Lcom/jme3/light/LightList;->setOwner(Lcom/jme3/scene/Spatial;)V

    .line 1295
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    const/4 v2, 0x0

    const-string v3, "controlsList"

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jme3/util/SafeArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1297
    const-string v0, "user_data"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    .line 1298
    return-void
.end method

.method public removeControl(Lcom/jme3/scene/control/Control;)Z
    .locals 2
    .parameter "control"

    .prologue
    .line 599
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 600
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 601
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/jme3/scene/control/Control;->setSpatial(Lcom/jme3/scene/Spatial;)V

    .line 604
    :cond_0
    return v0
.end method

.method public removeFromParent()Z
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    .line 753
    const/4 v0, 0x1

    .line 755
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runControlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 5
    .parameter "rm"
    .parameter "vp"

    .prologue
    .line 555
    iget-object v4, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    :cond_0
    return-void

    .line 559
    :cond_1
    iget-object v4, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/control/Control;

    .local v0, arr$:[Lcom/jme3/scene/control/Control;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 560
    .local v1, c:Lcom/jme3/scene/control/Control;
    invoke-interface {v1, p1, p2}, Lcom/jme3/scene/control/Control;->render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setBoundRefresh()V
    .locals 2

    .prologue
    .line 214
    iget v1, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 217
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    .line 218
    .local v0, p:Lcom/jme3/scene/Spatial;
    :goto_0
    if-eqz v0, :cond_0

    .line 219
    iget v1, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    return-void

    .line 223
    :cond_1
    iget v1, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 224
    iget-object v0, v0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    goto :goto_0
.end method

.method public setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    .line 1322
    return-void
.end method

.method public setKey(Lcom/jme3/asset/AssetKey;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/jme3/scene/Spatial;->key:Lcom/jme3/asset/AssetKey;

    .line 190
    return-void
.end method

.method public setLastFrustumIntersection(Lcom/jme3/renderer/Camera$FrustumIntersect;)V
    .locals 0
    .parameter "intersects"

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 1417
    return-void
.end method

.method protected setLightListRefresh()V
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 207
    return-void
.end method

.method public setLocalRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1
    .parameter "quaternion"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    .line 805
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 806
    return-void
.end method

.method public setLocalScale(F)V
    .locals 1
    .parameter "localScale"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    .line 825
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 826
    return-void
.end method

.method public setLocalScale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Transform;->setScale(FFF)Lcom/jme3/math/Transform;

    .line 833
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 834
    return-void
.end method

.method public setLocalScale(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "localScale"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 844
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 845
    return-void
.end method

.method public setLocalTranslation(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 874
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Transform;->setTranslation(FFF)Lcom/jme3/math/Transform;

    .line 875
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 876
    return-void
.end method

.method public setLocalTranslation(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "localTranslation"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 866
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 867
    return-void
.end method

.method public setMaterial(Lcom/jme3/material/Material;)V
    .locals 0
    .parameter "material"

    .prologue
    .line 904
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    .line 280
    return-void
.end method

.method protected setParent(Lcom/jme3/scene/Node;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    .line 743
    return-void
.end method

.method public setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V
    .locals 0
    .parameter "queueBucket"

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 1361
    return-void
.end method

.method protected setTransformRefresh()V
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 202
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    .line 203
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "data"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    .line 1199
    :cond_0
    instance-of v0, p2, Lcom/jme3/export/Savable;

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    check-cast p2, Lcom/jme3/export/Savable;

    .end local p2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    :goto_0
    return-void

    .line 1202
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    new-instance v1, Lcom/jme3/scene/UserData;

    invoke-static {p2}, Lcom/jme3/scene/UserData;->getObjectType(Ljava/lang/Object;)B

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/jme3/scene/UserData;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateGeometricState()V
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldLightList()V

    .line 682
    :cond_0
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldTransforms()V

    .line 685
    :cond_1
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldBound()V

    .line 689
    :cond_2
    sget-boolean v0, Lcom/jme3/scene/Spatial;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 690
    :cond_3
    return-void
.end method

.method public updateLogicalState(F)V
    .locals 0
    .parameter "tpf"

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lcom/jme3/scene/Spatial;->runControlUpdate(F)V

    .line 659
    return-void
.end method

.method protected updateWorldBound()V
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 427
    return-void
.end method

.method protected updateWorldLightList()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/light/LightList;->update(Lcom/jme3/light/LightList;Lcom/jme3/light/LightList;)V

    .line 432
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    iget v0, v0, Lcom/jme3/scene/Node;->refreshFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    iget-object v2, v2, Lcom/jme3/scene/Node;->worldLights:Lcom/jme3/light/LightList;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/light/LightList;->update(Lcom/jme3/light/LightList;Lcom/jme3/light/LightList;)V

    .line 436
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    goto :goto_0

    .line 438
    :cond_2
    sget-boolean v0, Lcom/jme3/scene/Spatial;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected updateWorldTransforms()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    .line 450
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    .line 458
    :goto_0
    return-void

    .line 453
    :cond_0
    sget-boolean v0, Lcom/jme3/scene/Spatial;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    iget v0, v0, Lcom/jme3/scene/Node;->refreshFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    .line 455
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    iget-object v1, v1, Lcom/jme3/scene/Node;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->combineWithParent(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    .line 456
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    goto :goto_0
.end method
