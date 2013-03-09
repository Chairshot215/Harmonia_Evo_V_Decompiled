.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 207
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 7
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v4, 0x0

    .line 179
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v5

    if-nez v5, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v4

    .line 182
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v5

    sget-object v6, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v5

    sget-object v6, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v5, v6, :cond_0

    .line 185
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v4

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_3

    .line 187
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    .line 188
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v0

    .line 189
    .local v0, distanceX:I
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v5

    aget-object v4, v4, v5

    int-to-float v5, v0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panX(F)F

    move-result v2

    .line 190
    .local v2, frameEatedDeltaX:F
    int-to-float v4, v0

    sub-float v3, v4, v2

    .line 191
    .local v3, frameOffset:F
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doFramesOffset(F)V
    invoke-static {v4, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;F)V

    .line 194
    .end local v0           #distanceX:I
    .end local v2           #frameEatedDeltaX:F
    .end local v3           #frameOffset:F
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v4

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_4

    .line 196
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    .line 197
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v4

    neg-int v1, v4

    .line 198
    .local v1, distanceY:I
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v5

    aget-object v4, v4, v5

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panY(F)F

    .line 203
    .end local v1           #distanceY:I
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0
.end method
