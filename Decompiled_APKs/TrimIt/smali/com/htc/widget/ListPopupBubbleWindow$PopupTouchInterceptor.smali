.class Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1586
    invoke-direct {p0, p1}, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1588
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1589
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1590
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1592
    .local v2, y:I
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/PopupBubbleWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/PopupBubbleWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1595
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1300(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v4}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1599
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 1596
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1597
    iget-object v3, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1300(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    #getter for: Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v4}, Lcom/htc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
