.class Lcom/htc/painting/engine/HtcPaintingView$1;
.super Landroid/os/Handler;
.source "HtcPaintingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/HtcPaintingView;
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
    .line 127
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$1;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 130
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$1;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v1}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    .line 133
    const v1, 0x65b9aa

    invoke-virtual {p0, v1}, Lcom/htc/painting/engine/HtcPaintingView$1;->removeMessages(I)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$1;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #calls: Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$000(Lcom/htc/painting/engine/HtcPaintingView;)V

    .line 137
    const v1, 0x65b9ab

    invoke-virtual {p0, v1}, Lcom/htc/painting/engine/HtcPaintingView$1;->removeMessages(I)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$1;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z
    invoke-static {v2}, Lcom/htc/painting/engine/HtcPaintingView;->access$100(Lcom/htc/painting/engine/HtcPaintingView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 141
    .local v0, show:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 142
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$1;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/htc/painting/engine/HtcPaintingView;->access$200(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .end local v0           #show:Z
    :cond_0
    move v0, v1

    .line 140
    goto :goto_1

    .line 144
    .restart local v0       #show:Z
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$1;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$200(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x65b9aa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
