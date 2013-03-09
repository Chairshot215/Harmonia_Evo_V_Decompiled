.class public final Lcom/jme3/animation/Bone;
.super Ljava/lang/Object;
.source "Bone.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# instance fields
.field private attachNode:Lcom/jme3/scene/Node;

.field private final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/Bone;",
            ">;"
        }
    .end annotation
.end field

.field private initialPos:Lcom/jme3/math/Vector3f;

.field private initialRot:Lcom/jme3/math/Quaternion;

.field private initialScale:Lcom/jme3/math/Vector3f;

.field private localPos:Lcom/jme3/math/Vector3f;

.field private localRot:Lcom/jme3/math/Quaternion;

.field private localScale:Lcom/jme3/math/Vector3f;

.field private name:Ljava/lang/String;

.field private parent:Lcom/jme3/animation/Bone;

.field private tmpTransform:Lcom/jme3/math/Transform;

.field private userControl:Z

.field private worldBindInversePos:Lcom/jme3/math/Vector3f;

.field private worldBindInverseRot:Lcom/jme3/math/Quaternion;

.field private worldBindInverseScale:Lcom/jme3/math/Vector3f;

.field private worldPos:Lcom/jme3/math/Vector3f;

.field private worldRot:Lcom/jme3/math/Quaternion;

.field private worldScale:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    .line 79
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    .line 80
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    .line 81
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    .line 85
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    .line 86
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    .line 87
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    .line 89
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    .line 145
    return-void
.end method

.method constructor <init>(Lcom/jme3/animation/Bone;)V
    .locals 2
    .parameter "source"

    .prologue
    const/high16 v1, 0x3f80

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    .line 79
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    .line 80
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    .line 81
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    .line 85
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    .line 86
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    .line 87
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    .line 89
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    .line 126
    iget-object v0, p1, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    .line 128
    iget-boolean v0, p1, Lcom/jme3/animation/Bone;->userControl:Z

    iput-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    .line 130
    iget-object v0, p1, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    .line 131
    iget-object v0, p1, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    .line 132
    iget-object v0, p1, Lcom/jme3/animation/Bone;->initialScale:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->initialScale:Lcom/jme3/math/Vector3f;

    .line 134
    iget-object v0, p1, Lcom/jme3/animation/Bone;->worldBindInversePos:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldBindInversePos:Lcom/jme3/math/Vector3f;

    .line 135
    iget-object v0, p1, Lcom/jme3/animation/Bone;->worldBindInverseRot:Lcom/jme3/math/Quaternion;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldBindInverseRot:Lcom/jme3/math/Quaternion;

    .line 136
    iget-object v0, p1, Lcom/jme3/animation/Bone;->worldBindInverseScale:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldBindInverseScale:Lcom/jme3/math/Vector3f;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/high16 v1, 0x3f80

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    .line 79
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    .line 80
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    .line 81
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    .line 85
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    .line 86
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    .line 87
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    .line 89
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->tmpTransform:Lcom/jme3/math/Transform;

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    .line 103
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    .line 104
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->initialScale:Lcom/jme3/math/Vector3f;

    .line 106
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldBindInversePos:Lcom/jme3/math/Vector3f;

    .line 107
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldBindInverseRot:Lcom/jme3/math/Quaternion;

    .line 108
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Bone;->worldBindInverseScale:Lcom/jme3/math/Vector3f;

    .line 109
    return-void
.end method

.method private toString(I)Ljava/lang/String;
    .locals 6
    .parameter "depth"

    .prologue
    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 577
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_0
    iget-object v4, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bone\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v4, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    .line 582
    .local v0, child:Lcom/jme3/animation/Bone;
    add-int/lit8 v4, p1, 0x1

    invoke-direct {v0, v4}, Lcom/jme3/animation/Bone;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 584
    .end local v0           #child:Lcom/jme3/animation/Bone;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public addChild(Lcom/jme3/animation/Bone;)V
    .locals 1
    .parameter "bone"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iput-object p0, p1, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    .line 316
    return-void
.end method

.method blendAnimTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;F)V
    .locals 5
    .parameter "translation"
    .parameter "rotation"
    .parameter "scale"
    .parameter "weight"

    .prologue
    .line 526
    iget-boolean v4, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-eqz v4, :cond_0

    .line 553
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v3

    .line 533
    .local v3, vars:Lcom/jme3/util/TempVars;
    iget-object v1, v3, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 534
    .local v1, tmpV:Lcom/jme3/math/Vector3f;
    iget-object v2, v3, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 535
    .local v2, tmpV2:Lcom/jme3/math/Vector3f;
    iget-object v0, v3, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    .line 538
    .local v0, tmpQ:Lcom/jme3/math/Quaternion;
    iget-object v4, p0, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 539
    iget-object v4, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v1, p4}, Lcom/jme3/math/Vector3f;->interpolate(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    .line 542
    iget-object v4, p0, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v4}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 543
    iget-object v4, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v4, v0, p4}, Lcom/jme3/math/Quaternion;->nlerp(Lcom/jme3/math/Quaternion;F)V

    .line 546
    if-eqz p3, :cond_1

    .line 547
    iget-object v4, p0, Lcom/jme3/animation/Bone;->initialScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 548
    iget-object v4, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2, p4}, Lcom/jme3/math/Vector3f;->interpolate(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    .line 552
    :cond_1
    invoke-virtual {v3}, Lcom/jme3/util/TempVars;->release()V

    goto :goto_0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/Bone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOffsetTransform(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
    .locals 5
    .parameter "outTransform"
    .parameter "tmp1"
    .parameter "tmp2"
    .parameter "tmp3"
    .parameter "tmp4"

    .prologue
    .line 420
    iget-object v3, p0, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/animation/Bone;->worldBindInverseScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4, p4}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 423
    .local v1, scale:Lcom/jme3/math/Vector3f;
    iget-object v3, p0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    iget-object v4, p0, Lcom/jme3/animation/Bone;->worldBindInverseRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v3, v4, p2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    .line 427
    .local v0, rotate:Lcom/jme3/math/Quaternion;
    iget-object v3, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/animation/Bone;->worldBindInversePos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v4, p3}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v0, v4, p3}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 430
    .local v2, translate:Lcom/jme3/math/Vector3f;
    invoke-virtual {p1}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 431
    invoke-virtual {v0, p5}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/jme3/math/Matrix4f;->setTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    .line 432
    return-void
.end method

.method public getParent()Lcom/jme3/animation/Bone;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 7
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 595
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v2

    .line 597
    .local v2, input:Lcom/jme3/export/InputCapsule;
    const-string v3, "name"

    invoke-interface {v2, v3, v5}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/animation/Bone;->name:Ljava/lang/String;

    .line 598
    const-string v3, "initialPos"

    invoke-interface {v2, v3, v5}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    iput-object v3, p0, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    .line 599
    const-string v3, "initialRot"

    invoke-interface {v2, v3, v5}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Quaternion;

    iput-object v3, p0, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    .line 600
    const-string v3, "initialScale"

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v6, v6, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v2, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    iput-object v3, p0, Lcom/jme3/animation/Bone;->initialScale:Lcom/jme3/math/Vector3f;

    .line 601
    const-string v3, "attachNode"

    invoke-interface {v2, v3, v5}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Node;

    iput-object v3, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    .line 603
    iget-object v3, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 604
    iget-object v3, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v4, p0, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 606
    const-string v3, "children"

    invoke-interface {v2, v3, v5}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 607
    .local v0, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/animation/Bone;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 608
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/animation/Bone;

    invoke-virtual {p0, v3}, Lcom/jme3/animation/Bone;->addChild(Lcom/jme3/animation/Bone;)V

    .line 607
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 615
    :cond_0
    return-void
.end method

.method final reset()V
    .locals 3

    .prologue
    .line 397
    iget-boolean v1, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 399
    iget-object v1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 400
    iget-object v1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->initialScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 404
    iget-object v1, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->reset()V

    .line 403
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 406
    :cond_1
    return-void
.end method

.method setAnimTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V
    .locals 2
    .parameter "translation"
    .parameter "rotation"
    .parameter "scale"

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/jme3/animation/Bone;->userControl:Z

    if-eqz v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 518
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 520
    if-eqz p3, :cond_0

    .line 521
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->initialScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0
.end method

.method setAttachmentsNode(Lcom/jme3/scene/Node;)V
    .locals 0
    .parameter "attachNode"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    .line 502
    return-void
.end method

.method public setBindTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "translation"
    .parameter "rotation"
    .parameter "scale"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 561
    iget-object v0, p0, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 563
    if-eqz p3, :cond_0

    .line 564
    iget-object v0, p0, Lcom/jme3/animation/Bone;->initialScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 568
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 569
    if-eqz p3, :cond_1

    .line 570
    iget-object v0, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 572
    :cond_1
    return-void
.end method

.method setBindingPose()V
    .locals 4

    .prologue
    .line 368
    iget-object v2, p0, Lcom/jme3/animation/Bone;->initialPos:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 369
    iget-object v2, p0, Lcom/jme3/animation/Bone;->initialRot:Lcom/jme3/math/Quaternion;

    iget-object v3, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 370
    iget-object v2, p0, Lcom/jme3/animation/Bone;->initialScale:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 372
    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInversePos:Lcom/jme3/math/Vector3f;

    if-nez v2, :cond_0

    .line 373
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInversePos:Lcom/jme3/math/Vector3f;

    .line 374
    new-instance v2, Lcom/jme3/math/Quaternion;

    invoke-direct {v2}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInverseRot:Lcom/jme3/math/Quaternion;

    .line 375
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInverseScale:Lcom/jme3/math/Vector3f;

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInversePos:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 380
    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInversePos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    .line 382
    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInverseRot:Lcom/jme3/math/Quaternion;

    iget-object v3, p0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 383
    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInverseRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2}, Lcom/jme3/math/Quaternion;->inverseLocal()Lcom/jme3/math/Quaternion;

    .line 385
    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInverseScale:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 386
    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldBindInverseScale:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 388
    iget-object v2, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    .line 389
    .local v0, b:Lcom/jme3/animation/Bone;
    invoke-virtual {v0}, Lcom/jme3/animation/Bone;->setBindingPose()V

    goto :goto_0

    .line 391
    .end local v0           #b:Lcom/jme3/animation/Bone;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/animation/Bone;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final update()V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->updateWorldVectors()V

    .line 359
    iget-object v1, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/jme3/animation/Bone;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->update()V

    .line 359
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method public final updateWorldVectors()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object v0, v0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 333
    iget-object v0, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object v0, v0, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 337
    iget-object v0, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object v0, v0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 338
    iget-object v0, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object v1, v1, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 339
    iget-object v0, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->parent:Lcom/jme3/animation/Bone;

    iget-object v1, v1, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    .line 348
    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    .line 349
    iget-object v0, p0, Lcom/jme3/animation/Bone;->attachNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->setLocalScale(Lcom/jme3/math/Vector3f;)V

    .line 351
    :cond_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/jme3/animation/Bone;->worldRot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localRot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 342
    iget-object v0, p0, Lcom/jme3/animation/Bone;->worldPos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 343
    iget-object v0, p0, Lcom/jme3/animation/Bone;->worldScale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/animation/Bone;->localScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0
.end method
