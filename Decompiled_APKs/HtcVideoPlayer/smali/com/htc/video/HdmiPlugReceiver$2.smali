.class Lcom/htc/video/HdmiPlugReceiver$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 58
    iput-object p1, p0, Lcom/htc/video/HdmiPlugReceiver$2;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v5, 0x5

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, action:Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 71
    .local v2, state:I
    iget-object v3, p0, Lcom/htc/video/HdmiPlugReceiver$2;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    #getter for: Lcom/htc/video/HdmiPlugReceiver;->mPreState:I
    invoke-static {v3}, Lcom/htc/video/HdmiPlugReceiver;->access$000(Lcom/htc/video/HdmiPlugReceiver;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 73
    iget-object v3, p0, Lcom/htc/video/HdmiPlugReceiver$2;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    #setter for: Lcom/htc/video/HdmiPlugReceiver;->mPreState:I
    invoke-static {v3, v2}, Lcom/htc/video/HdmiPlugReceiver;->access$002(Lcom/htc/video/HdmiPlugReceiver;I)I

    .line 74
    and-int/lit16 v3, v2, 0x800

    if-nez v3, :cond_3

    .line 114
    .end local v2           #state:I
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v2       #state:I
    :cond_1
    and-int/lit16 v3, v2, 0x800

    iget-object v4, p0, Lcom/htc/video/HdmiPlugReceiver$2;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    #getter for: Lcom/htc/video/HdmiPlugReceiver;->mPreState:I
    invoke-static {v4}, Lcom/htc/video/HdmiPlugReceiver;->access$000(Lcom/htc/video/HdmiPlugReceiver;)I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    if-ne v3, v4, :cond_2

    .line 85
    iget-object v3, p0, Lcom/htc/video/HdmiPlugReceiver$2;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    #setter for: Lcom/htc/video/HdmiPlugReceiver;->mPreState:I
    invoke-static {v3, v2}, Lcom/htc/video/HdmiPlugReceiver;->access$002(Lcom/htc/video/HdmiPlugReceiver;I)I

    goto :goto_0

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/htc/video/HdmiPlugReceiver$2;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    #setter for: Lcom/htc/video/HdmiPlugReceiver;->mPreState:I
    invoke-static {v3, v2}, Lcom/htc/video/HdmiPlugReceiver;->access$002(Lcom/htc/video/HdmiPlugReceiver;I)I

    .line 94
    :cond_3
    and-int/lit16 v3, v2, 0x800

    if-nez v3, :cond_4

    .line 100
    const-string v0, "UNPLUG"

    .line 102
    .local v0, HdmiPluginStateValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/video/HdmiPlugReceiver$2;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    #getter for: Lcom/htc/video/HdmiPlugReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/video/HdmiPlugReceiver;->access$100(Lcom/htc/video/HdmiPlugReceiver;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "UNPLUG"

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 105
    .end local v0           #HdmiPluginStateValue:Ljava/lang/String;
    :cond_4
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/htc/video/HdmiPlugReceiver$2;->this$0:Lcom/htc/video/HdmiPlugReceiver;

    #getter for: Lcom/htc/video/HdmiPlugReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/video/HdmiPlugReceiver;->access$100(Lcom/htc/video/HdmiPlugReceiver;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "PLUG-IN"

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
