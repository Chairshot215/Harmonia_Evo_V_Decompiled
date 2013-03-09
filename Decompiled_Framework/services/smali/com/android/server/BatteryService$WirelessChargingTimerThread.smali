.class Lcom/android/server/BatteryService$WirelessChargingTimerThread;
.super Ljava/lang/Thread;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WirelessChargingTimerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0xfa0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.batteryservice.action.SHOW_WIRELESS_CHARGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isCancel"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->isInterruptShowing:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isInterruptShowing"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->isShowingInPopingDialog:Z
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;Z)Z

    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->isInterruptShowing:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mWirelessChargerStatus:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)I

    move-result v3

    #calls: Lcom/android/server/BatteryService;->sendShowWirelessChargingIntent(I)V
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;I)V

    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->isInterruptShowing:Z
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
