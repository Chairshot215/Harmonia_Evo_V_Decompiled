.class final Lcom/htc/widget/HtcAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v4, v4, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iput v7, v4, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v5, v5, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v6, v6, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v4, v4, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcAbsListView;->positionSelector(Landroid/view/View;)V

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v2

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_3

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    new-instance v5, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    iput-object v5, v4, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v5, v5, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iput v8, v4, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView;

    iput v8, v4, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto :goto_1
.end method
