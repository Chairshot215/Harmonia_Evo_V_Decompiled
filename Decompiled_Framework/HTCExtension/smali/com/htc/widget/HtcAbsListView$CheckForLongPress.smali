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

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v5, v6, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v7, v7, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v4, v6, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v7, v7, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v6, v6, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v6, v0, v4, v2, v3}, Lcom/htc/widget/HtcAbsListView;->access$500(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;IJ)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v7, -0x1

    iput v7, v6, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v7, 0x2

    iput v7, v6, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto :goto_0
.end method
