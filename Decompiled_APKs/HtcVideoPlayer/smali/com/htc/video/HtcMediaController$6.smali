.class Lcom/htc/video/HtcMediaController$6;
.super Landroid/os/Handler;
.source "HtcMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcMediaController;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$6;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 942
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 944
    :pswitch_0
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$6;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mDragging:Z
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$100(Lcom/htc/video/HtcMediaController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/video/HtcMediaController$6;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 948
    :cond_1
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$6;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v1}, Lcom/htc/video/HtcMediaController;->hide()V

    goto :goto_0

    .line 952
    :pswitch_1
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$6;->this$0:Lcom/htc/video/HtcMediaController;

    #calls: Lcom/htc/video/HtcMediaController;->setProgress()I
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$200(Lcom/htc/video/HtcMediaController;)I

    move-result v0

    .line 953
    .local v0, pos:I
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$6;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mDragging:Z
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$100(Lcom/htc/video/HtcMediaController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/video/HtcMediaController$6;->this$0:Lcom/htc/video/HtcMediaController;

    iget-boolean v1, v1, Lcom/htc/video/HtcMediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 954
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/video/HtcMediaController$6;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 955
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/video/HtcMediaController$6;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 960
    .end local v0           #pos:I
    :pswitch_2
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$6;->this$0:Lcom/htc/video/HtcMediaController;

    #calls: Lcom/htc/video/HtcMediaController;->updatePausePlay()V
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$300(Lcom/htc/video/HtcMediaController;)V

    goto :goto_0

    .line 965
    :pswitch_3
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$6;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v1}, Lcom/htc/video/HtcMediaController;->doPauseResume()V

    goto :goto_0

    .line 970
    :pswitch_4
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/htc/video/VideoUtility/DisplayService;->setStereoDisplayMode(I)V

    goto :goto_0

    .line 942
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
