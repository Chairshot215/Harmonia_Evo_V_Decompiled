.class public final Lcom/jme3/animation/BoneTrack;
.super Ljava/lang/Object;
.source "BoneTrack.java"

# interfaces
.implements Lcom/jme3/animation/Track;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private rotations:Lcom/jme3/animation/CompactQuaternionArray;

.field private scales:Lcom/jme3/animation/CompactVector3Array;

.field private targetBoneIndex:I

.field private times:[F

.field private translations:Lcom/jme3/animation/CompactVector3Array;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/jme3/animation/BoneTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/animation/BoneTrack;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "targetBoneIndex"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    .line 98
    return-void
.end method

.method public constructor <init>(I[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V
    .locals 0
    .parameter "targetBoneIndex"
    .parameter "times"
    .parameter "translations"
    .parameter "rotations"
    .parameter "scales"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    .line 89
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/jme3/animation/BoneTrack;->setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    .line 90
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/animation/BoneTrack;
    .locals 11

    .prologue
    const/high16 v1, 0x3f80

    .line 266
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    array-length v10, v0

    .line 268
    .local v10, tablesLength:I
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 269
    .local v2, times:[F
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getTranslations()[Lcom/jme3/math/Vector3f;

    move-result-object v9

    .line 270
    .local v9, sourceTranslations:[Lcom/jme3/math/Vector3f;
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getRotations()[Lcom/jme3/math/Quaternion;

    move-result-object v7

    .line 271
    .local v7, sourceRotations:[Lcom/jme3/math/Quaternion;
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getScales()[Lcom/jme3/math/Vector3f;

    move-result-object v8

    .line 273
    .local v8, sourceScales:[Lcom/jme3/math/Vector3f;
    new-array v3, v10, [Lcom/jme3/math/Vector3f;

    .line 274
    .local v3, translations:[Lcom/jme3/math/Vector3f;
    new-array v4, v10, [Lcom/jme3/math/Quaternion;

    .line 275
    .local v4, rotations:[Lcom/jme3/math/Quaternion;
    new-array v5, v10, [Lcom/jme3/math/Vector3f;

    .line 276
    .local v5, scales:[Lcom/jme3/math/Vector3f;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v10, :cond_1

    .line 277
    aget-object v0, v9, v6

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    aput-object v0, v3, v6

    .line 278
    aget-object v0, v7, v6

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v0

    aput-object v0, v4, v6

    .line 279
    if-eqz v8, :cond_0

    aget-object v0, v8, v6

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v6

    .line 276
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    goto :goto_1

    .line 283
    :cond_1
    new-instance v0, Lcom/jme3/animation/BoneTrack;

    iget v1, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    invoke-direct/range {v0 .. v5}, Lcom/jme3/animation/BoneTrack;-><init>(I[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/animation/Track;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->clone()Lcom/jme3/animation/BoneTrack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->clone()Lcom/jme3/animation/BoneTrack;

    move-result-object v0

    return-object v0
.end method

.method public getRotations()[Lcom/jme3/math/Quaternion;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactQuaternionArray;->toObjectArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getScales()[Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactVector3Array;->toObjectArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Vector3f;

    goto :goto_0
.end method

.method public getTranslations()[Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactVector3Array;->toObjectArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Vector3f;

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
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 298
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 299
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v4, "boneIndex"

    invoke-interface {v0, v4, v6}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    .line 301
    const-string v4, "translations"

    invoke-interface {v0, v4, v5}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/animation/CompactVector3Array;

    iput-object v4, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    .line 302
    const-string v4, "rotations"

    invoke-interface {v0, v4, v5}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/animation/CompactQuaternionArray;

    iput-object v4, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    .line 303
    const-string v4, "times"

    invoke-interface {v0, v4, v5}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    .line 304
    const-string v4, "scales"

    invoke-interface {v0, v4, v5}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/animation/CompactVector3Array;

    iput-object v4, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    .line 307
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getFormatVersion()I

    move-result v4

    if-nez v4, :cond_1

    .line 308
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    if-nez v4, :cond_0

    .line 309
    const-string v4, "translations"

    invoke-interface {v0, v4, v5}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v2

    .line 310
    .local v2, sav:[Lcom/jme3/export/Savable;
    if-eqz v2, :cond_0

    .line 311
    new-instance v4, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {v4}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object v4, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    .line 312
    array-length v4, v2

    new-array v3, v4, [Lcom/jme3/math/Vector3f;

    .line 313
    .local v3, transCopy:[Lcom/jme3/math/Vector3f;
    array-length v4, v2

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v4, v3}, Lcom/jme3/animation/CompactVector3Array;->add([Ljava/lang/Object;)V

    .line 315
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v4}, Lcom/jme3/animation/CompactVector3Array;->freeze()V

    .line 318
    .end local v2           #sav:[Lcom/jme3/export/Savable;
    .end local v3           #transCopy:[Lcom/jme3/math/Vector3f;
    :cond_0
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    if-nez v4, :cond_1

    .line 319
    const-string v4, "rotations"

    invoke-interface {v0, v4, v5}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v2

    .line 320
    .restart local v2       #sav:[Lcom/jme3/export/Savable;
    if-eqz v2, :cond_1

    .line 321
    new-instance v4, Lcom/jme3/animation/CompactQuaternionArray;

    invoke-direct {v4}, Lcom/jme3/animation/CompactQuaternionArray;-><init>()V

    iput-object v4, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    .line 322
    array-length v4, v2

    new-array v1, v4, [Lcom/jme3/math/Quaternion;

    .line 323
    .local v1, rotCopy:[Lcom/jme3/math/Quaternion;
    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v4, v1}, Lcom/jme3/animation/CompactQuaternionArray;->add([Ljava/lang/Object;)V

    .line 325
    iget-object v4, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v4}, Lcom/jme3/animation/CompactQuaternionArray;->freeze()V

    .line 329
    .end local v1           #rotCopy:[Lcom/jme3/math/Quaternion;
    .end local v2           #sav:[Lcom/jme3/export/Savable;
    :cond_1
    return-void
.end method

.method public setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;)V
    .locals 2
    .parameter "times"
    .parameter "translations"
    .parameter "rotations"

    .prologue
    .line 146
    array-length v0, p1

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BoneTrack with no keyframes!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    sget-boolean v0, Lcom/jme3/animation/BoneTrack;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    array-length v0, p1

    array-length v1, p3

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_2
    iput-object p1, p0, Lcom/jme3/animation/BoneTrack;->times:[F

    .line 153
    new-instance v0, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {v0}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    .line 154
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v0, p2}, Lcom/jme3/animation/CompactVector3Array;->add([Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactVector3Array;->freeze()V

    .line 156
    new-instance v0, Lcom/jme3/animation/CompactQuaternionArray;

    invoke-direct {v0}, Lcom/jme3/animation/CompactQuaternionArray;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    .line 157
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v0, p3}, Lcom/jme3/animation/CompactQuaternionArray;->add([Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactQuaternionArray;->freeze()V

    .line 159
    return-void
.end method

.method public setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V
    .locals 2
    .parameter "times"
    .parameter "translations"
    .parameter "rotations"
    .parameter "scales"

    .prologue
    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/animation/BoneTrack;->setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;)V

    .line 170
    sget-boolean v0, Lcom/jme3/animation/BoneTrack;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p1

    array-length v1, p4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 171
    :cond_0
    if-eqz p4, :cond_1

    .line 172
    new-instance v0, Lcom/jme3/animation/CompactVector3Array;

    invoke-direct {v0}, Lcom/jme3/animation/CompactVector3Array;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    .line 173
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v0, p4}, Lcom/jme3/animation/CompactVector3Array;->add([Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactVector3Array;->freeze()V

    .line 176
    :cond_1
    return-void
.end method

.method public setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V
    .locals 17
    .parameter "time"
    .parameter "weight"
    .parameter "control"
    .parameter "channel"
    .parameter "vars"

    .prologue
    .line 191
    invoke-virtual/range {p4 .. p4}, Lcom/jme3/animation/AnimChannel;->getAffectedBones()Ljava/util/BitSet;

    move-result-object v1

    .line 192
    .local v1, affectedBones:Ljava/util/BitSet;
    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    invoke-virtual {v1, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 251
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/animation/BoneTrack;->targetBoneIndex:I

    invoke-virtual {v14, v15}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v7

    .line 198
    .local v7, target:Lcom/jme3/animation/Bone;
    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 199
    .local v12, tempV:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 200
    .local v10, tempS:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    .line 201
    .local v8, tempQ:Lcom/jme3/math/Quaternion;
    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 202
    .local v13, tempV2:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, p5

    iget-object v11, v0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    .line 203
    .local v11, tempS2:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/jme3/util/TempVars;->quat2:Lcom/jme3/math/Quaternion;

    .line 205
    .local v9, tempQ2:Lcom/jme3/math/Quaternion;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->times:[F

    array-length v14, v14

    add-int/lit8 v5, v14, -0x1

    .line 206
    .local v5, lastFrame:I
    const/4 v14, 0x0

    cmpg-float v14, p1, v14

    if-ltz v14, :cond_1

    if-nez v5, :cond_3

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v8}, Lcom/jme3/animation/CompactQuaternionArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v12}, Lcom/jme3/animation/CompactVector3Array;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v14, :cond_2

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v10}, Lcom/jme3/animation/CompactVector3Array;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_2
    :goto_1
    const/high16 v14, 0x3f80

    cmpl-float v14, p2, v14

    if-eqz v14, :cond_9

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v14, :cond_8

    .end local v10           #tempS:Lcom/jme3/math/Vector3f;
    :goto_2
    move/from16 v0, p2

    invoke-virtual {v7, v12, v8, v10, v0}, Lcom/jme3/animation/Bone;->blendAnimTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;F)V

    goto :goto_0

    .line 212
    .restart local v10       #tempS:Lcom/jme3/math/Vector3f;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->times:[F

    aget v14, v14, v5

    cmpl-float v14, p1, v14

    if-ltz v14, :cond_4

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v14, v5, v8}, Lcom/jme3/animation/CompactQuaternionArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v14, v5, v12}, Lcom/jme3/animation/CompactVector3Array;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v14, :cond_2

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v14, v5, v10}, Lcom/jme3/animation/CompactVector3Array;->get(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 219
    :cond_4
    const/4 v6, 0x0

    .line 220
    .local v6, startFrame:I
    const/4 v3, 0x1

    .line 223
    .local v3, endFrame:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->times:[F

    aget v14, v14, v4

    cmpg-float v14, v14, p1

    if-gez v14, :cond_5

    .line 224
    move v6, v4

    .line 225
    add-int/lit8 v3, v4, 0x1

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 228
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->times:[F

    aget v14, v14, v6

    sub-float v14, p1, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jme3/animation/BoneTrack;->times:[F

    aget v15, v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/animation/BoneTrack;->times:[F

    move-object/from16 v16, v0

    aget v16, v16, v6

    sub-float v15, v15, v16

    div-float v2, v14, v15

    .line 231
    .local v2, blend:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v14, v6, v8}, Lcom/jme3/animation/CompactQuaternionArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v14, v6, v12}, Lcom/jme3/animation/CompactVector3Array;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v14, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v14, v6, v10}, Lcom/jme3/animation/CompactVector3Array;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->rotations:Lcom/jme3/animation/CompactQuaternionArray;

    invoke-virtual {v14, v3, v9}, Lcom/jme3/animation/CompactQuaternionArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->translations:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v14, v3, v13}, Lcom/jme3/animation/CompactVector3Array;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v14, :cond_7

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    invoke-virtual {v14, v3, v11}, Lcom/jme3/animation/CompactVector3Array;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_7
    invoke-virtual {v8, v9, v2}, Lcom/jme3/math/Quaternion;->nlerp(Lcom/jme3/math/Quaternion;F)V

    .line 242
    invoke-virtual {v12, v13, v2}, Lcom/jme3/math/Vector3f;->interpolate(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    .line 243
    invoke-virtual {v10, v11, v2}, Lcom/jme3/math/Vector3f;->interpolate(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    goto/16 :goto_1

    .line 247
    .end local v2           #blend:F
    .end local v3           #endFrame:I
    .end local v4           #i:I
    .end local v6           #startFrame:I
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 249
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/animation/BoneTrack;->scales:Lcom/jme3/animation/CompactVector3Array;

    if-eqz v14, :cond_a

    .end local v10           #tempS:Lcom/jme3/math/Vector3f;
    :goto_4
    invoke-virtual {v7, v12, v8, v10}, Lcom/jme3/animation/Bone;->setAnimTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_0

    .restart local v10       #tempS:Lcom/jme3/math/Vector3f;
    :cond_a
    const/4 v10, 0x0

    goto :goto_4
.end method
