.class public final Lcom/jme3/animation/Skeleton;
.super Ljava/lang/Object;
.source "Skeleton.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# instance fields
.field private boneList:[Lcom/jme3/animation/Bone;

.field private rootBones:[Lcom/jme3/animation/Bone;

.field private transient skinningMatrixes:[Lcom/jme3/math/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/Skeleton;)V
    .locals 5
    .parameter "source"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-object v1, p1, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    .line 99
    .local v1, sourceList:[Lcom/jme3/animation/Bone;
    array-length v2, v1

    new-array v2, v2, [Lcom/jme3/animation/Bone;

    iput-object v2, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    new-instance v3, Lcom/jme3/animation/Bone;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lcom/jme3/animation/Bone;-><init>(Lcom/jme3/animation/Bone;)V

    aput-object v3, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v2, p1, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v2, v2

    new-array v2, v2, [Lcom/jme3/animation/Bone;

    iput-object v2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    .line 105
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    iget-object v3, p1, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/jme3/animation/Skeleton;->recreateBoneStructure(Lcom/jme3/animation/Bone;)Lcom/jme3/animation/Bone;

    move-result-object v3

    aput-object v3, v2, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/jme3/animation/Skeleton;->createSkinningMatrices()V

    .line 110
    iget-object v2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 111
    iget-object v2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->update()V

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 113
    :cond_2
    return-void
.end method

.method public constructor <init>([Lcom/jme3/animation/Bone;)V
    .locals 5
    .parameter "boneList"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, rootBoneList:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/animation/Bone;>;"
    array-length v4, p1

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 73
    aget-object v0, p1, v1

    .line 74
    .local v0, b:Lcom/jme3/animation/Bone;
    invoke-virtual {v0}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v4

    if-nez v4, :cond_0

    .line 75
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 78
    .end local v0           #b:Lcom/jme3/animation/Bone;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/jme3/animation/Bone;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/jme3/animation/Bone;

    iput-object v4, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    .line 80
    invoke-direct {p0}, Lcom/jme3/animation/Skeleton;->createSkinningMatrices()V

    .line 82
    iget-object v4, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 83
    iget-object v4, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v2, v4, v1

    .line 84
    .local v2, rootBone:Lcom/jme3/animation/Bone;
    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->update()V

    .line 85
    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->setBindingPose()V

    .line 82
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 87
    .end local v2           #rootBone:Lcom/jme3/animation/Bone;
    :cond_2
    return-void
.end method

.method private createSkinningMatrices()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v1, v1

    new-array v1, v1, [Lcom/jme3/math/Matrix4f;

    iput-object v1, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    new-instance v2, Lcom/jme3/math/Matrix4f;

    invoke-direct {v2}, Lcom/jme3/math/Matrix4f;-><init>()V

    aput-object v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method private recreateBoneStructure(Lcom/jme3/animation/Bone;)Lcom/jme3/animation/Bone;
    .locals 6
    .parameter "sourceRoot"

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v4

    .line 130
    .local v4, targetRoot:Lcom/jme3/animation/Bone;
    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 131
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/animation/Bone;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/animation/Bone;

    .line 134
    .local v2, sourceChild:Lcom/jme3/animation/Bone;
    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v3

    .line 135
    .local v3, targetChild:Lcom/jme3/animation/Bone;
    invoke-virtual {v4, v3}, Lcom/jme3/animation/Bone;->addChild(Lcom/jme3/animation/Bone;)V

    .line 136
    invoke-direct {p0, v2}, Lcom/jme3/animation/Skeleton;->recreateBoneStructure(Lcom/jme3/animation/Bone;)Lcom/jme3/animation/Bone;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v2           #sourceChild:Lcom/jme3/animation/Bone;
    .end local v3           #targetChild:Lcom/jme3/animation/Bone;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public computeSkinningMatrices()[Lcom/jme3/math/Matrix4f;
    .locals 8

    .prologue
    .line 247
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v7

    .line 248
    .local v7, vars:Lcom/jme3/util/TempVars;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    aget-object v1, v1, v6

    iget-object v2, v7, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    iget-object v3, v7, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v4, v7, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v5, v7, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/animation/Bone;->getOffsetTransform(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    .line 248
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v7}, Lcom/jme3/util/TempVars;->release()V

    .line 252
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->skinningMatrixes:[Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getBone(I)Lcom/jme3/animation/Bone;
    .locals 1
    .parameter "index"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;
    .locals 2
    .parameter "name"

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    aget-object v1, v1, v0

    .line 209
    :goto_1
    return-object v1

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getBoneIndex(Lcom/jme3/animation/Bone;)I
    .locals 2
    .parameter "bone"

    .prologue
    .line 218
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 224
    .end local v0           #i:I
    :goto_1
    return v0

    .line 218
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 11
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 274
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v4

    .line 276
    .local v4, input:Lcom/jme3/export/InputCapsule;
    const-string v7, "rootBones"

    invoke-interface {v4, v7, v10}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v2

    .line 277
    .local v2, boneRootsAsSav:[Lcom/jme3/export/Savable;
    array-length v7, v2

    new-array v7, v7, [Lcom/jme3/animation/Bone;

    iput-object v7, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    .line 278
    iget-object v7, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v8, v2

    invoke-static {v2, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    const-string v7, "boneList"

    invoke-interface {v4, v7, v10}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v1

    .line 281
    .local v1, boneListAsSavable:[Lcom/jme3/export/Savable;
    array-length v7, v1

    new-array v7, v7, [Lcom/jme3/animation/Bone;

    iput-object v7, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    .line 282
    iget-object v7, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v8, v1

    invoke-static {v1, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    invoke-direct {p0}, Lcom/jme3/animation/Skeleton;->createSkinningMatrices()V

    .line 286
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    .local v0, arr$:[Lcom/jme3/animation/Bone;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 287
    .local v6, rootBone:Lcom/jme3/animation/Bone;
    invoke-virtual {v6}, Lcom/jme3/animation/Bone;->update()V

    .line 288
    invoke-virtual {v6}, Lcom/jme3/animation/Bone;->setBindingPose()V

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    .end local v6           #rootBone:Lcom/jme3/animation/Bone;
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->reset()V

    .line 165
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public final resetAndUpdate()V
    .locals 3

    .prologue
    .line 174
    iget-object v2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 175
    iget-object v2, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v1, v2, v0

    .line 176
    .local v1, rootBone:Lcom/jme3/animation/Bone;
    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->reset()V

    .line 177
    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->update()V

    .line 174
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 179
    .end local v1           #rootBone:Lcom/jme3/animation/Bone;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "Skeleton - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/animation/Skeleton;->boneList:[Lcom/jme3/animation/Bone;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bones, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " roots\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v0, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    .local v0, arr$:[Lcom/jme3/animation/Bone;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 268
    .local v3, rootBone:Lcom/jme3/animation/Bone;
    invoke-virtual {v3}, Lcom/jme3/animation/Bone;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v3           #rootBone:Lcom/jme3/animation/Bone;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public updateWorldVectors()V
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/jme3/animation/Skeleton;->rootBones:[Lcom/jme3/animation/Bone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->update()V

    .line 147
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method
