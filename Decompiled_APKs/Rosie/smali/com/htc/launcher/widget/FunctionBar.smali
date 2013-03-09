.class public Lcom/htc/launcher/widget/FunctionBar;
.super Landroid/view/View;
.source "FunctionBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/widget/FunctionBar;->m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;

    .line 27
    invoke-virtual {p0, p0}, Lcom/htc/launcher/widget/FunctionBar;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/widget/FunctionBar;->m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;

    .line 32
    invoke-virtual {p0, p0}, Lcom/htc/launcher/widget/FunctionBar;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/widget/FunctionBar;->m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;

    .line 37
    invoke-virtual {p0, p0}, Lcom/htc/launcher/widget/FunctionBar;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 42
    .local v0, newEv:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/FunctionBar;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/launcher/widget/FunctionBar;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 44
    iget-object v1, p0, Lcom/htc/launcher/widget/FunctionBar;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/launcher/widget/FunctionBar;->m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;->isInStickyMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/htc/launcher/widget/FunctionBar;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 55
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/htc/launcher/widget/FunctionBar;->m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;->onSelect(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 50
    iget-object v1, p0, Lcom/htc/launcher/widget/FunctionBar;->m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/widget/FunctionBar;->m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;->isTabOnEmptyCell()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/htc/launcher/widget/FunctionBar;->m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;->onTapEmptyCell()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/launcher/widget/FunctionBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/launcher/widget/FunctionBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 71
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNavbarStickyModeHandler(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;)V
    .locals 0
    .parameter "navbarStickyModeHandler"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/launcher/widget/FunctionBar;->m_NavbarStickyModeHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;

    .line 76
    return-void
.end method

.method public setOnLongClick(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "longClickListener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/launcher/widget/FunctionBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 63
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/launcher/widget/FunctionBar;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 60
    return-void
.end method
