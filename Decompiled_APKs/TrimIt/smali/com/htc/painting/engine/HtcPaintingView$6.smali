.class Lcom/htc/painting/engine/HtcPaintingView$6;
.super Ljava/lang/Object;
.source "HtcPaintingView.java"

# interfaces
.implements Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/HtcPaintingView;->startWorkers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/HtcPaintingView;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$6;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheStateChanged(II)V
    .locals 5
    .parameter "stateBefore"
    .parameter "stateAfter"

    .prologue
    const/4 v4, 0x1

    const v3, 0x65b9ac

    const/4 v2, 0x0

    .line 432
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$6;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #setter for: Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I
    invoke-static {v1, p2}, Lcom/htc/painting/engine/HtcPaintingView;->access$702(Lcom/htc/painting/engine/HtcPaintingView;I)I

    .line 433
    if-ne p1, p2, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$6;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 437
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$6;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 438
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    if-eqz p2, :cond_3

    if-ne p2, v4, :cond_0

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$6;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$6;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 442
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$6;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
