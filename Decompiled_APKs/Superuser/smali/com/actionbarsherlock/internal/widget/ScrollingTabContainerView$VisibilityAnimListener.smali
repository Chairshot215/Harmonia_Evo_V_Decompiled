.class public Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V
    .locals 1

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    iput-object p1, v0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(I)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 0

    iput p1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method
