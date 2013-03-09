.class public Lcom/htc/dockmode/saver/ScreenSaver;
.super Ljava/lang/Object;
.source "ScreenSaver.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field public mDimmed:Z

.field private mTintView:Landroid/view/View;

.field private mUnDimAnimListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/htc/dockmode/saver/ScreenSaver$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/saver/ScreenSaver$1;-><init>(Lcom/htc/dockmode/saver/ScreenSaver;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mUnDimAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 21
    iput-object p1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mActivity:Landroid/app/Activity;

    .line 22
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/saver/ScreenSaver;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public addSavers(Landroid/widget/RelativeLayout;)V
    .locals 3
    .parameter "mainView"

    .prologue
    const/4 v1, -0x1

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v0, lpFill:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    const/high16 v2, -0x3000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    iget-object v1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 96
    iget-object v1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method public doDim(Z)V
    .locals 3
    .parameter "fade"

    .prologue
    .line 34
    iget-object v2, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 35
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 38
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 40
    iget-boolean v2, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    if-eqz v2, :cond_0

    .line 42
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    const/high16 v2, 0x3f00

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 50
    :goto_0
    iget-boolean v2, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    invoke-virtual {p0, v2, p1}, Lcom/htc/dockmode/saver/ScreenSaver;->setWindowTint(ZZ)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    return-void

    .line 46
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 47
    const v2, 0x3e4ccccd

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0
.end method

.method public setFullScreen()V
    .locals 3

    .prologue
    .line 26
    iget-object v2, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 27
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 28
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    return-void
.end method

.method public setWindowTint(ZZ)V
    .locals 4
    .parameter "enabled"
    .parameter "fadeAnimation"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 59
    :cond_0
    if-eqz p1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    const/high16 v1, 0x7f04

    :goto_1
    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f040001

    goto :goto_1

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_3

    const v1, 0x7f040002

    :goto_2
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 68
    .local v0, unDimAmin:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mUnDimAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    iget-object v1, p0, Lcom/htc/dockmode/saver/ScreenSaver;->mTintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 66
    .end local v0           #unDimAmin:Landroid/view/animation/Animation;
    :cond_3
    const v1, 0x7f040003

    goto :goto_2
.end method
