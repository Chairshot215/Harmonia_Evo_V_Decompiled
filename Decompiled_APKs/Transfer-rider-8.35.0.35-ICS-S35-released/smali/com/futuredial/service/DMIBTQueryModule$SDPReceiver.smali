.class Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMIBTQueryModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIBTQueryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDPReceiver"
.end annotation


# static fields
.field public static final ACTION_SDP_COMING:Ljava/lang/String; = "android.bleutooth.device.action.UUID"

.field public static final ACTION_SDP_COMING1:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final EXTRA_SDP_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"


# instance fields
.field final synthetic this$0:Lcom/futuredial/service/DMIBTQueryModule;


# direct methods
.method private constructor <init>(Lcom/futuredial/service/DMIBTQueryModule;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/service/DMIBTQueryModule;Lcom/futuredial/service/DMIBTQueryModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;-><init>(Lcom/futuredial/service/DMIBTQueryModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "coming action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v5, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTQueryModule;->m_target:Lcom/futuredial/service/DMIBTDevice;

    if-nez v5, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v5, "android.bleutooth.device.action.UUID"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    :cond_2
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 96
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    .line 98
    iget-object v5, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTQueryModule;->m_target:Lcom/futuredial/service/DMIBTDevice;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTDevice;->m_device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const-string v5, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 101
    .local v3, uuids:[Landroid/os/Parcelable;
    if-eqz v3, :cond_3

    .line 103
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 104
    iget-object v5, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTQueryModule;->m_uuids:Ljava/util/Set;

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    .end local v2           #i:I
    :cond_3
    iget-object v5, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTQueryModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    invoke-virtual {v5}, Lcom/futuredial/service/BTHideAPIRunner;->dmi_api_getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 107
    .local v4, uuids1:[Landroid/os/Parcelable;
    if-eqz v4, :cond_5

    .line 109
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 110
    iget-object v5, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTQueryModule;->m_uuids:Ljava/util/Set;

    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 111
    :cond_4
    iget-object v5, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v5, v5, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getuuid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTQueryModule;->m_uuids:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v2           #i:I
    :cond_5
    iget-object v5, p0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;->this$0:Lcom/futuredial/service/DMIBTQueryModule;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/futuredial/service/DMIBTQueryModule;->m_bGotIt:Z

    goto/16 :goto_0
.end method
