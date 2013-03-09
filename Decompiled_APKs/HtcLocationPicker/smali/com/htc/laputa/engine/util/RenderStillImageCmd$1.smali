.class Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;
.super Ljava/lang/Object;
.source "RenderStillImageCmd.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/RenderStillImageCmd;->exec(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/RenderStillImageCmd$IRenderCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/RenderStillImageCmd;

.field final synthetic val$listener:Lcom/htc/laputa/engine/util/RenderStillImageCmd$IRenderCallback;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/RenderStillImageCmd;Lcom/htc/laputa/engine/util/RenderStillImageCmd$IRenderCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;->this$0:Lcom/htc/laputa/engine/util/RenderStillImageCmd;

    iput-object p2, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;->val$listener:Lcom/htc/laputa/engine/util/RenderStillImageCmd$IRenderCallback;

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
    .line 69
    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;->this$0:Lcom/htc/laputa/engine/util/RenderStillImageCmd;

    #getter for: Lcom/htc/laputa/engine/util/RenderStillImageCmd;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/RenderStillImageCmd;->access$000(Lcom/htc/laputa/engine/util/RenderStillImageCmd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;-><init>(Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;Landroid/os/Bundle;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method
