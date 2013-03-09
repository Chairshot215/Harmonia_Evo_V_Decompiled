.class Lcom/android/server/WifiService$1;
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

    iput-object p1, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->isAirplaneModeOn()Z
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->persistWifiState(Z)V
    invoke-static {v5, v3}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;Z)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableMhsFeature:Z
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Z

    move-result v1

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->isAirplaneModeOn()Z
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    :goto_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    move v2, v3

    :goto_1
    if-eqz v2, :cond_5

    const-string v4, "WifiService"

    const-string v5, "enable hotspot : receive Intent.ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;)V
    invoke-static {v4, v3, v7}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;ZLandroid/net/wifi/WifiConfiguration;)V

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v3}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->isAirplaneModeOn()Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->notifyGetAirPlaneMode()V

    :cond_2
    return-void

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    const-string v3, "WifiService"

    const-string v5, "disable hotspot : receive Intent.ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v7, v4}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    iget-object v3, v3, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    iget-object v3, v3, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v5, -0x43

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v3, v4}, Lcom/android/server/WifiService;->access$902(Lcom/android/server/WifiService;Z)Z

    goto :goto_2
.end method
