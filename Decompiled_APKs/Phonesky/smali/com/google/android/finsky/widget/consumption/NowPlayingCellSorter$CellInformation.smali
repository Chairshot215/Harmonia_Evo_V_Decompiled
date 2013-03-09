.class Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;
.super Ljava/lang/Object;
.source "NowPlayingCellSorter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;",
        ">;"
    }
.end annotation


# instance fields
.field blockIndexInRow:I

.field cellAreaInPixels:J

.field cellIndexInBlock:I

.field rowIndexInWidget:I

.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;III)V
    .locals 0
    .parameter
    .parameter "rowIndexInWidget"
    .parameter "blockIndexInRow"
    .parameter "cellIndexInBlock"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    .line 30
    iput p3, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    .line 31
    iput p4, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    .line 32
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;)I
    .locals 6
    .parameter "another"

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 36
    iget-wide v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    iget-wide v4, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 37
    iget-wide v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    iget-wide v4, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 37
    goto :goto_0

    .line 40
    :cond_2
    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    if-eq v2, v3, :cond_3

    .line 41
    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 44
    :cond_3
    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    if-eq v2, v3, :cond_4

    .line 45
    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 48
    :cond_4
    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    if-eq v2, v3, :cond_5

    .line 49
    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 52
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->compareTo(Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;)I

    move-result v0

    return v0
.end method
