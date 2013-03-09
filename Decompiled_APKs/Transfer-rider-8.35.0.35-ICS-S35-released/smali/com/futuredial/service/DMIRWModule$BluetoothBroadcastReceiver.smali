.class Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMIRWModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIRWModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/service/DMIRWModule;


# direct methods
.method private constructor <init>(Lcom/futuredial/service/DMIRWModule;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIRWModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/service/DMIRWModule;Lcom/futuredial/service/DMIRWModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;-><init>(Lcom/futuredial/service/DMIRWModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIRWModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIRWModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coming action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;->this$0:Lcom/futuredial/service/DMIRWModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIRWModule;->TAG:Ljava/lang/String;

    const-string v2, "target disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    return-void
.end method
