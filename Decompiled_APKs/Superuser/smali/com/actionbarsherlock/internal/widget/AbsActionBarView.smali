.class public abstract Lcom/actionbarsherlock/internal/widget/AbsActionBarView;
.super Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

.field protected mContentHeight:I

.field final mContext:Landroid/content/Context;

.field protected mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

.field protected mSplitActionBar:Z

.field protected mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/actionbarsherlock/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/actionbarsherlock/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/actionbarsherlock/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 10

    const/high16 v9, 0x3f80

    const-wide/16 v7, 0xc8

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisibilityAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisibilityAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->cancel()V

    :cond_0
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->setAlpha(F)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setAlpha(F)V

    :cond_1
    const-string v0, "alpha"

    new-array v1, v4, [F

    aput v9, v1, v6

    invoke-static {p0, v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    sget-object v1, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    const-string v3, "alpha"

    new-array v4, v4, [F

    aput v9, v4, v6

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_3
    const-string v0, "alpha"

    new-array v1, v4, [F

    aput v5, v1, v6

    invoke-static {p0, v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    sget-object v1, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    const-string v3, "alpha"

    new-array v4, v4, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisibilityAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 2

    const/high16 v0, -0x8000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p2, v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/actionbarsherlock/R$styleable;->SherlockActionBar:[I

    sget v3, Lcom/actionbarsherlock/R$attr;->actionBarStyle:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/actionbarsherlock/R$bool;->abs__split_action_bar_is_narrow:I

    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getResources_getBoolean(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method protected positionChild(Landroid/view/View;III)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int v3, p2, v0

    add-int/2addr v1, v2

    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    return v0
.end method

.method protected positionChildInverse(Landroid/view/View;III)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    sub-int v3, p2, v0

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v2, p2, v1}, Landroid/view/View;->layout(IIII)V

    return v0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    new-instance v0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$1;-><init>(Lcom/actionbarsherlock/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mContentHeight:I

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->requestLayout()V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return-void
.end method

.method public setSplitView(Lcom/actionbarsherlock/internal/widget/ActionBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisibilityAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mVisibilityAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->end()V

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
