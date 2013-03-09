.class final Lcom/coremobility/integration/app/a;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    const/16 v1, 0x7a

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x75

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x76

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
