.class Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
.super Landroid/widget/FrameLayout;
.source "PopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/PopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupBubbleViewContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupBubbleWindow.PopupViewContainer"


# instance fields
.field final synthetic this$0:Lcom/htc/widget/PopupBubbleWindow;


# direct methods
.method public constructor <init>(Lcom/htc/widget/PopupBubbleWindow;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1846
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    .line 1847
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1848
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1864
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_4

    .line 1865
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1867
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1868
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 1869
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1881
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    :goto_0
    return v1

    .line 1872
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1873
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1874
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1875
    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 1879
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1881
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$1300(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$1300(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1888
    const/4 v0, 0x1

    .line 1890
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 1852
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z
    invoke-static {v1}, Lcom/htc/widget/PopupBubbleWindow;->access$1100(Lcom/htc/widget/PopupBubbleWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1854
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1855
    .local v0, drawableState:[I
    invoke-static {}, Lcom/htc/widget/PopupBubbleWindow;->access$1200()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1858
    .end local v0           #drawableState:[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1896
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1898
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1900
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    .line 1906
    :goto_0
    return v2

    .line 1902
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1903
    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v3}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 1906
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$1400(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$1400(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1918
    :goto_0
    return-void

    .line 1916
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
