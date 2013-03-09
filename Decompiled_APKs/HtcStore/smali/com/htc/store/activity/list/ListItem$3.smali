.class Lcom/htc/store/activity/list/ListItem$3;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/list/ListItem;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/list/ListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mLoadingItem:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x3

    if-le v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    invoke-virtual {v0}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mGetItemListTask:Lcom/htc/store/activity/list/ListItem$GetItemListTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/list/ListItem$GetItemListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 442
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v3, 0x3

    .line 445
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iput p2, v0, Lcom/htc/store/activity/list/ListItem;->mScrollState:I

    .line 446
    if-nez p2, :cond_1

    .line 447
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    invoke-virtual {v0, v3}, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->removeMessages(I)V

    .line 448
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 449
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget v0, v0, Lcom/htc/store/activity/list/ListItem;->mSlidingCounter:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 450
    invoke-static {}, Lcom/htc/store/util/ImageUtils;->clearCache()V

    .line 451
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/store/activity/list/ListItem;->mSlidingCounter:I

    .line 458
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget v1, v0, Lcom/htc/store/activity/list/ListItem;->mSlidingCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/store/activity/list/ListItem;->mSlidingCounter:I

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$3;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    invoke-virtual {v0, v3}, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->removeMessages(I)V

    goto :goto_0
.end method
