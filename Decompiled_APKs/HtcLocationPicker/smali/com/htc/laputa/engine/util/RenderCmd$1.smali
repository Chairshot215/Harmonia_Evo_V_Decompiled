.class Lcom/htc/laputa/engine/util/RenderCmd$1;
.super Ljava/lang/Object;
.source "RenderCmd.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/RenderCmd;->LaputaRender(ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/RenderCmd$IRenderCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/RenderCmd;

.field final synthetic val$renderCallback:Lcom/htc/laputa/engine/util/RenderCmd$IRenderCallback;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/RenderCmd;Lcom/htc/laputa/engine/util/RenderCmd$IRenderCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/htc/laputa/engine/util/RenderCmd$1;->this$0:Lcom/htc/laputa/engine/util/RenderCmd;

    iput-object p2, p0, Lcom/htc/laputa/engine/util/RenderCmd$1;->val$renderCallback:Lcom/htc/laputa/engine/util/RenderCmd$IRenderCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetReceive(IILandroid/os/Bundle;)V
    .locals 2
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderCmd$1;->this$0:Lcom/htc/laputa/engine/util/RenderCmd;

    #getter for: Lcom/htc/laputa/engine/util/RenderCmd;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/RenderCmd;->access$000(Lcom/htc/laputa/engine/util/RenderCmd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/laputa/engine/util/RenderCmd$1$1;

    invoke-direct {v1, p0, p3}, Lcom/htc/laputa/engine/util/RenderCmd$1$1;-><init>(Lcom/htc/laputa/engine/util/RenderCmd$1;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1350
    return-void
.end method
