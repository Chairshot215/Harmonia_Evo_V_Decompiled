.class Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContentView:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContentView:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$2(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextDisplayMode:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$3(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$2(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    #setter for: Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$4(Lcom/actionbarsherlock/internal/app/ActionBarImpl;Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->completeDeferredDestroyActionMode()V

    return-void
.end method
