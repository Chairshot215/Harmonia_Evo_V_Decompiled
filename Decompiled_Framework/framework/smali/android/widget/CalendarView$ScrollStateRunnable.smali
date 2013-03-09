.class Landroid/widget/CalendarView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method private constructor <init>(Landroid/widget/CalendarView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CalendarView;Landroid/widget/CalendarView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CalendarView$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 3

    iput-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    iput p2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-virtual {v0, p0}, Landroid/widget/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 5

    const/16 v4, 0x1f4

    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    iget v3, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    #setter for: Landroid/widget/CalendarView;->mCurrentScrollState:I
    invoke-static {v2, v3}, Landroid/widget/CalendarView;->access$702(Landroid/widget/CalendarView;I)I

    iget v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mPreviousScrollState:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$800(Landroid/widget/CalendarView;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mListScrollTopOffset:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$900(Landroid/widget/CalendarView;)I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mListScrollTopOffset:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$900(Landroid/widget/CalendarView;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mIsScrollingUp:Z
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1000(Landroid/widget/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    iget v3, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    #setter for: Landroid/widget/CalendarView;->mPreviousScrollState:I
    invoke-static {v2, v3}, Landroid/widget/CalendarView;->access$802(Landroid/widget/CalendarView;I)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_1
.end method
