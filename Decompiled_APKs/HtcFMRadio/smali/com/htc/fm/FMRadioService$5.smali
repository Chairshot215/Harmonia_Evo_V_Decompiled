.class Lcom/htc/fm/FMRadioService$5;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMRadioService;->registerAirplaneModeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 884
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, action:Ljava/lang/String;
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!! @@@@ onReceive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", use:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mServiceInUse:I
    invoke-static {v4}, Lcom/htc/fm/FMRadioService;->access$600(Lcom/htc/fm/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 888
    const-string v2, "FMRadioService"

    const-string v3, "!!!! @@@@ ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->isOnAirplane()Z
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$1500(Lcom/htc/fm/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 891
    const-string v2, "FMRadioService"

    const-string v3, "!!!! @@@@ AIRPLANE_MODE ON!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mServiceInUse:I
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$600(Lcom/htc/fm/FMRadioService;)I

    move-result v2

    if-gt v2, v5, :cond_0

    .line 894
    const-string v2, "FMRadioService"

    const-string v3, "!!!! @@@@ No user binded!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->turnOff()V

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    const-string v2, "FMRadioService"

    const-string v3, "!!!! @@@@ AIRPLANE_MODE OFF!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :cond_2
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_5

    .line 908
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][Headset] ACTION_HEADSET_UNPLUG"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 911
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v1

    .line 912
    .local v1, state:I
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService][Headset] state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UIExist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->UIExist:Z
    invoke-static {v4}, Lcom/htc/fm/FMRadioService;->access$1600(Lcom/htc/fm/FMRadioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    if-eq v1, v5, :cond_3

    if-ne v1, v7, :cond_4

    .line 915
    :cond_3
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][Headset] ACTION_HEADSET_UNPLUG -> fmTurnOff"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->fmTurnOff()V
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$1000(Lcom/htc/fm/FMRadioService;)V

    .line 928
    :goto_1
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService] [unregisterMediaButtonEventReceiver] when ACTION_HEADSET_UNPLUG"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->registerMediabutton(Z)V
    invoke-static {v2, v6}, Lcom/htc/fm/FMRadioService;->access$1700(Lcom/htc/fm/FMRadioService;Z)V

    .line 930
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->misFirsttimeHeadsetplug:Z
    invoke-static {v2, v6}, Lcom/htc/fm/FMRadioService;->access$1802(Lcom/htc/fm/FMRadioService;Z)Z

    goto :goto_0

    .line 924
    :cond_4
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][Headset] ACTION_HEADSET_UNPLUG - Do not need to fmTurnoff when FMRdio is not turnon "

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 935
    .end local v1           #state:I
    :cond_5
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 947
    :cond_6
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->getAudioPath()I

    move-result v2

    if-eq v2, v7, :cond_7

    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v2

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->isScanning()Z

    move-result v2

    if-nez v2, :cond_7

    .line 951
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->getAudioPath()I

    move-result v2

    iget-object v3, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v3}, Lcom/htc/fm/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 952
    const-string v2, "FMRadioService"

    const-string v3, "reset Audiopath for unplug-then-plug very soon case"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_7
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->misFirsttimeHeadsetplug:Z
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$1800(Lcom/htc/fm/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->IsUIExist()Z
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$1900(Lcom/htc/fm/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 958
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService] [registerMediaButtonEventReceiver] when ACTION_HEADSET_PLUGGED"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->registerMediabutton(Z)V
    invoke-static {v2, v5}, Lcom/htc/fm/FMRadioService;->access$1700(Lcom/htc/fm/FMRadioService;Z)V

    .line 961
    :cond_8
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$5;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->misFirsttimeHeadsetplug:Z
    invoke-static {v2, v6}, Lcom/htc/fm/FMRadioService;->access$1802(Lcom/htc/fm/FMRadioService;Z)Z

    .line 962
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][Headset] ACTION_HEADSET_PLUGGED"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
