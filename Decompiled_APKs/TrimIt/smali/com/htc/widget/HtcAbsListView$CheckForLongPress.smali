.class Lcom/htc/widget/HtcAbsListView$CheckForLongPress;
.super Lcom/htc/widget/HtcAbsListView$WindowRunnnable;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 2399
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2399
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2401
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v5, v6, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2402
    .local v5, motionPosition:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v7, v7, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2403
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2404
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v4, v6, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2405
    .local v4, longPressPosition:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v7, v7, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2407
    .local v2, longPressId:J
    const/4 v1, 0x0

    .line 2408
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v6, v6, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    if-nez v6, :cond_0

    .line 2409
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v6, v0, v4, v2, v3}, Lcom/htc/widget/HtcAbsListView;->access$500(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;IJ)Z

    move-result v1

    .line 2411
    :cond_0
    if-eqz v1, :cond_2

    .line 2412
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v7, -0x1

    iput v7, v6, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2413
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2414
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 2420
    .end local v1           #handled:Z
    .end local v2           #longPressId:J
    .end local v4           #longPressPosition:I
    :cond_1
    :goto_0
    return-void

    .line 2416
    .restart local v1       #handled:Z
    .restart local v2       #longPressId:J
    .restart local v4       #longPressPosition:I
    :cond_2
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v7, 0x2

    iput v7, v6, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto :goto_0
.end method
