.class public Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;
.super Ljava/lang/Object;
.source "NowPlayingCellSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;
    }
.end annotation


# instance fields
.field mSequenceMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->mSequenceMapping:Ljava/util/Map;

    .line 21
    return-void
.end method

.method private getCellDescriptor(III)Ljava/lang/String;
    .locals 2
    .parameter "rowIndex"
    .parameter "blockIndex"
    .parameter "cellIndex"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSortedIndex(III)I
    .locals 2
    .parameter "rowIndexInWidget"
    .parameter "blockIndexInRow"
    .parameter "cellIndexInBlock"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->getCellDescriptor(III)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->mSequenceMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v1, -0x1

    .line 113
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->mSequenceMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public sort(Ljava/util/List;Landroid/content/res/Resources;)V
    .locals 20
    .parameter
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;>;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, rows:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 71
    .local v4, allCells:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;>;"
    const/4 v14, 0x0

    .local v14, rowIndex:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    .line 72
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 73
    .local v13, row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    const/4 v6, 0x0

    .local v6, blockIndex:I
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_1

    .line 74
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/widget/consumption/Block;

    .line 75
    .local v5, block:Lcom/google/android/finsky/widget/consumption/Block;
    invoke-virtual {v5}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v7

    .line 76
    .local v7, cellCount:I
    const/4 v9, 0x0

    .local v9, cellIndex:I
    :goto_2
    if-ge v9, v7, :cond_0

    .line 77
    new-instance v10, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14, v6, v9}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;III)V

    .line 78
    .local v10, cellInfo:Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;
    invoke-virtual {v5, v9}, Lcom/google/android/finsky/widget/consumption/Block;->getImageWidthRes(I)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 79
    .local v11, cellWidth:I
    invoke-virtual {v5, v9}, Lcom/google/android/finsky/widget/consumption/Block;->getImageHeightRes(I)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 80
    .local v8, cellHeight:I
    mul-int v16, v11, v8

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    .line 81
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 73
    .end local v8           #cellHeight:I
    .end local v10           #cellInfo:Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;
    .end local v11           #cellWidth:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 71
    .end local v5           #block:Lcom/google/android/finsky/widget/consumption/Block;
    .end local v7           #cellCount:I
    .end local v9           #cellIndex:I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 86
    .end local v6           #blockIndex:I
    .end local v13           #row:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 91
    const/4 v15, 0x0

    .local v15, sortedIndex:I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 92
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;

    .line 93
    .local v12, currentCellInfo:Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->mSequenceMapping:Ljava/util/Map;

    move-object/from16 v16, v0

    iget v0, v12, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    move/from16 v17, v0

    iget v0, v12, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    move/from16 v18, v0

    iget v0, v12, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->getCellDescriptor(III)Ljava/lang/String;

    move-result-object v17

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 99
    .end local v12           #currentCellInfo:Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;
    :cond_3
    return-void
.end method
