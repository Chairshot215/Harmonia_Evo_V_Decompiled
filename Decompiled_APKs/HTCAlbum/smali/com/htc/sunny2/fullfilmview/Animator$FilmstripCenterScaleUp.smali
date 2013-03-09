.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripCenterScaleUp"
.end annotation


# instance fields
.field private mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mPastFrames:I

.field private mScaleUpRatio:F

.field stopAnimation:Z

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 549
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 550
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    const v1, 0x3fa66666

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mScaleUpRatio:F

    .line 540
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    .line 541
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 542
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->stopAnimation:Z

    .line 552
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    .line 553
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 554
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->stopAnimation:Z

    .line 555
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 1
    .parameter "cancelReason"

    .prologue
    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->stopAnimation:Z

    .line 599
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$900(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 600
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 8
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/16 v7, 0xf

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    const/4 v2, 0x0

    .line 567
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->stopAnimation:Z

    if-eqz v4, :cond_0

    .line 584
    :goto_0
    return v2

    .line 570
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemScale()F

    move-result v1

    .line 571
    .local v1, scale:F
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mScaleUpRatio:F

    sub-float/2addr v5, v6

    invoke-static {v4, v6, v5, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->AcEaseOut(IFFI)F

    move-result v0

    .line 573
    .local v0, newScale:F
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v4, v0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    .line 575
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    .line 577
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    if-lt v4, v7, :cond_1

    .line 579
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v3, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$802(Lcom/htc/sunny2/fullfilmview/Animator;Z)Z

    .line 580
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 584
    goto :goto_0
.end method
