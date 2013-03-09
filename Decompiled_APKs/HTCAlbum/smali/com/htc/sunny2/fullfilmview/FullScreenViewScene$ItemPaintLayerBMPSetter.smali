.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemPaintLayerBMPSetter"
.end annotation


# instance fields
.field itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 130
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    .line 131
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 135
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    iget v2, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->index:I

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I
    invoke-static {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I

    move-result v0

    .line 143
    .local v0, frameIndex:I
    if-ltz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V

    goto :goto_0
.end method
