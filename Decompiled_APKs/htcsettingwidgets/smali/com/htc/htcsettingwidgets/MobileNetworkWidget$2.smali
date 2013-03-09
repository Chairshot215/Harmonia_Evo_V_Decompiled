.class Lcom/htc/htcsettingwidgets/MobileNetworkWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/MobileNetworkWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$2;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 328
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$2;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mReceivehandler:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$900(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 330
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 335
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$2;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mReceivehandler:Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$900(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 333
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
