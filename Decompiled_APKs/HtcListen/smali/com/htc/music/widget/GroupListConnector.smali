.class Lcom/htc/music/widget/GroupListConnector;
.super Landroid/widget/BaseAdapter;
.source "GroupListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/GroupListConnector$PositionMetadata;,
        Lcom/htc/music/widget/GroupListConnector$GroupMetadata;,
        Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/GroupListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/music/widget/GroupListConnector;->mMaxExpGroupCount:I

    new-instance v0, Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;-><init>(Lcom/htc/music/widget/GroupListConnector;)V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/GroupListConnector;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V

    return-void
.end method

.method private refreshExpGroupMetadataList(Z)V
    .locals 9

    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/widget/GroupListConnector;->mTotalExpChildrenCount:I

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget v7, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    :goto_1
    iget v7, p0, Lcom/htc/music/widget/GroupListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/htc/music/widget/GroupListConnector;->mTotalExpChildrenCount:I

    iget v7, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v7, v6

    add-int/2addr v0, v7

    iget v6, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    iput v0, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget v7, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    iget v8, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    sub-int v4, v7, v8

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 4

    const/4 v3, -0x1

    new-instance v1, Lcom/htc/music/widget/GroupListPosition;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/htc/music/widget/GroupListPosition;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/GroupListConnector;->collapseGroup(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Z

    move-result v1

    goto :goto_0
.end method

.method collapseGroup(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListConnector;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget v1, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method expandGroup(I)Z
    .locals 4

    const/4 v3, -0x1

    new-instance v1, Lcom/htc/music/widget/GroupListPosition;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/htc/music/widget/GroupListPosition;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/GroupListConnector;->expandGroup(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Z

    move-result v1

    goto :goto_0
.end method

.method expandGroup(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    if-gez v4, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v4, p0, Lcom/htc/music/widget/GroupListConnector;->mMaxExpGroupCount:I

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/music/widget/GroupListConnector;->mMaxExpGroupCount:I

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget-object v4, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget v4, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/GroupListConnector;->collapseGroup(I)Z

    iget v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v1, :cond_3

    iget v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupInsertIndex:I

    :cond_3
    new-instance v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    invoke-direct {v2}, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;-><init>()V

    iget-object v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iput v4, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    iput v6, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    iput v6, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListConnector;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lcom/htc/music/widget/GroupListConnector;->mTotalExpChildrenCount:I

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
            "Lcom/htc/music/widget/GroupListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/4 v15, 0x0

    add-int/lit8 v22, v26, -0x1

    const/16 v25, 0x0

    if-nez v26, :cond_9

    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move/from16 v8, v25

    :goto_0
    return-object v2

    :cond_0
    :goto_1
    move/from16 v0, v22

    if-gt v15, v0, :cond_5

    sub-int v2, v22, v15

    div-int/lit8 v2, v2, 0x2

    add-int v8, v2, v15

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    add-int/lit8 v15, v8, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    add-int/lit8 v22, v8, -0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    if-le v15, v8, :cond_7

    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    move-object/from16 v0, v24

    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, v24

    iget v4, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v10, v2, v3

    new-instance v9, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move-object v2, v9

    goto/16 :goto_0

    :cond_7
    move/from16 v0, v22

    if-ge v0, v8, :cond_8

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    move-object/from16 v0, v27

    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v27

    iget v3, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v10, v2, v3

    new-instance v16, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v17, v10

    invoke-direct/range {v16 .. v22}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    move/from16 v8, v25

    goto/16 :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    iget-object v1, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v1, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v1, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-interface {v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Flat list position is of unknown type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemId(I)J
    .locals 8

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v6, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v6, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    iget-object v5, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v5, v5, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    :goto_0
    return-wide v5

    :cond_0
    iget-object v5, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v5, v5, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v6, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v6, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget-object v7, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v7, v7, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-interface {v5, v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    iget-object v5, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Flat list position is of unknown type"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getItemViewType(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    iget-object v0, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v18, 0x0

    add-int/lit8 v22, v20, -0x1

    const/16 v19, 0x0

    if-nez v20, :cond_7

    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p1

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move/from16 v8, v19

    :goto_0
    return-object v2

    :cond_0
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    sub-int v2, v22, v18

    div-int/lit8 v2, v2, 0x2

    add-int v8, v2, v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v2, :cond_1

    add-int/lit8 v18, v8, 0x1

    goto :goto_1

    :cond_1
    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v2, :cond_2

    add-int/lit8 v22, v8, -0x1

    goto :goto_1

    :cond_2
    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    const/4 v4, 0x2

    iget v5, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    const/4 v6, -0x1

    move/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    goto :goto_0

    :cond_3
    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v2, :cond_0

    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v2, v2, 0x1

    sub-int v6, p1, v2

    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    const/4 v4, 0x1

    iget v5, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    move/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    const/4 v12, 0x0

    move/from16 v0, v18

    if-le v0, v8, :cond_5

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    move/from16 v15, v18

    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v2, p1, v2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    add-int v12, v2, v3

    :goto_2
    new-instance v9, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    const/4 v11, 0x2

    const/4 v13, -0x1

    const/4 v14, 0x0

    move/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move-object v2, v9

    goto :goto_0

    :cond_5
    move/from16 v0, v22

    if-ge v0, v8, :cond_6

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    move/from16 v15, v22

    move-object/from16 v0, v21

    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v21

    iget v3, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    sub-int v3, v3, p1

    sub-int v12, v2, v3

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move/from16 v8, v19

    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v6

    iget-object v0, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-virtual {v6}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    iget-object v0, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    if-ne v0, v3, :cond_2

    iget-object v0, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget v0, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget-object v2, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

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
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v3, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-interface {v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isGroupExpanded(I)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/GroupListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget v2, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V

    goto :goto_0
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0

    iput p1, p0, Lcom/htc/music/widget/GroupListConnector;->mMaxExpGroupCount:I

    return-void
.end method
