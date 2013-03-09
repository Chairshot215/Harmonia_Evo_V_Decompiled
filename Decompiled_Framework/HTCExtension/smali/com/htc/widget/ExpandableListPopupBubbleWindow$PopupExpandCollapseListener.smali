.class Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;
.super Ljava/lang/Object;
.source "ExpandableListPopupBubbleWindow.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ExpandableListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupExpandCollapseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1400(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1300(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1400(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1300(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1500(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1500(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_0
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1400(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1300(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1400(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1300(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1600(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListView$OnGroupExpandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->access$1600(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListView$OnGroupExpandListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_0
    return-void
.end method
