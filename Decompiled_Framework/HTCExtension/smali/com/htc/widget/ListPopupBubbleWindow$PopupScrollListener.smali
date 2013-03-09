.class Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1300(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->run()V

    :cond_0
    return-void
.end method
