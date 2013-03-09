.class Lcom/htc/video/HdmiPlugReceiver$1;
.super Landroid/os/Handler;
.source "HdmiPlugReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HdmiPlugReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HdmiPlugReceiver;


# direct methods
.method constructor <init>(Lcom/htc/video/HdmiPlugReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/video/HdmiPlugReceiver$1;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 39
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/video/HdmiPlugReceiver$1;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    iget-object v1, v1, Lcom/htc/video/HdmiPlugReceiver;->mCallback:Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/htc/video/HdmiPlugReceiver$1;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    iget-object v2, v1, Lcom/htc/video/HdmiPlugReceiver;->mCallback:Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;

    iget-object v3, p0, Lcom/htc/video/HdmiPlugReceiver$1;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    const-string v1, "PLUG-IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v3, v1}, Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;->OnHdmiPlugReceiver(Lcom/htc/video/HdmiPlugReceiver;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
