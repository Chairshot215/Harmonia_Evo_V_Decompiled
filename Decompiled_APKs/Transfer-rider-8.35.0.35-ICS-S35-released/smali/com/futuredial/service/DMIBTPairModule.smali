.class public Lcom/futuredial/service/DMIBTPairModule;
.super Lcom/futuredial/service/DMIFunctionModule;
.source "DMIBTPairModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/service/DMIBTPairModule$1;,
        Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final BOND_SUCCESS:I = 0x0

.field public static DEFAULT_PAIRKEY:Ljava/lang/String; = null

.field public static final DMI_BT_PAIR_FAIL_ACTION:I = 0xc8

.field public static final DMI_BT_PAIR_FAIL_TIMEOUT_ACTION:I = 0xc9

.field public static final DMI_BT_PAIR_OK_ACTION:I = 0xca

.field public static final DMI_BT_PAIR_PIN_ACTION:I = 0xcb

.field static PAIR_FAIL_TIMEOUT_LIMIT:I


# instance fields
.field TAG:Ljava/lang/String;

.field m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

.field m_confirmKey:Ljava/lang/String;

.field m_failedCount:I

.field m_localBT:Landroid/bluetooth/BluetoothAdapter;

.field m_pairRec:Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;

.field m_targetDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "1234"

    sput-object v0, Lcom/futuredial/service/DMIBTPairModule;->DEFAULT_PAIRKEY:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    sput v0, Lcom/futuredial/service/DMIBTPairModule;->PAIR_FAIL_TIMEOUT_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/futuredial/service/DMIFunctionModule;-><init>()V

    .line 27
    const-string v0, "DMI Service - Pair"

    iput-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    .line 28
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    .line 30
    iput-object v1, p0, Lcom/futuredial/service/DMIBTPairModule;->m_targetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 31
    iput-object v1, p0, Lcom/futuredial/service/DMIBTPairModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    .line 32
    new-instance v0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;-><init>(Lcom/futuredial/service/DMIBTPairModule;Lcom/futuredial/service/DMIBTPairModule$1;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_pairRec:Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;

    .line 35
    sget-object v0, Lcom/futuredial/service/DMIBTPairModule;->DEFAULT_PAIRKEY:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_confirmKey:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_failedCount:I

    .line 16
    return-void
.end method


# virtual methods
.method public dmi_bt_cancel_pair()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    invoke-virtual {v0}, Lcom/futuredial/service/BTHideAPIRunner;->dmi_api_cancelBondProcess()Z

    move-result v0

    return v0
.end method

.method public dmi_bt_is_paired()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_targetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dmi_bt_pair()Z
    .locals 6

    .prologue
    .line 177
    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->m_targetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 179
    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v3}, Lcom/futuredial/ui/UIHandler;->pauseHandle()V

    .line 180
    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    const-string v4, "cancel pair first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/futuredial/service/DMIBTPairModule;->dmi_bt_cancel_pair()Z

    .line 182
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lcom/futuredial/service/DMIBTPairModule;->sleep_for_while(I)V

    .line 183
    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v3}, Lcom/futuredial/ui/UIHandler;->continueHandle()V

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    invoke-virtual {v3}, Lcom/futuredial/service/BTHideAPIRunner;->dmi_api_createBond()Z

    move-result v1

    .line 189
    .local v1, bOK:Z
    const/16 v3, 0x5dc

    invoke-virtual {p0, v3}, Lcom/futuredial/service/DMIBTPairModule;->sleep_for_while(I)V

    .line 190
    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->m_targetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    .line 192
    new-instance v0, Lcom/futuredial/service/LocalBTHideAPIRunner;

    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v0, v3}, Lcom/futuredial/service/LocalBTHideAPIRunner;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    .line 193
    .local v0, ar:Lcom/futuredial/service/LocalBTHideAPIRunner;
    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->m_targetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/futuredial/service/LocalBTHideAPIRunner;->dmi_isSspEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 194
    .local v2, bSSPSupport:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSP enabled?? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    const/16 v3, 0xcb

    iget-object v4, p0, Lcom/futuredial/service/DMIBTPairModule;->m_confirmKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/futuredial/service/DMIBTPairModule;->SendMsg(ILjava/lang/Object;)Z

    .line 198
    .end local v0           #ar:Lcom/futuredial/service/LocalBTHideAPIRunner;
    .end local v2           #bSSPSupport:Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method public dmi_bt_pair_target(Lcom/futuredial/service/DMIBTDevice;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 157
    iget-object v0, p1, Lcom/futuredial/service/DMIBTDevice;->m_device:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_targetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 158
    new-instance v0, Lcom/futuredial/service/BTHideAPIRunner;

    iget-object v1, p0, Lcom/futuredial/service/DMIBTPairModule;->m_targetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, v1}, Lcom/futuredial/service/BTHideAPIRunner;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    .line 159
    return-void
.end method

.method public dmi_bt_unpair()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    invoke-virtual {v0}, Lcom/futuredial/service/BTHideAPIRunner;->dmi_api_removeBond()Z

    move-result v0

    return v0
.end method

.method public finalize_module()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/futuredial/service/DMIBTPairModule;->m_pairRec:Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/futuredial/service/DMIBTPairModule;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    return-void
.end method

.method public init_module()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/futuredial/service/DMIBTPairModule;->m_pairRec:Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/futuredial/service/DMIBTPairModule;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method
