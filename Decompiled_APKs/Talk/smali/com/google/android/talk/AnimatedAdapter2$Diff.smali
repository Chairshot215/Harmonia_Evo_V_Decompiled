.class public Lcom/google/android/talk/AnimatedAdapter2$Diff;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Diff"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    }
.end annotation


# instance fields
.field private mCutoffTime:J

.field private mNewValues:[J

.field private mOldValues:[J

.field final synthetic this$0:Lcom/google/android/talk/AnimatedAdapter2;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AnimatedAdapter2;[J[J)V
    .locals 0
    .parameter
    .parameter "orig"
    .parameter "rev"

    .prologue
    .line 647
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->this$0:Lcom/google/android/talk/AnimatedAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mOldValues:[J

    .line 649
    iput-object p3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    .line 650
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/AnimatedAdapter2$Diff;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    return-object v0
.end method

.method private computePath()Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .locals 21

    .prologue
    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mOldValues:[J

    array-length v13, v2

    .line 665
    .local v13, N:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    array-length v12, v2

    .line 667
    .local v12, M:I
    add-int v2, v13, v12

    add-int/lit8 v16, v2, 0x1

    .line 668
    .local v16, max:I
    mul-int/lit8 v2, v16, 0x2

    add-int/lit8 v19, v2, 0x1

    .line 669
    .local v19, size:I
    add-int/lit8 v2, v19, 0x1

    div-int/lit8 v17, v2, 0x2

    .line 670
    .local v17, middle:I
    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    move-object/from16 v20, v0

    .line 672
    .local v20, v:[Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    add-int/lit8 v7, v17, 0x1

    new-instance v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;IILcom/google/android/talk/AnimatedAdapter2$Diff$Node;Z)V

    aput-object v1, v20, v7

    .line 673
    const/4 v14, 0x0

    .local v14, d:I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    .line 674
    neg-int v15, v14

    .local v15, k:I
    :goto_1
    if-gt v15, v14, :cond_5

    .line 675
    add-int v18, v17, v15

    .line 676
    .local v18, shift:I
    const/4 v5, 0x0

    .line 679
    .local v5, prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    neg-int v2, v14

    if-eq v15, v2, :cond_0

    if-eq v15, v14, :cond_1

    add-int/lit8 v2, v18, -0x1

    aget-object v2, v20, v2

    iget v2, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    add-int/lit8 v7, v18, 0x1

    aget-object v7, v20, v7

    iget v7, v7, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    if-ge v2, v7, :cond_1

    .line 680
    :cond_0
    add-int/lit8 v2, v18, 0x1

    aget-object v2, v20, v2

    iget v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    .line 681
    .local v3, i:I
    add-int/lit8 v2, v18, 0x1

    aget-object v5, v20, v2

    .line 687
    :goto_2
    add-int/lit8 v2, v18, -0x1

    const/4 v7, 0x0

    aput-object v7, v20, v2

    .line 689
    sub-int v4, v3, v15

    .line 690
    .local v4, j:I
    new-instance v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;IILcom/google/android/talk/AnimatedAdapter2$Diff$Node;Z)V

    .line 692
    .local v1, node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    :goto_3
    if-ge v3, v13, :cond_2

    if-ge v4, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mOldValues:[J

    aget-wide v7, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    aget-wide v9, v2, v4

    cmp-long v2, v7, v9

    if-nez v2, :cond_2

    .line 693
    add-int/lit8 v3, v3, 0x1

    .line 694
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 684
    .end local v1           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_1
    add-int/lit8 v2, v18, -0x1

    aget-object v2, v20, v2

    iget v2, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    add-int/lit8 v3, v2, 0x1

    .line 685
    .restart local v3       #i:I
    add-int/lit8 v2, v18, -0x1

    aget-object v5, v20, v2

    goto :goto_2

    .line 696
    .restart local v1       #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .restart local v4       #j:I
    :cond_2
    iget v2, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    if-le v3, v2, :cond_3

    .line 697
    new-instance v6, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    const/4 v11, 0x1

    move-object/from16 v7, p0

    move v8, v3

    move v9, v4

    move-object v10, v1

    invoke-direct/range {v6 .. v11}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;IILcom/google/android/talk/AnimatedAdapter2$Diff$Node;Z)V

    .end local v1           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .local v6, node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    move-object v1, v6

    .line 700
    .end local v6           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .restart local v1       #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    :cond_3
    aput-object v1, v20, v18

    .line 702
    if-lt v3, v13, :cond_4

    if-lt v4, v12, :cond_4

    .line 703
    aget-object v2, v20, v18

    .line 711
    .end local v1           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v15           #k:I
    .end local v18           #shift:I
    :goto_4
    return-object v2

    .line 674
    .restart local v1       #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .restart local v3       #i:I
    .restart local v4       #j:I
    .restart local v5       #prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .restart local v15       #k:I
    .restart local v18       #shift:I
    :cond_4
    add-int/lit8 v15, v15, 0x2

    goto :goto_1

    .line 706
    .end local v1           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v18           #shift:I
    :cond_5
    add-int v2, v17, v14

    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x0

    aput-object v7, v20, v2

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mCutoffTime:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_6

    .line 708
    new-instance v2, Lcom/google/android/talk/AnimatedAdapter2$TooLongException;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/google/android/talk/AnimatedAdapter2$TooLongException;-><init>(Lcom/google/android/talk/AnimatedAdapter2$1;)V

    throw v2

    .line 673
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 711
    .end local v15           #k:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private expandPath(Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;)Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;
    .locals 10
    .parameter "path"

    .prologue
    .line 715
    new-instance v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;

    invoke-direct {v1, p0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;)V

    .line 716
    .local v1, diffs:Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;
    iget-boolean v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->isSnake:Z

    if-eqz v6, :cond_0

    .line 717
    iget-object p1, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    .line 719
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    iget-object v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    iget v6, v6, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->y:I

    if-ltz v6, :cond_2

    .line 720
    iget-boolean v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->isSnake:Z

    if-eqz v6, :cond_1

    .line 721
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "bad diffpath: found snake when looking for diff"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 723
    :cond_1
    iget v2, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    .line 724
    .local v2, i:I
    iget v4, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->y:I

    .line 726
    .local v4, j:I
    iget-object p1, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    .line 727
    iget v3, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    .line 728
    .local v3, ianchor:I
    iget v5, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->y:I

    .line 730
    .local v5, janchor:I
    new-instance v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;

    new-instance v6, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    iget-object v7, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mOldValues:[J

    sub-int v8, v2, v3

    invoke-direct {v6, p0, v7, v3, v8}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;[JII)V

    new-instance v7, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    iget-object v8, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    sub-int v9, v4, v5

    invoke-direct {v7, p0, v8, v5, v9}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;[JII)V

    const/4 v8, 0x0

    invoke-direct {v0, p0, v6, v7, v8}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;Lcom/google/android/talk/AnimatedAdapter2$1;)V

    .line 733
    .local v0, delta:Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
    invoke-virtual {v1, v0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->insert(Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;)V

    .line 734
    iget-boolean v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->isSnake:Z

    if-eqz v6, :cond_0

    .line 735
    iget-object p1, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    goto :goto_0

    .line 738
    .end local v0           #delta:Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
    .end local v2           #i:I
    .end local v3           #ianchor:I
    .end local v4           #j:I
    .end local v5           #janchor:I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public compute(J)Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;
    .locals 5
    .parameter "maxDiffTime"

    .prologue
    const/4 v3, 0x0

    .line 653
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    iput-wide v1, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mCutoffTime:J

    .line 655
    :try_start_0
    new-instance v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-direct {p0}, Lcom/google/android/talk/AnimatedAdapter2$Diff;->computePath()Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/talk/AnimatedAdapter2$Diff;->expandPath(Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;)Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v4}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;Lcom/google/android/talk/AnimatedAdapter2$1;)V
    :try_end_0
    .catch Lcom/google/android/talk/AnimatedAdapter2$TooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_1
    return-object v1

    .line 653
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, ex:Lcom/google/android/talk/AnimatedAdapter2$TooLongException;
    const-string v1, "talk"

    invoke-virtual {v0}, Lcom/google/android/talk/AnimatedAdapter2$TooLongException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 658
    goto :goto_1
.end method
