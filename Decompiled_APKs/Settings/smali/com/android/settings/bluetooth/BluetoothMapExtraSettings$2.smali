.class Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$2;
.super Ljava/lang/Object;
.source "BluetoothMapExtraSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    return-void
.end method
