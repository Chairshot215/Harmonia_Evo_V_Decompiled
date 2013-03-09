.class Lcom/android/settings/PSReceiver$1;
.super Ljava/lang/Thread;
.source "PSReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PSReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PSReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/PSReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v5, v5, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    const-string v4, "usbnet"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/net/usbnet/IUsbnetController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v4

    #setter for: Lcom/android/settings/PSReceiver;->mService1:Lcom/htc/net/usbnet/IUsbnetController;
    invoke-static {v3, v4}, Lcom/android/settings/PSReceiver;->access$102(Lcom/android/settings/PSReceiver;Lcom/htc/net/usbnet/IUsbnetController;)Lcom/htc/net/usbnet/IUsbnetController;

    .line 99
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v4, "ps_enabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    .line 100
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v4, "ipt_connectpass"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/PSReceiver;->IPTConnPass:Z

    .line 101
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, v4, Lcom/android/settings/PSReceiver;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/PSReceiver;->ed:Landroid/content/SharedPreferences$Editor;

    .line 103
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.net.usbnet.MODE_NOTIFY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PSReceiver"

    const-string v4, "Receive MODE_NOTIFY, exit PSReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PSReceiver"

    const-string v4, "Receive ShutDown intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    sget-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->CloseConn()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$200(Lcom/android/settings/PSReceiver;)V

    .line 112
    :cond_4
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 113
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 115
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PSReceiver"

    const-string v4, "User ShutDown, set the correct notifications"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_5
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 121
    sget-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->CloseConn()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$200(Lcom/android/settings/PSReceiver;)V

    .line 122
    :cond_6
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 123
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 125
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PSReceiver"

    const-string v4, "User quick boot, set the correct notifications"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    :cond_7
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.hardware.usb.action.USB_CONNECT2PC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "connected"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 132
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USB Unplugged, current PSEnabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_8
    sput-boolean v6, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    .line 135
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->SetIPT0()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$400(Lcom/android/settings/PSReceiver;)V

    .line 136
    sget-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->CloseConn()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$200(Lcom/android/settings/PSReceiver;)V

    .line 137
    :cond_9
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 140
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USB Unplugged, Set PSEnabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    :cond_a
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.hardware.usb.action.USB_CONNECT2PC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "connected"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v7, :cond_b

    .line 147
    sput-boolean v7, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    .line 148
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USB Plugged, Set USBPlugged=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    :cond_b
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.android.stop_IPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 154
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive Stop IPT, Current PSEnabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_c
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->SetIPT0()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$400(Lcom/android/settings/PSReceiver;)V

    .line 156
    sget-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->CloseConn()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$200(Lcom/android/settings/PSReceiver;)V

    .line 157
    :cond_d
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 158
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->SetIPTNotification(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 163
    :cond_e
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.android.startIS.Fail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 164
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive Start IS fail, Current PSEnabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_f
    sget-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->CloseConn()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$200(Lcom/android/settings/PSReceiver;)V

    .line 166
    :cond_10
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 167
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->SetIPTNotification(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 174
    :cond_11
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.is.enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 175
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive Enable IS, Current PSEnabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_12
    sget-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-eqz v3, :cond_13

    .line 177
    sput-boolean v6, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    .line 178
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v4, "ps_enabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->CloseConn()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$200(Lcom/android/settings/PSReceiver;)V

    .line 181
    :cond_13
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 185
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.disable.ipt"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    :cond_14
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.android.start_IPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 192
    invoke-static {}, Lcom/android/settings/PSReceiver;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 193
    const-string v3, "PSReceiver"

    const-string v4, "UsbConnected status from file is true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sput-boolean v7, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    .line 201
    :goto_1
    sget-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-eq v3, v7, :cond_1

    .line 203
    sget-boolean v3, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    if-nez v3, :cond_16

    .line 204
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatch of StartPS, USBPlug was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 197
    :cond_15
    const-string v3, "PSReceiver"

    const-string v4, "UsbConnected status from file is false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sput-boolean v6, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    goto :goto_1

    .line 207
    :cond_16
    sput-boolean v7, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    .line 208
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v3, v3, Lcom/android/settings/PSReceiver;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v4, "ps_enabled"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 211
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    iget-object v4, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/PSReceiver;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 212
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PSEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_17
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "internet_ps"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 217
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "notshow_notice"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/PSReceiver;->Notshow_notice:Z

    .line 220
    invoke-static {v6}, Lcom/android/settings/PSReceiver;->access$502(Z)Z

    .line 221
    const/4 v3, 0x4

    sput v3, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    .line 224
    sget-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-ne v3, v7, :cond_1

    .line 227
    :try_start_0
    sget-boolean v3, Lcom/android/settings/PSReceiver;->Notshow_notice:Z

    if-nez v3, :cond_18

    .line 228
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.PSActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 229
    .local v1, mintent:Landroid/content/Intent;
    const/high16 v3, 0x1800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    const-string v3, "ps_dialog_code"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    .end local v1           #mintent:Landroid/content/Intent;
    :cond_18
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/PSReceiver;->access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/PSReceiver;->setNetSharing(ZLandroid/content/Context;)I

    .line 234
    invoke-static {}, Lcom/android/settings/PSReceiver;->access$600()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :try_start_1
    invoke-static {}, Lcom/android/settings/PSReceiver;->access$600()Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 236
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "PSReceiver"

    const-string v4, "Thethering unlocked, doing SetNDISData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_19
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->SetNDISData()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$700(Lcom/android/settings/PSReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #getter for: Lcom/android/settings/PSReceiver;->DBG:Z
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$000(Lcom/android/settings/PSReceiver;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1a
    iget-object v3, p0, Lcom/android/settings/PSReceiver$1;->this$0:Lcom/android/settings/PSReceiver;

    #calls: Lcom/android/settings/PSReceiver;->CloseConn()V
    invoke-static {v3}, Lcom/android/settings/PSReceiver;->access$200(Lcom/android/settings/PSReceiver;)V

    goto/16 :goto_0

    .line 236
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method
