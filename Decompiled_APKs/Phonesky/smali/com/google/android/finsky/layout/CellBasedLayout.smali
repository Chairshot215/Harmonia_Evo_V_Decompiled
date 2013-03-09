.class public Lcom/google/android/finsky/layout/CellBasedLayout;
.super Ljava/lang/Object;
.source "CellBasedLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    }
.end annotation


# instance fields
.field private final mGrid:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/CellBasedLayout$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/layout/CellBasedLayout$Item;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNextItemId:I

.field private final mWidthInCells:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "cellsWide"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mItemPositionMap:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mGrid:Ljava/util/Vector;

    .line 33
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mItemList:Ljava/util/List;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mNextItemId:I

    .line 41
    iput p1, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mWidthInCells:I

    .line 42
    return-void
.end method

.method private allocateCells(IILcom/google/android/finsky/layout/CellBasedLayout$Item;I)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "item"
    .parameter "value"

    .prologue
    .line 112
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mItemPositionMap:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move v1, p2

    .local v1, y:I
    :goto_0
    invoke-interface {p3}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v2

    add-int/2addr v2, p2

    if-ge v1, v2, :cond_1

    .line 114
    move v0, p1

    .local v0, x:I
    :goto_1
    invoke-interface {p3}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v2

    add-int/2addr v2, p1

    if-ge v0, v2, :cond_0

    .line 115
    invoke-direct {p0, v0, v1, p4}, Lcom/google/android/finsky/layout/CellBasedLayout;->setCellValue(III)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0           #x:I
    :cond_1
    return-void
.end method

.method private appendRows(I)V
    .locals 3
    .parameter "amount"

    .prologue
    .line 121
    const/4 v0, 0x0

    .local v0, y:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mGrid:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/CellBasedLayout;->getWidth()I

    move-result v2

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method private checkVerticalRunsOfEmptyCells(IILcom/google/android/finsky/layout/CellBasedLayout$Item;)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "item"

    .prologue
    .line 76
    move v0, p1

    .local v0, x:I
    :goto_0
    invoke-interface {p3}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v2

    add-int/2addr v2, p1

    if-ge v0, v2, :cond_2

    .line 80
    move v1, p2

    .local v1, y:I
    :goto_1
    invoke-interface {p3}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v2

    add-int/2addr v2, p2

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/CellBasedLayout;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/CellBasedLayout;->getCellValue(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 86
    .end local v1           #y:I
    :goto_2
    return v2

    .line 80
    .restart local v1       #y:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1           #y:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private findHorizontalRunOfEmptyCells(II)I
    .locals 3
    .parameter "row"
    .parameter "emptyCellsRequested"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, emptyRunSize:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/CellBasedLayout;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 99
    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/layout/CellBasedLayout;->getCellValue(II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 103
    if-lt v0, p2, :cond_0

    .line 104
    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, p2

    .line 108
    :goto_1
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private fitItem(Lcom/google/android/finsky/layout/CellBasedLayout$Item;I)V
    .locals 4
    .parameter "item"
    .parameter "cellValue"

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, y:I
    const/4 v0, -0x1

    .line 48
    .local v0, x:I
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/CellBasedLayout;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->findHorizontalRunOfEmptyCells(II)I

    move-result v0

    .line 53
    if-ltz v0, :cond_2

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/finsky/layout/CellBasedLayout;->checkVerticalRunsOfEmptyCells(IILcom/google/android/finsky/layout/CellBasedLayout$Item;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 64
    :cond_1
    invoke-interface {p1}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/CellBasedLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->appendRows(I)V

    .line 65
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/finsky/layout/CellBasedLayout;->allocateCells(IILcom/google/android/finsky/layout/CellBasedLayout$Item;I)V

    .line 66
    return-void

    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCellValue(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mGrid:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, p1

    return v0
.end method

.method private getHeight()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mGrid:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private getWidth()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mWidthInCells:I

    return v0
.end method

.method private setCellValue(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mGrid:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput p3, v0, p1

    .line 136
    return-void
.end method


# virtual methods
.method public addItem(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 150
    invoke-interface {p1}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/CellBasedLayout;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Item is too big for this grid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-interface {p1}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v0

    if-gtz v0, :cond_2

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Item must be at least 1x1 cells"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mNextItemId:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/CellBasedLayout;->fitItem(Lcom/google/android/finsky/layout/CellBasedLayout$Item;I)V

    .line 158
    iget v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mNextItemId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mNextItemId:I

    .line 159
    return-void
.end method

.method public getLeft(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mItemPositionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTop(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mItemPositionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isOnLeftEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/CellBasedLayout;->getLeft(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnRightEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/CellBasedLayout;->getLeft(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/layout/CellBasedLayout;->mWidthInCells:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
