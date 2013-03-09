.class Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;
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
    name = "CollapseIncreaseRunnable"
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

.field private mHideViewCount:I

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field private mPosition:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mInit:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z
    invoke-static {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1002(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3600(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3600(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mPosition:I

    invoke-interface {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_0
    return-void
.end method

.method private getTargetDistance()I
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

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
    .locals 7

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->end()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

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
    iput v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseDuration(ILjava/util/ArrayList;J)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    iput-boolean v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mInit:Z

    goto :goto_0
.end method

.method private nextView()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseViewHeight(Landroid/view/View;I)V
    invoke-static {v2, v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1800(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->end()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mInit:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->init()V

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->getTargetDistance()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->nextView()V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->increaseViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1900(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mPosition:I

    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->end()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mInit:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
