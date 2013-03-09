.class final Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;
.super Ljava/lang/Object;
.source "HtcGridView2.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FetchInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mCenterPos:I

.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;I)V
    .locals 0
    .parameter
    .parameter "center"

    .prologue
    .line 3918
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3919
    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->mCenterPos:I

    .line 3920
    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)I
    .locals 8
    .parameter "info1"
    .parameter "info2"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 3924
    iget v6, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->getPriority(I)I

    move-result v2

    .line 3925
    .local v2, nPriroty1:I
    iget v6, p2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->getPriority(I)I

    move-result v3

    .line 3927
    .local v3, nPriroty2:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3928
    .local v0, nAbsPriroty1:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3930
    .local v1, nAbsPriroty2:I
    if-ne v0, v1, :cond_4

    .line 3931
    if-le v2, v3, :cond_1

    .line 3947
    :cond_0
    :goto_0
    return v4

    .line 3933
    :cond_1
    if-ge v2, v3, :cond_2

    move v4, v5

    .line 3934
    goto :goto_0

    .line 3936
    :cond_2
    iget v6, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    iget v7, p2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    if-gt v6, v7, :cond_0

    .line 3938
    iget v4, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    iget v6, p2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    if-ge v4, v6, :cond_3

    move v4, v5

    .line 3939
    goto :goto_0

    .line 3941
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 3944
    :cond_4
    if-gt v0, v1, :cond_0

    move v4, v5

    .line 3947
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3898
    check-cast p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    .end local p1
    check-cast p2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->compare(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)I

    move-result v0

    return v0
.end method

.method getPriority(I)I
    .locals 5
    .parameter "nPos"

    .prologue
    .line 3954
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->mCenterPos:I

    .line 3957
    .local v1, mCurrentPos:I
    sub-int v0, p1, v1

    .line 3958
    .local v0, d:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I
    invoke-static {v4}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$3900(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v4

    div-int v2, v0, v4

    .line 3959
    .local v2, q:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I
    invoke-static {v4}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$3900(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v4

    rem-int v3, v0, v4

    .line 3960
    .local v3, r:I
    if-ge p1, v1, :cond_2

    .line 3961
    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I
    invoke-static {v4}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$3900(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    if-lt v3, v4, :cond_1

    .line 3962
    const/4 v2, 0x0

    .line 3967
    :cond_0
    :goto_0
    neg-int v4, v2

    .line 3977
    :goto_1
    return v4

    .line 3964
    :cond_1
    if-eqz v3, :cond_0

    .line 3965
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3969
    :cond_2
    if-le p1, v1, :cond_4

    .line 3970
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_3

    .line 3971
    const/4 v2, 0x0

    .line 3973
    :cond_3
    neg-int v4, v2

    goto :goto_1

    .line 3977
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method
