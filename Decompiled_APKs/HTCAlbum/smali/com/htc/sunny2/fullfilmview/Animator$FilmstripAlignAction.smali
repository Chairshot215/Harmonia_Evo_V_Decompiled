.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripAlignAction"
.end annotation


# instance fields
.field count:I

.field delayCount:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 269
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 270
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    .line 267
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    .line 271
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 304
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 8
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 275
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v5

    if-nez v5, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v4

    .line 277
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->update()V

    .line 278
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRelativeMovement()I

    move-result v1

    .line 279
    .local v1, pos:I
    if-eqz v1, :cond_5

    move v0, v3

    .line 280
    .local v0, play:Z
    :goto_1
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_6

    move v2, v3

    .line 281
    .local v2, shouldDoATransition:Z
    :goto_2
    if-eqz v0, :cond_7

    .line 283
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 284
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    if-nez v5, :cond_2

    .line 285
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 287
    :cond_2
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    .line 301
    :cond_3
    :goto_3
    if-nez v0, :cond_4

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v5

    if-eqz v5, :cond_0

    :cond_4
    move v4, v3

    goto :goto_0

    .end local v0           #play:Z
    .end local v2           #shouldDoATransition:Z
    :cond_5
    move v0, v4

    .line 279
    goto :goto_1

    .restart local v0       #play:Z
    :cond_6
    move v2, v4

    .line 280
    goto :goto_2

    .line 291
    .restart local v2       #shouldDoATransition:Z
    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 292
    if-eqz v2, :cond_8

    .line 293
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 295
    :cond_8
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    goto :goto_3
.end method
