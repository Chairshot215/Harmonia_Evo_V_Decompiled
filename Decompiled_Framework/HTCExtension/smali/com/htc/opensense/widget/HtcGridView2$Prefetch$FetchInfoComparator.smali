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

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->mCenterPos:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)I
    .locals 8

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget v6, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->getPriority(I)I

    move-result v2

    iget v6, p2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->getPriority(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-ge v2, v3, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    iget v6, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    iget v7, p2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    if-gt v6, v7, :cond_0

    iget v4, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    iget v6, p2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    if-ge v4, v6, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    if-gt v0, v1, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    check-cast p2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->compare(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)I

    move-result v0

    return v0
.end method

.method getPriority(I)I
    .locals 5

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->mCenterPos:I

    sub-int v0, p1, v1

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I
    invoke-static {v4}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$3900(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v4

    div-int v2, v0, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I
    invoke-static {v4}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$3900(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v4

    rem-int v3, v0, v4

    if-ge p1, v1, :cond_2

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I
    invoke-static {v4}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$3900(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    if-lt v3, v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    neg-int v4, v2

    :goto_1
    return v4

    :cond_1
    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-le p1, v1, :cond_4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_3

    const/4 v2, 0x0

    :cond_3
    neg-int v4, v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method
