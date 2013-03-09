.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutSceneAndBindItemRenderThreadEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 1
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 592
    const-string v0, "onForcePreparatorLoadVisibleItemsFromCache"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 605
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    .line 599
    return-void
.end method
