.class Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
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
    name = "MoveToTopRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private MOVE_DURATION:I

.field private mDistance:I

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

.field private mInit:Z

.field private mMode:I

.field private mPosition:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mStartTime:J

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->MOVE_DURATION:I

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mInit:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mView:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setToTop(I)V
    invoke-static {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1400(Lcom/htc/widget/MoreExpandableHtcListView;I)V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private getTargetDistance()I
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->MOVE_DURATION:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    :goto_0
    return v2

    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iget v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->MOVE_DURATION:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->MOVE_DURATION:I

    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    iput-boolean v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mInit:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mInit:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->init()V

    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->getTargetDistance()I

    move-result v0

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->end()V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    sub-int v1, v2, v0

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->moveToTop(II)V
    invoke-static {v2, v3, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4400(Lcom/htc/widget/MoreExpandableHtcListView;II)V

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mStartTime:J

    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iput v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mMode:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mInit:Z

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setTargetTopPosition()V
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mPosition:I

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->end()V

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v4

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4200(Lcom/htc/widget/MoreExpandableHtcListView;)[I

    move-result-object v2

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->mDistance:I

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
