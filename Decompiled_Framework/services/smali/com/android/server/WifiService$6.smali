.class Lcom/android/server/WifiService$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "WifiService"

    const-string v2, "Quickboot - Intent received: ACTION_QUICKBOOT_POWERON"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiService"

    const-string v2, "Quickboot - Wifi starting up interrupted, need to restart it"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quickboot - Wait for the end of interrupted wifi starting up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v1, "WifiService"

    const-string v2, "Quickboot - Wifi enabled, restart wifi again"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v1, v4}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    iget-object v1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z
    invoke-static {v1, v4}, Lcom/android/server/WifiService;->access$2902(Lcom/android/server/WifiService;Z)Z

    iget-object v1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method
