.class Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridPanningAction"
.end annotation


# static fields
.field public static final PANNING_ACTION_NAME:Ljava/lang/String; = "Panning"


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    const-string v0, "Panning"

    invoke-direct {p0, p2, v0}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1900(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1900(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v2

    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1900(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->update()V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1900(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(I)V

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
