.class Lcom/htc/android/psclient/UsbConnectionSettings$5;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/psclient/UsbConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/UsbConnectionSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$5;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 662
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, action:Ljava/lang/String;
    const-string v1, "INTENT_CLOSE_BY_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$5;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Close UI by timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$5;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-virtual {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    const-string v1, "INTENT_CLOSE_BY_USB_DISCONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$5;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Close UI by USB disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$5;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-virtual {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    goto :goto_0
.end method
