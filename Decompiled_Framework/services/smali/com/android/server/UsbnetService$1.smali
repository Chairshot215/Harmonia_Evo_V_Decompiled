.class Lcom/android/server/UsbnetService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbnetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UsbnetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UsbnetService;


# direct methods
.method constructor <init>(Lcom/android/server/UsbnetService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "UsbnetService"

    const-string v5, "BroadcastReceiver::onReceive+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "UsbnetService"

    const-string v5, "onReceive AIRPLANE_MODE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v4, "UsbnetService"

    const-string v5, "BroadcastReceiver::onReceive-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "UsbnetService"

    const-string v5, "onReceive SCREEN_ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #getter for: Lcom/android/server/UsbnetService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/UsbnetService;->access$100(Lcom/android/server/UsbnetService;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #getter for: Lcom/android/server/UsbnetService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/UsbnetService;->access$000(Lcom/android/server/UsbnetService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #setter for: Lcom/android/server/UsbnetService;->mDeviceIdle:Z
    invoke-static {v4, v8}, Lcom/android/server/UsbnetService;->access$202(Lcom/android/server/UsbnetService;Z)Z

    iget-object v4, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #setter for: Lcom/android/server/UsbnetService;->mScreenOff:Z
    invoke-static {v4, v8}, Lcom/android/server/UsbnetService;->access$302(Lcom/android/server/UsbnetService;Z)Z

    goto :goto_0

    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "UsbnetService"

    const-string v5, "onReceive SCREEN_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #setter for: Lcom/android/server/UsbnetService;->mScreenOff:Z
    invoke-static {v4, v9}, Lcom/android/server/UsbnetService;->access$302(Lcom/android/server/UsbnetService;Z)Z

    goto :goto_0

    :cond_2
    const-string v4, "com.android.server.UsbnetController.action.DEVICE_IDLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "UsbnetService"

    const-string v5, "onReceive DEVICE_IDLE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #setter for: Lcom/android/server/UsbnetService;->mDeviceIdle:Z
    invoke-static {v4, v9}, Lcom/android/server/UsbnetService;->access$202(Lcom/android/server/UsbnetService;Z)Z

    goto :goto_0

    :cond_3
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "UsbnetService"

    const-string v5, "onReceive BATTERY_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "UsbnetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " --> pluggedType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPluggedType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #getter for: Lcom/android/server/UsbnetService;->mPluggedType:I
    invoke-static {v6}, Lcom/android/server/UsbnetService;->access$400(Lcom/android/server/UsbnetService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mScreenOff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #getter for: Lcom/android/server/UsbnetService;->mScreenOff:Z
    invoke-static {v6}, Lcom/android/server/UsbnetService;->access$300(Lcom/android/server/UsbnetService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "UsbnetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive ACTION_USB_STATE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "connected"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v0, v1, v8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "connected"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v9

    iget-object v4, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #calls: Lcom/android/server/UsbnetService;->addToHtcUsbHistory(I[Ljava/lang/Object;)V
    invoke-static {v4, v8, v1}, Lcom/android/server/UsbnetService;->access$500(Lcom/android/server/UsbnetService;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "android.hardware.usb.action.USB_CONNECT2PC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "UsbnetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive ACTION_USB_CONNECT2PC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "connected"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v0, v1, v8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "connected"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v9

    iget-object v4, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #calls: Lcom/android/server/UsbnetService;->addToHtcUsbHistory(I[Ljava/lang/Object;)V
    invoke-static {v4, v9, v1}, Lcom/android/server/UsbnetService;->access$500(Lcom/android/server/UsbnetService;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "com.htc.net.usbnet.STATE_NOTIFY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "newNetworkState"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "UsbnetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NETWORK_STATE_CHANGED_NOTIFY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v10, :cond_7

    iget-object v4, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #calls: Lcom/android/server/UsbnetService;->SendNotifyPhaseIntent(Z)V
    invoke-static {v4, v9}, Lcom/android/server/UsbnetService;->access$600(Lcom/android/server/UsbnetService;Z)V

    :cond_7
    iget-object v4, p0, Lcom/android/server/UsbnetService$1;->this$0:Lcom/android/server/UsbnetService;

    #getter for: Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;
    invoke-static {v4}, Lcom/android/server/UsbnetService;->access$700(Lcom/android/server/UsbnetService;)Lcom/htc/net/usbnet/UsbnetStateTracker;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/net/usbnet/UsbnetStateTracker;->NetStateNotification(I)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "UsbnetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
