.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripFlyingAction"
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 317
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->count:I

    .line 319
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 360
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 8
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 330
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->update()V

    .line 331
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRelativeMovement()I

    move-result v1

    .line 332
    .local v1, pos:I
    if-eqz v1, :cond_1

    move v0, v2

    .line 334
    .local v0, play:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 336
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v6, "FullScreenViewAnimateToFilmstripViewAction"

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v4, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 337
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->count:I

    if-nez v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 340
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->count:I

    .line 346
    :goto_2
    return v0

    .end local v0           #play:Z
    :cond_1
    move v0, v3

    .line 332
    goto :goto_0

    .restart local v0       #play:Z
    :cond_2
    move v2, v3

    .line 336
    goto :goto_1

    .line 344
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    goto :goto_2
.end method
