.class public Lcom/jme3/scene/plugins/ogre/SkeletonLoader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SkeletonLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private angle:F

.field private animation:Lcom/jme3/animation/Animation;

.field private animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private axis:Lcom/jme3/math/Vector3f;

.field private bone:Lcom/jme3/animation/Bone;

.field private elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private indexToBone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jme3/animation/Bone;",
            ">;"
        }
    .end annotation
.end field

.field private nameToBone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/animation/Bone;",
            ">;"
        }
    .end annotation
.end field

.field private position:Lcom/jme3/math/Vector3f;

.field private rotation:Lcom/jme3/math/Quaternion;

.field private rotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field private scale:Lcom/jme3/math/Vector3f;

.field private scales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private skeleton:Lcom/jme3/animation/Skeleton;

.field private time:F

.field private times:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private track:Lcom/jme3/animation/BoneTrack;

.field private tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/BoneTrack;",
            ">;"
        }
    .end annotation
.end field

.field private translations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    .line 62
    const-class v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->logger:Ljava/util/logging/Logger;

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 64
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    .line 77
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    return-void
.end method

.method private fullReset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 231
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 232
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 233
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    .line 234
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    .line 236
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    :cond_0
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    .line 241
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 242
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    .line 246
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    .line 247
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    .line 248
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->angle:F

    .line 250
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    .line 251
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "uri"
    .parameter "name"
    .parameter "qName"

    .prologue
    .line 143
    const-string v11, "translate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "position"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "scale"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 221
    :cond_0
    :goto_0
    sget-boolean v11, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v11, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 144
    :cond_1
    const-string v11, "axis"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 145
    const-string v11, "rotate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "rotation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 146
    :cond_2
    new-instance v11, Lcom/jme3/math/Quaternion;

    invoke-direct {v11}, Lcom/jme3/math/Quaternion;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->angle:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12, v13}, Lcom/jme3/math/Quaternion;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 149
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->angle:F

    .line 150
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 151
    :cond_3
    const-string v11, "bone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12, v13, v14}, Lcom/jme3/animation/Bone;->setBindTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V

    .line 153
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    .line 154
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    .line 155
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    .line 156
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    goto/16 :goto_0

    .line 157
    :cond_4
    const-string v11, "bonehierarchy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    new-array v2, v11, [Lcom/jme3/animation/Bone;

    .line 161
    .local v2, bones:[Lcom/jme3/animation/Bone;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 162
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/jme3/animation/Bone;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    .line 163
    .local v1, bone:Lcom/jme3/animation/Bone;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput-object v1, v2, v11

    goto :goto_1

    .line 165
    .end local v1           #bone:Lcom/jme3/animation/Bone;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/jme3/animation/Bone;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 166
    new-instance v11, Lcom/jme3/animation/Skeleton;

    invoke-direct {v11, v2}, Lcom/jme3/animation/Skeleton;-><init>([Lcom/jme3/animation/Bone;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    goto/16 :goto_0

    .line 167
    .end local v2           #bones:[Lcom/jme3/animation/Bone;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v11, "animation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    goto/16 :goto_0

    .line 170
    :cond_7
    const-string v11, "track"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 171
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    if-eqz v11, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    goto/16 :goto_0

    .line 175
    :cond_8
    const-string v11, "tracks"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 176
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/jme3/animation/BoneTrack;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/jme3/animation/BoneTrack;

    .line 177
    .local v9, trackList:[Lcom/jme3/animation/BoneTrack;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v11, v9}, Lcom/jme3/animation/Animation;->setTracks([Lcom/jme3/animation/Track;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 179
    .end local v9           #trackList:[Lcom/jme3/animation/BoneTrack;
    :cond_9
    const-string v11, "keyframe"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 180
    sget-boolean v11, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-gez v11, :cond_a

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 181
    :cond_a
    sget-boolean v11, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    if-nez v11, :cond_b

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 182
    :cond_b
    sget-boolean v11, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    if-nez v11, :cond_c

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 184
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    if-eqz v11, :cond_d

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :goto_2
    const/high16 v11, -0x4080

    move-object/from16 v0, p0

    iput v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    .line 194
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    .line 195
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotation:Lcom/jme3/math/Quaternion;

    .line 196
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    goto/16 :goto_0

    .line 190
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    new-instance v12, Lcom/jme3/math/Vector3f;

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    invoke-direct {v12, v13, v14, v15}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 197
    :cond_e
    const-string v11, "keyframes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 198
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_10

    .line 199
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v8, v11, [F

    .line 200
    .local v8, timesArray:[F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    array-length v11, v8

    if-ge v4, v11, :cond_f

    .line 201
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v8, v4

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 204
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/jme3/math/Vector3f;

    .line 205
    .local v10, transArray:[Lcom/jme3/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/jme3/math/Quaternion;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/jme3/math/Quaternion;

    .line 206
    .local v6, rotArray:[Lcom/jme3/math/Quaternion;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/jme3/math/Vector3f;

    .line 208
    .local v7, scalesArray:[Lcom/jme3/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    invoke-virtual {v11, v8, v10, v6, v7}, Lcom/jme3/animation/BoneTrack;->setKeyframes([F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    .line 214
    .end local v4           #i:I
    .end local v6           #rotArray:[Lcom/jme3/math/Quaternion;
    .end local v7           #scalesArray:[Lcom/jme3/math/Vector3f;
    .end local v8           #timesArray:[F
    .end local v10           #transArray:[Lcom/jme3/math/Vector3f;
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->times:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->translations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->rotations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scales:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 211
    :cond_10
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    goto :goto_4

    .line 218
    :cond_11
    const-string v11, "skeleton"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 222
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 2
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 292
    const/4 v0, 0x0

    .line 294
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 295
    invoke-virtual {p0, v0}, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->load(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 297
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    .line 297
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v1
.end method

.method public load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 262
    .local v2, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 263
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 265
    .local v5, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 266
    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 267
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 268
    .local v4, r:Ljava/io/InputStreamReader;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 269
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 270
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    .line 272
    :cond_0
    new-instance v0, Lcom/jme3/scene/plugins/ogre/AnimData;

    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    invoke-direct {v0, v6, v7}, Lcom/jme3/scene/plugins/ogre/AnimData;-><init>(Lcom/jme3/animation/Skeleton;Ljava/util/ArrayList;)V

    .line 273
    .local v0, data:Lcom/jme3/scene/plugins/ogre/AnimData;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 274
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    return-object v0

    .line 276
    .end local v0           #data:Lcom/jme3/scene/plugins/ogre/AnimData;
    .end local v2           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #r:Ljava/io/InputStreamReader;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v1

    .line 277
    .local v1, ex:Lorg/xml/sax/SAXException;
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Error while parsing Ogre3D dotScene"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    .local v3, ioEx:Ljava/io/IOException;
    invoke-virtual {v3, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 279
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->fullReset()V

    .line 280
    throw v3

    .line 281
    .end local v1           #ex:Lorg/xml/sax/SAXException;
    .end local v3           #ioEx:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Error while parsing Ogre3D dotScene"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v3       #ioEx:Ljava/io/IOException;
    invoke-virtual {v3, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 284
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->fullReset()V

    .line 285
    throw v3
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v8, "position"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "translate"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 86
    :cond_0
    invoke-static {p4}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->position:Lcom/jme3/math/Vector3f;

    .line 139
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8, p3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 140
    return-void

    .line 87
    :cond_2
    const-string v8, "rotation"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "rotate"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 88
    :cond_3
    const-string v8, "angle"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->angle:F

    goto :goto_0

    .line 89
    :cond_4
    const-string v8, "axis"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 90
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "rotation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "rotate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 92
    :cond_5
    invoke-static {p4}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->axis:Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 93
    :cond_6
    const-string v8, "scale"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 94
    invoke-static {p4}, Lcom/jme3/util/xml/SAXUtil;->parseVector3(Lorg/xml/sax/Attributes;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->scale:Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 95
    :cond_7
    const-string v8, "keyframe"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 96
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "keyframes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 97
    :cond_8
    const-string v8, "time"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->time:F

    goto/16 :goto_0

    .line 98
    :cond_9
    const-string v8, "keyframes"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 99
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "track"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 100
    :cond_a
    const-string v8, "track"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 101
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "tracks"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 102
    :cond_b
    const-string v8, "bone"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, boneName:Ljava/lang/String;
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    .line 104
    .local v0, bone:Lcom/jme3/animation/Bone;
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v8, v0}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v3

    .line 105
    .local v3, index:I
    new-instance v8, Lcom/jme3/animation/BoneTrack;

    invoke-direct {v8, v3}, Lcom/jme3/animation/BoneTrack;-><init>(I)V

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->track:Lcom/jme3/animation/BoneTrack;

    goto/16 :goto_0

    .line 106
    .end local v0           #bone:Lcom/jme3/animation/Bone;
    .end local v1           #boneName:Ljava/lang/String;
    .end local v3           #index:I
    :cond_c
    const-string v8, "boneparent"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 107
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "bonehierarchy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 108
    :cond_d
    const-string v8, "bone"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1       #boneName:Ljava/lang/String;
    const-string v8, "parent"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, parentName:Ljava/lang/String;
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    .line 111
    .restart local v0       #bone:Lcom/jme3/animation/Bone;
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/animation/Bone;

    .line 112
    .local v6, parent:Lcom/jme3/animation/Bone;
    invoke-virtual {v6, v0}, Lcom/jme3/animation/Bone;->addChild(Lcom/jme3/animation/Bone;)V

    goto/16 :goto_0

    .line 113
    .end local v0           #bone:Lcom/jme3/animation/Bone;
    .end local v1           #boneName:Ljava/lang/String;
    .end local v6           #parent:Lcom/jme3/animation/Bone;
    .end local v7           #parentName:Ljava/lang/String;
    :cond_e
    const-string v8, "bone"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 114
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "bones"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 117
    :cond_f
    new-instance v8, Lcom/jme3/animation/Bone;

    const-string v9, "name"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/jme3/animation/Bone;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    .line 118
    const-string v8, "id"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 119
    .local v2, id:I
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->indexToBone:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->nameToBone:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    invoke-virtual {v9}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->bone:Lcom/jme3/animation/Bone;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 121
    .end local v2           #id:I
    :cond_10
    const-string v8, "tracks"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 122
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_11

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "animation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 123
    :cond_11
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 124
    :cond_12
    const-string v8, "animation"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 125
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "animations"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 126
    :cond_13
    const-string v8, "name"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, name:Ljava/lang/String;
    const-string v8, "length"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 128
    .local v4, length:F
    new-instance v8, Lcom/jme3/animation/Animation;

    invoke-direct {v8, v5, v4}, Lcom/jme3/animation/Animation;-><init>(Ljava/lang/String;F)V

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animation:Lcom/jme3/animation/Animation;

    goto/16 :goto_0

    .line 129
    .end local v4           #length:F
    .end local v5           #name:Ljava/lang/String;
    :cond_14
    const-string v8, "bonehierarchy"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 130
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "skeleton"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 131
    :cond_15
    const-string v8, "animations"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 132
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_16

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "skeleton"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 133
    :cond_16
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->animations:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 134
    :cond_17
    const-string v8, "bones"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 135
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "skeleton"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 136
    :cond_18
    const-string v8, "skeleton"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    sget-boolean v8, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;->elementStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8
.end method
