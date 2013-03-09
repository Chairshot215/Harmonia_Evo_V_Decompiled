.class Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "FullScreenViewItemFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doFling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Fling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 411
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onFlingBeginIRT()V

    .line 416
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 439
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 4
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 419
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    .line 420
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v0

    .line 421
    .local v0, relativeMovementX:I
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    .line 422
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v1

    .line 424
    .local v1, relativeMovementY:I
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->moveImageByX(F)V

    .line 425
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->moveImageByY(F)V

    .line 427
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 428
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onFlingEndIRT()V

    .line 432
    :cond_0
    const/4 v2, 0x0

    .line 434
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
