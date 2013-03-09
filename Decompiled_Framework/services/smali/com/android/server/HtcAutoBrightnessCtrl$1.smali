.class Lcom/android/server/HtcAutoBrightnessCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getCurrentScreenBrightness()I
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v8

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mOriginalLcdValue:I
    invoke-static {v7, v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$202(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7, v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$102(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    const-string v7, "entering.screen.brightness"

    const/16 v8, 0x7f

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I
    invoke-static {v7, v2}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    move-result v2

    const-string v7, "backlight.delay"

    const/16 v8, 0x14

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v7, 0x5

    if-ge v1, v7, :cond_3

    move v5, v6

    :cond_3
    if-eqz v5, :cond_6

    :try_start_0
    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I
    invoke-static {v7, v2}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$502(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    :cond_5
    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/32 v8, 0xea60

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v7

    if-le v2, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getValidDelay(I)I
    invoke-static {v7, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    move-result v1

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mOriginalLcdValue:I
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v8

    invoke-virtual {v7, v2, v8, v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(III)V

    goto :goto_1

    :cond_7
    const-string v7, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "backlight.delay"

    const/16 v7, 0x28

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v6, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;I)V

    goto/16 :goto_0

    :cond_8
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->stopSmoothBacklight()V

    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v6, v5}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$102(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v6, v5}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;I)V

    goto/16 :goto_0

    :cond_9
    const-string v7, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z
    invoke-static {v7, v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1202(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    goto/16 :goto_0

    :cond_a
    const-string v6, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z
    invoke-static {v6, v5}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1202(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method
