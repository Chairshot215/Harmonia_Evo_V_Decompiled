.class Lcom/android/settings/IPTEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "IPTEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IPTEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IPTEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/IPTEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x1

    const-wide/16 v5, 0x1f4

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.usb.action.USB_CONNECT2PC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "connected"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 116
    .local v1, usbConnected:Z
    if-eqz v1, :cond_5

    .line 117
    sput-boolean v4, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    .line 118
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #usbConnected:Z
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.is.enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->DBG:Z
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$200(Lcom/android/settings/IPTEnabler;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PSReceiver"

    const-string v3, "Received ISEnabled from IS"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.ipt.enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->DBG:Z
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$200(Lcom/android/settings/IPTEnabler;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PSReceiver"

    const-string v3, "Received IPTPass from PSReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.ipt.disabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 139
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->DBG:Z
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$200(Lcom/android/settings/IPTEnabler;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PSReceiver"

    const-string v3, "Received IPTDisabled from PSReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.disable.ipt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 144
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->DBG:Z
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$200(Lcom/android/settings/IPTEnabler;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "PSReceiver"

    const-string v3, "Received DisabledIPT from PSReceiver for ISEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_4
    return-void

    .line 121
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v1       #usbConnected:Z
    :cond_5
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    .line 122
    iget-object v2, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IPTEnabler$2;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/IPTEnabler;->access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
