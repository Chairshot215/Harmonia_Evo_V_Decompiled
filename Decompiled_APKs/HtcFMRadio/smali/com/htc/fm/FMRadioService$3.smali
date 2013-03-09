.class Lcom/htc/fm/FMRadioService$3;
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
    .line 352
    iput-object p1, p0, Lcom/htc/fm/FMRadioService$3;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 359
    :pswitch_0
    const-string v0, "FMRadioService"

    const-string v1, "WHAT_SERVICE_COMMAND_STOP"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$3;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadioService$3;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mServiceInUse:I
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$600(Lcom/htc/fm/FMRadioService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$3;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v1, p0, Lcom/htc/fm/FMRadioService$3;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mServiceStartId:I
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$700(Lcom/htc/fm/FMRadioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMRadioService;->stopSelf(I)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$3;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->DelayDestroyServiceInUnbind()V
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$800(Lcom/htc/fm/FMRadioService;)V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
