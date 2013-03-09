.class Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapExtraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;
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
    .line 68
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    const-string v3, "BluetoothMapExtraSettings"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v3, "bt_svc_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, state:I
    const-string v3, "bt_svc_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, svcName:Ljava/lang/String;
    const-string v3, "bluetooth_map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 77
    packed-switch v1, :pswitch_data_0

    .line 103
    :cond_0
    return-void

    .line 79
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 81
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_0

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0           #i:I
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 92
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_0

    .line 94
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
