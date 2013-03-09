.class Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;
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
    name = "ExpandReduceOtherRootRunnable"
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

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 5

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->checkView(I)I
    invoke-static {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4000(Lcom/htc/widget/MoreExpandableHtcListView;I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setTargetTopPosition()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4200(Lcom/htc/widget/MoreExpandableHtcListView;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverExpandReduceViewList()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->moveToTop(II)V
    invoke-static {v2, v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4400(Lcom/htc/widget/MoreExpandableHtcListView;II)V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    return-void
.end method

.method private getTargetDistance()I
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

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

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    return-void
.end method

.method private nextView()V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3400(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->end()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->init()V

    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->getTargetDistance()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->nextView()V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3500(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceOtherRootViewList()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3702(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->end()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

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

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
