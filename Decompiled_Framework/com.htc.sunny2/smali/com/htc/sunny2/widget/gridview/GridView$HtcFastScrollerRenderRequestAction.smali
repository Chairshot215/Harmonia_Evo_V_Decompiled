.class Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcFastScrollerRenderRequestAction"
.end annotation


# instance fields
.field private fastScrollerState:I

.field private requestRenderFramesCount:I

.field private shouldAddToRenderThread:Z

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    const-string v0, "HtcFastScrollerRenderRequestAction"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->fastScrollerState:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    return-void
.end method


# virtual methods
.method public needAddedToRenderThread()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFastScrollerState(I)V
    .locals 1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->fastScrollerState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    :cond_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->fastScrollerState:I

    return-void
.end method
