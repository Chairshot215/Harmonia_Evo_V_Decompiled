.class Lcom/android/settings/bluetooth/BluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 66
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 77
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v2, "android.app.admin.intent.ALLOW_BT_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string v2, "BluetoothEnabler"

    const-string v3, "onReceive INTENT_ALLOW_BT_CHANGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    #calls: Lcom/android/settings/bluetooth/BluetoothEnabler;->checkBTPolicy()V
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$000(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$100(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "bluetooth"

    invoke-static {v2, v3}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$200(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/htc/widget/HtcToggleButton;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$200(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/htc/widget/HtcToggleButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0
.end method
