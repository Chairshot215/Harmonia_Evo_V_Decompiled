.class Lcom/htc/widget/HtcExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "HtcExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;,
        Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;,
        Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mMaxExpGroupCount:I

.field mPosMap:Lcom/htc/widget/PositionMap;

.field mSection:[Ljava/lang/Object;

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "expandableListAdapter"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mMaxExpGroupCount:I

    .line 79
    new-instance v0, Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;-><init>(Lcom/htc/widget/HtcExpandableListConnector;)V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 1118
    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mSection:[Ljava/lang/Object;

    .line 1119
    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mPosMap:Lcom/htc/widget/PositionMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListAdapter;Landroid/content/Context;)V
    .locals 0
    .parameter "expandableListAdapter"
    .parameter "context"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    .line 96
    iput-object p2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcExpandableListConnector;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .parameter "forceChildrenCountRefresh"
    .parameter "syncGroupPositions"

    .prologue
    const/4 v12, -0x1

    .line 605
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 606
    .local v2, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 607
    .local v3, egmlSize:I
    const/4 v0, 0x0

    .line 610
    .local v0, curFlPos:I
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mTotalExpChildrenCount:I

    .line 612
    if-eqz p2, :cond_3

    .line 614
    const/4 v8, 0x0

    .line 616
    .local v8, positionsChanged:Z
    add-int/lit8 v5, v3, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_2

    .line 617
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 618
    .local v1, curGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget-wide v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gId:J

    iget v11, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/widget/HtcExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 619
    .local v7, newGPos:I
    iget v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    .line 620
    if-ne v7, v12, :cond_0

    .line 622
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 623
    add-int/lit8 v3, v3, -0x1

    .line 626
    :cond_0
    iput v7, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    .line 627
    if-nez v8, :cond_1

    const/4 v8, 0x1

    .line 616
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 631
    .end local v1           #curGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .end local v7           #newGPos:I
    :cond_2
    if-eqz v8, :cond_3

    .line 633
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 638
    .end local v5           #i:I
    .end local v8           #positionsChanged:Z
    :cond_3
    const/4 v6, 0x0

    .line 639
    .local v6, lastGPos:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 641
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 647
    .restart local v1       #curGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_5

    .line 648
    :cond_4
    iget-object v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 657
    .local v4, gChildrenCount:I
    :goto_2
    iget v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/htc/widget/HtcExpandableListConnector;->mTotalExpChildrenCount:I

    .line 664
    iget v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 665
    iget v6, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    .line 668
    iput v0, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    .line 669
    add-int/2addr v0, v4

    .line 670
    iput v0, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 639
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 653
    .end local v4           #gChildrenCount:I
    :cond_5
    iget v9, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4       #gChildrenCount:I
    goto :goto_2

    .line 672
    .end local v1           #curGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .end local v4           #gChildrenCount:I
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 680
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 682
    .local v0, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 686
    :goto_0
    return v1

    .line 684
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 685
    .local v1, retValue:Z
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method collapseGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .parameter "posMetadata"

    .prologue
    const/4 v0, 0x0

    .line 699
    iget-object v1, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    if-nez v1, :cond_0

    .line 713
    :goto_0
    return v0

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 705
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 708
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->notifyDataSetChanged()V

    .line 711
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 713
    const/4 v0, 0x1

    goto :goto_0
.end method

.method expandGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 721
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 723
    .local v0, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListConnector;->expandGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 724
    .local v1, retValue:Z
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 725
    return v1
.end method

.method expandGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z
    .locals 8
    .parameter "posMetadata"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 733
    iget-object v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    if-gez v4, :cond_0

    .line 735
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 738
    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v4, :cond_2

    .line 777
    :cond_1
    :goto_0
    return v3

    .line 741
    :cond_2
    iget-object v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    if-nez v4, :cond_1

    .line 744
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v4, v5, :cond_3

    .line 748
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 750
    .local v0, collapsedGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 752
    .local v1, collapsedIndex:I
    iget v4, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(I)Z

    .line 755
    iget v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v1, :cond_3

    .line 756
    iget v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 760
    .end local v0           #collapsedGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .end local v1           #collapsedIndex:I
    :cond_3
    iget-object v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v5, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v6, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v6, v6, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v5

    invoke-static {v7, v7, v4, v5, v6}, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 766
    .local v2, expandedGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 769
    invoke-direct {p0, v3, v3}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 772
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->notifyDataSetChanged()V

    .line 775
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 777
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findGroupPosition(JI)I
    .locals 16
    .parameter "groupIdToMatch"
    .parameter "seedGroupPosition"

    .prologue
    .line 860
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v12}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    .line 862
    .local v2, count:I
    if-nez v2, :cond_0

    .line 863
    const/4 v12, -0x1

    .line 932
    :goto_0
    return v12

    .line 867
    :cond_0
    const-wide/high16 v12, -0x8000

    cmp-long v12, p1, v12

    if-nez v12, :cond_1

    .line 868
    const/4 v12, -0x1

    goto :goto_0

    .line 872
    :cond_1
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 873
    add-int/lit8 v12, v2, -0x1

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 875
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x64

    add-long v3, v12, v14

    .line 880
    .local v3, endTime:J
    move/from16 v5, p3

    .line 883
    .local v5, first:I
    move/from16 v8, p3

    .line 886
    .local v8, last:I
    const/4 v9, 0x0

    .line 896
    .local v9, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 897
    .local v1, adapter:Landroid/widget/ExpandableListAdapter;
    if-nez v1, :cond_4

    .line 898
    const/4 v12, -0x1

    goto :goto_0

    .line 916
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v10, rowId:J
    :cond_2
    if-nez v6, :cond_3

    if-eqz v9, :cond_9

    if-nez v7, :cond_9

    .line 918
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 919
    move/from16 p3, v8

    .line 921
    const/4 v9, 0x0

    .line 901
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v10           #rowId:J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gtz v12, :cond_6

    .line 902
    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v10

    .line 903
    .restart local v10       #rowId:J
    cmp-long v12, v10, p1

    if-nez v12, :cond_5

    move/from16 v12, p3

    .line 905
    goto :goto_0

    .line 908
    :cond_5
    add-int/lit8 v12, v2, -0x1

    if-ne v8, v12, :cond_7

    const/4 v7, 0x1

    .line 909
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 911
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 932
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v10           #rowId:J
    :cond_6
    const/4 v12, -0x1

    goto :goto_0

    .line 908
    .restart local v10       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 909
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 922
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v9, :cond_4

    if-nez v6, :cond_4

    .line 924
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 925
    move/from16 p3, v5

    .line 927
    const/4 v9, 0x1

    goto :goto_1
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 811
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 812
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 814
    :goto_0
    return-object v1

    .restart local v0       #adapter:Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    .locals 25
    .parameter "pos"

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 278
    .local v20, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 281
    .local v23, numExpGroups:I
    const/4 v13, 0x0

    .line 282
    .local v13, leftExpGroupIndex:I
    add-int/lit8 v19, v23, -0x1

    .line 283
    .local v19, rightExpGroupIndex:I
    const/16 v22, 0x0

    .line 286
    .local v22, midExpGroupIndex:I
    if-nez v23, :cond_9

    .line 292
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 382
    .end local v22           #midExpGroupIndex:I
    .local v7, midExpGroupIndex:I
    :goto_0
    return-object v2

    .line 301
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v13, v0, :cond_5

    .line 302
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 303
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 305
    .local v6, midExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 309
    add-int/lit8 v13, v7, 0x1

    goto :goto_1

    .line 310
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 314
    add-int/lit8 v19, v7, -0x1

    goto :goto_1

    .line 315
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 320
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 322
    iget v2, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 324
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 326
    iget v2, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 330
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 339
    .end local v6           #midExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 341
    const/4 v2, 0x0

    goto :goto_0

    .line 349
    :cond_6
    if-le v13, v7, :cond_7

    .line 360
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 361
    .local v21, leftExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 365
    .local v8, flPos:I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 367
    .end local v8           #flPos:I
    .end local v21           #leftExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_8

    .line 375
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 376
    .local v24, rightExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 379
    .restart local v8       #flPos:I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 382
    .end local v8           #flPos:I
    .end local v24           #rightExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v7           #midExpGroupIndex:I
    .restart local v22       #midExpGroupIndex:I
    :cond_9
    move/from16 v7, v22

    .end local v22           #midExpGroupIndex:I
    .restart local v7       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "flatListPos"

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 421
    .local v0, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 422
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 432
    .local v1, retValue:Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 434
    return-object v1

    .line 424
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 425
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v4, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #retValue:Ljava/lang/Object;
    goto :goto_0

    .line 429
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .parameter "flatListPos"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 439
    .local v4, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v7, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v8, v8, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 442
    .local v2, groupId:J
    iget-object v7, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 443
    iget-object v7, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    .line 453
    .local v5, retValue:J
    :goto_0
    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 455
    return-wide v5

    .line 444
    .end local v5           #retValue:J
    :cond_0
    iget-object v7, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 445
    iget-object v7, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v8, v8, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v9, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v9, v9, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v7, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 447
    .local v0, childId:J
    iget-object v7, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    .line 448
    .restart local v5       #retValue:J
    goto :goto_0

    .line 450
    .end local v0           #childId:J
    .end local v5           #retValue:J
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "flatListPos"

    .prologue
    const/4 v5, 0x2

    .line 551
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    .line 554
    .local v2, pos:Lcom/htc/widget/HtcExpandableListPosition;
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v4, v4, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v4, :cond_1

    .line 555
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 557
    .local v0, adapter:Landroid/widget/HeterogeneousExpandableList;
    iget v4, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    if-ne v4, v5, :cond_0

    .line 558
    iget v4, v2, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v4}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    .line 571
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    .local v3, retValue:I
    :goto_0
    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 573
    return v3

    .line 560
    .end local v3           #retValue:I
    .restart local v0       #adapter:Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    iget v4, v2, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v5, v2, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v0, v4, v5}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 561
    .local v1, childType:I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int v3, v4, v1

    .restart local v3       #retValue:I
    goto :goto_0

    .line 564
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    .end local v1           #childType:I
    .end local v3           #retValue:I
    :cond_1
    iget v4, v2, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    if-ne v4, v5, :cond_2

    .line 565
    const/4 v3, 0x0

    .restart local v3       #retValue:I
    goto :goto_0

    .line 567
    .end local v3           #retValue:I
    :cond_2
    const/4 v3, 0x1

    .restart local v3       #retValue:I
    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mPosMap:Lcom/htc/widget/PositionMap;

    invoke-interface {v0, p1}, Lcom/htc/widget/PositionMap;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1138
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mSection:[Ljava/lang/Object;

    return-object v0
.end method

.method getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    .locals 20
    .parameter "flPos"

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 128
    .local v13, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 131
    .local v17, numExpGroups:I
    const/4 v15, 0x0

    .line 132
    .local v15, leftExpGroupIndex:I
    add-int/lit8 v19, v17, -0x1

    .line 133
    .local v19, rightExpGroupIndex:I
    const/16 v16, 0x0

    .line 136
    .local v16, midExpGroupIndex:I
    if-nez v17, :cond_7

    .line 142
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    move/from16 v6, v16

    .line 261
    .end local v16           #midExpGroupIndex:I
    .local v6, midExpGroupIndex:I
    :goto_0
    return-object v1

    .line 158
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v15, v0, :cond_4

    .line 159
    sub-int v1, v19, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    .line 162
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 164
    .local v5, midExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_1

    .line 169
    add-int/lit8 v15, v6, 0x1

    goto :goto_1

    .line 170
    :cond_1
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_2

    .line 175
    add-int/lit8 v19, v6, -0x1

    goto :goto_1

    .line 176
    :cond_2
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 181
    const/4 v2, 0x2

    iget v3, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v4, -0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 183
    :cond_3
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    .line 193
    iget v1, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    .line 194
    .local v4, childPos:I
    const/4 v2, 0x1

    iget v3, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 210
    .end local v4           #childPos:I
    .end local v5           #midExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v12, 0x0

    .line 213
    .local v12, insertPosition:I
    const/4 v9, 0x0

    .line 220
    .local v9, groupPos:I
    if-le v15, v6, :cond_5

    .line 228
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 230
    .local v14, leftExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move v12, v15

    .line 236
    iget v1, v14, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    .line 261
    .end local v14           #leftExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :goto_2
    const/4 v8, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-static/range {v7 .. v12}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 238
    :cond_5
    move/from16 v0, v19

    if-ge v0, v6, :cond_6

    .line 245
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 247
    .local v18, rightExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    move/from16 v12, v19

    .line 255
    move-object/from16 v0, v18

    iget v1, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v18

    iget v2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    .line 256
    goto :goto_2

    .line 258
    .end local v18           #rightExpGm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v6           #midExpGroupIndex:I
    .end local v9           #groupPos:I
    .end local v12           #insertPosition:I
    .restart local v16       #midExpGroupIndex:I
    :cond_7
    move/from16 v6, v16

    .end local v16           #midExpGroupIndex:I
    .restart local v6       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "flatListPos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 462
    .local v9, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v0, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 463
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-virtual {v9}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 465
    .local v10, retValue:Landroid/view/View;
    instance-of v0, v10, Lcom/htc/widget/HtcListItem;

    if-eqz v0, :cond_1

    .line 466
    iget v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mIndicatorRight:I

    iget v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mIndicatorLeft:I

    sub-int v11, v0, v1

    .line 467
    .local v11, width:I
    if-gtz v11, :cond_0

    .line 468
    const/16 v11, 0x32

    .line 470
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mIndicatorLeft:I

    const/16 v1, 0x28

    if-gt v0, v1, :cond_2

    move-object v0, v10

    .line 471
    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcListItem;->setLeftSpace(I)V

    .line 544
    .end local v11           #width:I
    :cond_1
    :goto_0
    invoke-virtual {v9}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 546
    return-object v10

    .restart local v11       #width:I
    :cond_2
    move-object v0, v10

    .line 474
    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcListItem;->setRightSpace(I)V

    goto :goto_0

    .line 477
    .end local v10           #retValue:Landroid/view/View;
    .end local v11           #width:I
    :cond_3
    iget-object v0, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 478
    iget-object v0, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_4

    const/4 v3, 0x1

    .line 480
    .local v3, isLastChild:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v2, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 482
    .restart local v10       #retValue:Landroid/view/View;
    if-eqz v10, :cond_1

    .line 483
    instance-of v0, v10, Lcom/htc/widget/HtcListItem;

    if-eqz v0, :cond_7

    move-object v0, v10

    .line 484
    check-cast v0, Lcom/htc/widget/HtcListItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20805a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v10

    .line 487
    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    if-eqz v3, :cond_6

    .line 489
    iget-object v0, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    if-nez v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20800be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v10

    .line 491
    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 478
    .end local v3           #isLastChild:Z
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .end local v10           #retValue:Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 493
    .restart local v3       #isLastChild:Z
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    .restart local v10       #retValue:Landroid/view/View;
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20801a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v10

    .line 494
    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 496
    :cond_6
    iget-object v0, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20800ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v10

    .line 498
    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 502
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    :cond_7
    const v0, 0x2020019

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 503
    .local v7, fakeBackground:Landroid/view/View;
    if-eqz v7, :cond_1

    .line 504
    const v0, 0x20805a9

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 507
    if-eqz v3, :cond_a

    .line 508
    iget-object v0, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    if-nez v0, :cond_8

    .line 509
    const v0, 0x20800be

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 518
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 511
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    .line 512
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 513
    .local v8, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 514
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    const v0, 0x20801a7

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 519
    :cond_a
    iget-object v0, v9, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    if-nez v0, :cond_c

    .line 520
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 521
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 522
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 523
    .restart local v8       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 524
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    const v0, 0x20800ba

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 528
    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 529
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 530
    .restart local v8       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 531
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 541
    .end local v3           #isLastChild:Z
    .end local v7           #fakeBackground:Landroid/view/View;
    .end local v10           #retValue:Landroid/view/View;
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 578
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 581
    .local v0, adapter:Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 583
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 845
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "flatListPos"

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    .line 396
    .local v0, pos:Lcom/htc/widget/HtcExpandableListPosition;
    iget v2, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 397
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v4, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    .line 403
    .local v1, retValue:Z
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 405
    return v1

    .line 400
    .end local v1           #retValue:Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #retValue:Z
    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 787
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 788
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 790
    .local v0, groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iget v2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    .line 791
    const/4 v2, 0x1

    .line 795
    .end local v0           #groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :goto_1
    return v2

    .line 787
    .restart local v0       #groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 795
    .end local v0           #groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "expandableListAdapter"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 110
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 111
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 824
    .local p1, expandedGroupMetadataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 831
    .local v1, numGroups:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 832
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    .line 831
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 838
    :cond_2
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 839
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_0
.end method

.method setIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1114
    iput p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mIndicatorLeft:I

    .line 1115
    iput p2, p0, Lcom/htc/widget/HtcExpandableListConnector;->mIndicatorRight:I

    .line 1116
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .parameter "maxExpGroupCount"

    .prologue
    .line 802
    iput p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mMaxExpGroupCount:I

    .line 803
    return-void
.end method

.method public setPositionMap(Lcom/htc/widget/PositionMap;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mPosMap:Lcom/htc/widget/PositionMap;

    .line 1126
    return-void
.end method

.method public setSections([Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector;->mSection:[Ljava/lang/Object;

    .line 1122
    return-void
.end method
