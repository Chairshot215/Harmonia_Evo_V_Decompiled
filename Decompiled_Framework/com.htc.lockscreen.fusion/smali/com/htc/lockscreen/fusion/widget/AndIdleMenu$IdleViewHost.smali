.class Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;
.super Landroid/widget/LinearLayout;
.source "AndIdleMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleViewHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 1

    const/4 v0, -0x5

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-direct {p0, v2, v3}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->isOutOfBounds(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    #getter for: Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->access$100(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    #getter for: Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->access$100(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    const/4 v5, 0x0

    #setter for: Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;
    invoke-static {v4, v5}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->access$102(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->this$0:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    #getter for: Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
    invoke-static {v4}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->access$200(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->closeOptionsMenu()V

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
