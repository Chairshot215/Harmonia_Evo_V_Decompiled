.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripViewAnimateToFullScreenViewAction"
.end annotation


# instance fields
.field private mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mPastFrames:I

.field private mScale:F

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 474
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 475
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 476
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 478
    .local v0, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    if-lez v1, :cond_0

    .line 480
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mScale:F

    .line 487
    :goto_0
    const/4 v0, 0x0

    .line 488
    return-void

    .line 485
    :cond_0
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mScale:F

    goto :goto_0
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    .line 530
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    .line 531
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v0, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$802(Lcom/htc/sunny2/fullfilmview/Animator;Z)Z

    .line 532
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 533
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 9
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/16 v8, 0x1e

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    const/4 v4, 0x0

    .line 492
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mScale:F

    sub-float/2addr v5, v6

    invoke-static {v2, v6, v5, v8}, Lcom/htc/sunny2/fullfilmview/Animator;->AcEaseOut(IFFI)F

    move-result v0

    .line 494
    .local v0, newScale:F
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunny2/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunny2/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v2

    invoke-static {v2, v0, v0, v6}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    .line 499
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getGalleryRight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v2, v5, v6, v8}, Lcom/htc/sunny2/fullfilmview/Animator;->AcEaseOut(IFFI)F

    move-result v1

    .line 502
    .local v1, newSpacing:F
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    float-to-int v5, v1

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->relayoutWithCenterSpacing(I)V

    .line 503
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 505
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    .line 507
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    if-ge v2, v8, :cond_2

    move v2, v3

    :goto_0
    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v5, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$802(Lcom/htc/sunny2/fullfilmview/Animator;Z)Z

    .line 509
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$800(Lcom/htc/sunny2/fullfilmview/Animator;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->mPastFrames:I

    if-ne v2, v3, :cond_1

    .line 512
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 524
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$800(Lcom/htc/sunny2/fullfilmview/Animator;)Z

    move-result v2

    return v2

    :cond_2
    move v2, v4

    .line 507
    goto :goto_0

    .line 516
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    .line 517
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    .line 518
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    .line 519
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    iget v3, v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    .line 521
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    goto :goto_1
.end method
