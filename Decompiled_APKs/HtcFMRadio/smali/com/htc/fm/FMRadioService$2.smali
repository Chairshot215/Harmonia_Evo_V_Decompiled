.class Lcom/htc/fm/FMRadioService$2;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-wide/16 v4, 0x104

    const/4 v3, 0x5

    .line 320
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 348
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 323
    :pswitch_1
    iget-object v1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMVolume:I
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$000(Lcom/htc/fm/FMRadioService;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object v1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$300(Lcom/htc/fm/FMRadioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 333
    :pswitch_3
    const/4 v0, 0x0

    .line 335
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFFRWRepeat:I
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$400(Lcom/htc/fm/FMRadioService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 336
    iget-object v1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$500(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-object v1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$500(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$500(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFFRWRepeat:I
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$400(Lcom/htc/fm/FMRadioService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 340
    iget-object v1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$500(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object v1, p0, Lcom/htc/fm/FMRadioService$2;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$500(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
