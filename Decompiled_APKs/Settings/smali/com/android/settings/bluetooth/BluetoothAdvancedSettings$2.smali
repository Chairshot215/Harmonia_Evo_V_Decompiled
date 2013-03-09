.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #calls: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initPrefs()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$200(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method
