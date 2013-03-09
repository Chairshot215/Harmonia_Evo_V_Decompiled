.class Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;
.super Ljava/lang/Object;
.source "NowPlayingWidgetProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateWidgetLayout(Landroid/content/Context;IIII)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/finsky/widget/consumption/Block;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 778
    check-cast p1, Ljava/util/List;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->compare(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/List;Ljava/util/List;)I
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, lhs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    .local p2, rhs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 803
    if-ne p1, p2, :cond_1

    .line 804
    const/4 v4, 0x0

    .line 819
    :cond_0
    :goto_0
    return v4

    .line 806
    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1, v6}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowAverageHeight(Ljava/util/List;Landroid/content/Context;)I

    move-result v1

    .line 807
    .local v1, lHeight:I
    iget-object v6, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p2, v6}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowAverageHeight(Ljava/util/List;Landroid/content/Context;)I

    move-result v3

    .line 808
    .local v3, rHeight:I
    if-eq v1, v3, :cond_2

    .line 809
    if-lt v1, v3, :cond_0

    move v4, v5

    goto :goto_0

    .line 812
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowCellCount(Ljava/util/List;)I

    move-result v0

    .line 813
    .local v0, lCells:I
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowCellCount(Ljava/util/List;)I

    move-result v2

    .line 814
    .local v2, rCells:I
    if-eq v0, v2, :cond_3

    .line 817
    if-lt v0, v2, :cond_0

    move v4, v5

    goto :goto_0

    .line 819
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    if-gt v6, v7, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method getRowAverageHeight(Ljava/util/List;Landroid/content/Context;)I
    .locals 8
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .line 788
    .local p1, blocks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    const/4 v5, 0x0

    .line 789
    .local v5, totalCount:I
    const/4 v6, 0x0

    .line 790
    .local v6, totalHeight:I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 791
    .local v4, res:Landroid/content/res/Resources;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/consumption/Block;

    .line 792
    .local v0, block:Lcom/google/android/finsky/widget/consumption/Block;
    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v1

    .line 793
    .local v1, blockImages:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 794
    invoke-virtual {v0, v2}, Lcom/google/android/finsky/widget/consumption/Block;->getImageHeightRes(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 793
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 796
    :cond_0
    add-int/2addr v5, v1

    .line 797
    goto :goto_0

    .line 798
    .end local v0           #block:Lcom/google/android/finsky/widget/consumption/Block;
    .end local v1           #blockImages:I
    .end local v2           #i:I
    :cond_1
    div-int v7, v6, v5

    return v7
.end method

.method getRowCellCount(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 780
    .local p1, blocks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    const/4 v2, 0x0

    .line 781
    .local v2, result:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/consumption/Block;

    .line 782
    .local v0, block:Lcom/google/android/finsky/widget/consumption/Block;
    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 784
    .end local v0           #block:Lcom/google/android/finsky/widget/consumption/Block;
    :cond_0
    return v2
.end method
