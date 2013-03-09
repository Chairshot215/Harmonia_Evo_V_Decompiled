.class Lcom/htc/android/psclient/SwitchUsbSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SwitchUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/psclient/SwitchUsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/SwitchUsbSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/SwitchUsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$2;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, action:Ljava/lang/String;
    const-string v1, "INTENT_USBCONNECTIONSETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "received intent: UsbConnectionSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$2;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-virtual {v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v1, "INTENT_CLOSE_BY_USB_DISCONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$2;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-virtual {v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    goto :goto_0
.end method
