.class public Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2$Diff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    }
.end annotation


# instance fields
.field mMainMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTransitions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;)V
    .locals 18
    .parameter
    .parameter "r"

    .prologue
    .line 897
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 836
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    .line 839
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    .line 842
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 903
    const/4 v13, -0x1

    .line 905
    .local v13, key:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    #getter for: Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J
    invoke-static/range {p1 .. p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff;->access$500(Lcom/google/android/talk/AnimatedAdapter2$Diff;)[J

    move-result-object v3

    array-length v3, v3

    if-ge v10, v3, :cond_0

    .line 906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->size()I

    move-result v14

    .line 909
    .local v14, rSize:I
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_4

    .line 910
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->getDelta(I)Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;

    move-result-object v8

    .line 911
    .local v8, d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mOrig:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 909
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 913
    :cond_2
    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mOrig:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    iget-object v4, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v4}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getStart()I

    move-result v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 918
    new-instance v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    const/4 v4, -0x1

    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mOrig:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->valueAt(I)J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;IJZ)V

    .line 919
    .local v2, t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 921
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_3
    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    iget-object v4, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v4}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getStart()I

    move-result v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 926
    new-instance v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    const/4 v4, 0x0

    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->valueAt(I)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;IJZ)V

    .line 927
    .restart local v2       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 935
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    .end local v8           #d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 937
    .local v12, inserts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 939
    .local v9, deleteCount:I
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_7

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 941
    .local v17, value:I
    if-gez v17, :cond_5

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 943
    .restart local v2       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-nez v3, :cond_6

    .line 944
    sub-int v15, v10, v9

    .line 945
    .local v15, rowPosition:I
    iget-wide v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    iput v15, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowPosition:I

    .line 939
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    .end local v15           #rowPosition:I
    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 948
    .restart local v2       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 953
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    .end local v17           #value:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 954
    .local v16, transformKey:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 955
    .restart local v2       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-eqz v3, :cond_8

    .line 956
    iget-wide v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 957
    iget-wide v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 958
    .restart local v15       #rowPosition:I
    iput v15, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowPosition:I

    goto :goto_5

    .line 962
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    .end local v15           #rowPosition:I
    .end local v16           #transformKey:I
    :cond_9
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;Lcom/google/android/talk/AnimatedAdapter2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 834
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;)V

    return-void
.end method


# virtual methods
.method public getAddingCount()I
    .locals 5

    .prologue
    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 978
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 979
    .local v1, d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v3, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-nez v3, :cond_0

    .line 980
    add-int/lit8 v0, v0, 0x1

    .line 977
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 983
    .end local v1           #d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_1
    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeletingRowId(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 867
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 868
    .local v1, value:I
    if-gez v1, :cond_0

    .line 869
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 870
    .local v0, t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-wide v2, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowId:J

    .line 872
    .end local v0           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getDeletionCount()I
    .locals 5

    .prologue
    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 967
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 968
    .local v1, d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v3, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-eqz v3, :cond_0

    .line 969
    add-int/lit8 v0, v0, 0x1

    .line 966
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 972
    .end local v1           #d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_1
    return v0
.end method

.method public getStatus(I)Lcom/google/android/talk/AnimatedAdapter2$Status;
    .locals 4
    .parameter "position"

    .prologue
    .line 845
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 846
    .local v1, value:I
    if-gez v1, :cond_1

    .line 847
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 848
    .local v0, t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v2, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    .line 850
    .end local v0           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :goto_0
    return-object v2

    .line 848
    .restart local v0       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_0
    sget-object v2, Lcom/google/android/talk/AnimatedAdapter2$Status;->Added:Lcom/google/android/talk/AnimatedAdapter2$Status;

    goto :goto_0

    .line 850
    .end local v0           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_1
    sget-object v2, Lcom/google/android/talk/AnimatedAdapter2$Status;->Normal:Lcom/google/android/talk/AnimatedAdapter2$Status;

    goto :goto_0
.end method

.method public isAddedOrDeleted(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 858
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getStatus(I)Lcom/google/android/talk/AnimatedAdapter2$Status;

    move-result-object v0

    .line 859
    .local v0, s:Lcom/google/android/talk/AnimatedAdapter2$Status;
    sget-object v1, Lcom/google/android/talk/AnimatedAdapter2$Status;->Added:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public translate(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 876
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 877
    .local v1, value:I
    if-gez v1, :cond_0

    .line 878
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 879
    .local v0, t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget v1, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowPosition:I

    .line 881
    .end local v0           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    .end local v1           #value:I
    :cond_0
    return v1
.end method
