.class public Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPbapReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapReceiver"

.field private static final V:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v2, in:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 53
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v5, "action"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/4 v3, 0x1

    .line 57
    .local v3, startService:Z
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 59
    .local v4, state:I
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 62
    :cond_0
    const/4 v3, 0x0

    .line 71
    .end local v4           #state:I
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    :cond_2
    return-void

    .line 66
    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 67
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 68
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method
