.class Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;
.super Ljava/lang/Object;
.source "MoreExpandableHtcListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/MoreExpandableHtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandReduceRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mDistanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightMovedDistance:I

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field private mPosition:I

.field private mReduceViewCount:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1597
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mPosition:I

    .line 1604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 1605
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    .line 1606
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mMode:I

    .line 1607
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mInit:Z

    .line 1608
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    .line 1609
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    .line 1610
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 1611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1597
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 6

    .prologue
    .line 1635
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mMode:I

    .line 1636
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1637
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1639
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v3

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mPosition:I

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 1640
    .local v0, newPosition:I
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverExpandReduceViewList()V
    invoke-static {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1643
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    .line 1644
    .local v1, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v1, :cond_1

    .line 1645
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v2

    .line 1646
    .local v2, parentPosition:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1647
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 1655
    .end local v2           #parentPosition:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;
    invoke-static {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4700(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v3, v0, v4}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 1657
    return-void

    .line 1649
    .restart local v2       #parentPosition:I
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v3, v0, v4}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0

    .line 1652
    .end local v2           #parentPosition:I
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v3, v0, v4}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 1704
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1705
    .local v0, now:J
    const/4 v2, 0x0

    .line 1707
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1708
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1712
    :goto_0
    return v2

    .line 1710
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    div-long v3, v4, v6

    long-to-int v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1661
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    .line 1662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    .line 1663
    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    .line 1664
    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 1665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mInit:Z

    .line 1666
    return-void
.end method

.method private nextView()V
    .locals 3

    .prologue
    .line 1669
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3400(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V

    .line 1670
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    .line 1671
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    .line 1672
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 1673
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    if-lt v0, v1, :cond_0

    .line 1674
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->end()V

    .line 1679
    :goto_0
    return-void

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1682
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 1700
    :goto_0
    return-void

    .line 1684
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 1685
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->init()V

    .line 1688
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->getTargetDistance()I

    move-result v1

    .line 1690
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 1691
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->nextView()V

    .line 1692
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1696
    :cond_2
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 1697
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mHeightMovedDistance:I

    .line 1698
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3500(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 1699
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 3
    .parameter "position"
    .parameter "self"

    .prologue
    .line 1614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mStartTime:J

    .line 1615
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mPosition:I

    .line 1616
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1617
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    invoke-static {v2, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4600(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3702(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1618
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    .line 1620
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    if-nez v1, :cond_0

    .line 1621
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->end()V

    .line 1632
    :goto_0
    return-void

    .line 1625
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mReduceViewCount:I

    if-ge v0, v1, :cond_1

    .line 1626
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1629
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mMode:I

    .line 1630
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->mInit:Z

    .line 1631
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
