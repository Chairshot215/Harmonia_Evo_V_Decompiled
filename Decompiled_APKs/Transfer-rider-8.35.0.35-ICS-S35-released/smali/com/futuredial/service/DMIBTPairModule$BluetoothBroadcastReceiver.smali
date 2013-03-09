.class Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMIBTPairModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIBTPairModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# static fields
.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field public static final EXTRA_PAIRINGKEY:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_KEY"

.field public static final EXTRA_PAIRING_VARIANT:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_VARIANT"

.field public static final EXTRA_PASSKEY:Ljava/lang/String; = "android.bluetooth.device.extra.PASSKEY"


# instance fields
.field final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I

.field final synthetic this$0:Lcom/futuredial/service/DMIBTPairModule;


# direct methods
.method private constructor <init>(Lcom/futuredial/service/DMIBTPairModule;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->PAIRING_VARIANT_PASSKEY_CONFIRMATION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/service/DMIBTPairModule;Lcom/futuredial/service/DMIBTPairModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;-><init>(Lcom/futuredial/service/DMIBTPairModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "coming action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    if-nez v8, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v8, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 77
    const-string v8, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 78
    .local v4, mType:I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_2

    .line 80
    const-string v8, "android.bluetooth.device.extra.PASSKEY"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 81
    .local v5, passkey:I
    const/high16 v8, -0x8000

    if-eq v5, v8, :cond_3

    .line 83
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    const-string v9, "%06d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/futuredial/service/DMIBTPairModule;->m_confirmKey:Ljava/lang/String;

    .line 84
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get confirm key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v10, v10, Lcom/futuredial/service/DMIBTPairModule;->m_confirmKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v5           #passkey:I
    :cond_2
    :goto_1
    const-string v8, "1234"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 98
    .local v6, pinBytes:[B
    :try_start_0
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->m_confirmKey:Ljava/lang/String;

    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 102
    :goto_2
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    const/16 v9, 0xcb

    iget-object v10, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v10, v10, Lcom/futuredial/service/DMIBTPairModule;->m_confirmKey:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/futuredial/service/DMIBTPairModule;->SendMsg(ILjava/lang/Object;)Z

    .line 103
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    invoke-virtual {v8, v6}, Lcom/futuredial/service/BTHideAPIRunner;->dmi_api_setPin([B)Z

    goto :goto_0

    .line 88
    .end local v6           #pinBytes:[B
    .restart local v5       #passkey:I
    :cond_3
    const-string v8, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 89
    const/high16 v8, -0x8000

    if-eq v5, v8, :cond_2

    .line 91
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    const-string v9, "%06d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/futuredial/service/DMIBTPairModule;->m_confirmKey:Ljava/lang/String;

    .line 92
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get confirm key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v10, v10, Lcom/futuredial/service/DMIBTPairModule;->m_confirmKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    .end local v5           #passkey:I
    .restart local v6       #pinBytes:[B
    :catch_0
    move-exception v2

    .line 100
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 105
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .end local v4           #mType:I
    .end local v6           #pinBytes:[B
    :cond_4
    const-string v8, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 108
    const-string v8, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 109
    .local v7, prebondState:I
    const-string v8, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 110
    .local v1, bondState:I
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onBoundStateChange"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - > "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v8, 0xa

    if-ne v1, v8, :cond_6

    .line 114
    const-string v8, "android.bluetooth.device.extra.REASON"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 115
    .local v3, failreason:I
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pair fail:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz v3, :cond_0

    .line 119
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget v9, v8, Lcom/futuredial/service/DMIBTPairModule;->m_failedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/futuredial/service/DMIBTPairModule;->m_failedCount:I

    .line 120
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget v8, v8, Lcom/futuredial/service/DMIBTPairModule;->m_failedCount:I

    sget v9, Lcom/futuredial/service/DMIBTPairModule;->PAIR_FAIL_TIMEOUT_LIMIT:I

    if-lt v8, v9, :cond_5

    .line 121
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    const/16 v9, 0xc9

    invoke-virtual {v8, v9}, Lcom/futuredial/service/DMIBTPairModule;->SendMsg(I)Z

    goto/16 :goto_0

    .line 123
    :cond_5
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Lcom/futuredial/service/DMIBTPairModule;->SendMsg(I)Z

    goto/16 :goto_0

    .line 130
    .end local v3           #failreason:I
    :cond_6
    const/16 v8, 0xc

    if-ne v1, v8, :cond_0

    .line 132
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    const-string v9, "pair successful"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Lcom/futuredial/service/DMIBTPairModule;->sleep_for_while(I)V

    .line 134
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    const/16 v9, 0xca

    invoke-virtual {v8, v9}, Lcom/futuredial/service/DMIBTPairModule;->SendMsg(I)Z

    goto/16 :goto_0

    .line 138
    .end local v1           #bondState:I
    .end local v7           #prebondState:I
    :cond_7
    const-string v8, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 141
    iget-object v8, p0, Lcom/futuredial/service/DMIBTPairModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIBTPairModule;

    iget-object v8, v8, Lcom/futuredial/service/DMIBTPairModule;->TAG:Ljava/lang/String;

    const-string v9, "pairing cancel"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    :cond_8
    const-string v8, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_0
.end method
