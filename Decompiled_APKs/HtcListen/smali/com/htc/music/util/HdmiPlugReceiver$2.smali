.class Lcom/htc/music/util/HdmiPlugReceiver$2;
.super Landroid/content/BroadcastReceiver;
.source "HdmiPlugReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HdmiPlugReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/HdmiPlugReceiver;


# direct methods
.method constructor <init>(Lcom/htc/music/util/HdmiPlugReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/HdmiPlugReceiver$2;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[HdmiPlugReceiver]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[1226] Received intent::action = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver$2;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    #getter for: Lcom/htc/music/util/HdmiPlugReceiver;->mPreState:I
    invoke-static {v3}, Lcom/htc/music/util/HdmiPlugReceiver;->access$000(Lcom/htc/music/util/HdmiPlugReceiver;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver$2;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    #setter for: Lcom/htc/music/util/HdmiPlugReceiver;->mPreState:I
    invoke-static {v3, v2}, Lcom/htc/music/util/HdmiPlugReceiver;->access$002(Lcom/htc/music/util/HdmiPlugReceiver;I)I

    and-int/lit16 v3, v2, 0x800

    if-nez v3, :cond_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit16 v3, v2, 0x800

    iget-object v4, p0, Lcom/htc/music/util/HdmiPlugReceiver$2;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    #getter for: Lcom/htc/music/util/HdmiPlugReceiver;->mPreState:I
    invoke-static {v4}, Lcom/htc/music/util/HdmiPlugReceiver;->access$000(Lcom/htc/music/util/HdmiPlugReceiver;)I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    if-ne v3, v4, :cond_2

    const-string v3, "[HdmiPlugReceiver]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hdmi BroadcastReceiver state is same with previsou"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver$2;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    #setter for: Lcom/htc/music/util/HdmiPlugReceiver;->mPreState:I
    invoke-static {v3, v2}, Lcom/htc/music/util/HdmiPlugReceiver;->access$002(Lcom/htc/music/util/HdmiPlugReceiver;I)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver$2;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    #setter for: Lcom/htc/music/util/HdmiPlugReceiver;->mPreState:I
    invoke-static {v3, v2}, Lcom/htc/music/util/HdmiPlugReceiver;->access$002(Lcom/htc/music/util/HdmiPlugReceiver;I)I

    :cond_3
    and-int/lit16 v3, v2, 0x800

    if-nez v3, :cond_4

    const-string v3, "[HdmiPlugReceiver]"

    const-string v4, "AudioSystem.DEVICE_OUT_HDMI_OUT [UNAVAILABLE]"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UNPLUG"

    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver$2;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    #getter for: Lcom/htc/music/util/HdmiPlugReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/util/HdmiPlugReceiver;->access$100(Lcom/htc/music/util/HdmiPlugReceiver;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "UNPLUG"

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_0

    const-string v3, "[HdmiPlugReceiver]"

    const-string v4, "AudioSystem.DEVICE_OUT_HDMI_OUT [AVAILABLE]"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver$2;->this$0:Lcom/htc/music/util/HdmiPlugReceiver;

    #getter for: Lcom/htc/music/util/HdmiPlugReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/util/HdmiPlugReceiver;->access$100(Lcom/htc/music/util/HdmiPlugReceiver;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "PLUG-IN"

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
