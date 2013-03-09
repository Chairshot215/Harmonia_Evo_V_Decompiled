.class Lcom/htc/fm/FMController$2;
.super Landroid/os/Handler;
.source "FMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMController;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMController;)V
    .locals 0
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/htc/fm/FMController$2;->this$0:Lcom/htc/fm/FMController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-wide/16 v1, 0x1f4

    .line 911
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 923
    :goto_0
    return-void

    .line 913
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/FMController$2;->this$0:Lcom/htc/fm/FMController;

    #getter for: Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;
    invoke-static {v0}, Lcom/htc/fm/FMController;->access$700(Lcom/htc/fm/FMController;)Lcom/htc/fm/OnRemoteEventControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/htc/fm/FMController$2;->this$0:Lcom/htc/fm/FMController;

    #getter for: Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;
    invoke-static {v0}, Lcom/htc/fm/FMController;->access$700(Lcom/htc/fm/FMController;)Lcom/htc/fm/OnRemoteEventControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fm/OnRemoteEventControlListener;->startFastSeekUp()V

    .line 915
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/fm/FMController$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 918
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/FMController$2;->this$0:Lcom/htc/fm/FMController;

    #getter for: Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;
    invoke-static {v0}, Lcom/htc/fm/FMController;->access$700(Lcom/htc/fm/FMController;)Lcom/htc/fm/OnRemoteEventControlListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/htc/fm/FMController$2;->this$0:Lcom/htc/fm/FMController;

    #getter for: Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;
    invoke-static {v0}, Lcom/htc/fm/FMController;->access$700(Lcom/htc/fm/FMController;)Lcom/htc/fm/OnRemoteEventControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fm/OnRemoteEventControlListener;->startFastSeekDown()V

    .line 920
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/fm/FMController$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 911
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
