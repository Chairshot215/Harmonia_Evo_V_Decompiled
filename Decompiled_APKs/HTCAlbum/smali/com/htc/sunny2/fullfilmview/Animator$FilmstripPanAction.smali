.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripPanAction"
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
    .line 608
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 609
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->count:I

    .line 610
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 638
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, stop:Z
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v2

    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-eq v2, v3, :cond_1

    .line 619
    :cond_0
    const/4 v1, 0x0

    .line 632
    :goto_0
    return v1

    .line 623
    :cond_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->count:I

    if-nez v2, :cond_2

    .line 624
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 625
    :cond_2
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->count:I

    .line 626
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->update()V

    .line 627
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRelativeMovement()I

    move-result v0

    .line 628
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v4, "FullScreenViewAnimateToFilmstripViewAction"

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 629
    const/4 v1, 0x1

    goto :goto_0

    .line 628
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
