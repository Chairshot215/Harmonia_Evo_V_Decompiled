.class Lcom/htc/fm/FMRadio$12;
.super Landroid/os/Handler;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1961
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2061
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1973
    :pswitch_1
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v4, :cond_1

    .line 1974
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v4, v8}, Lcom/htc/fm/FMController;->SetUIExist(Z)V

    .line 1975
    :cond_1
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    invoke-virtual {v4}, Lcom/htc/fm/FMRadio;->finish()V

    goto :goto_0

    .line 1990
    :pswitch_2
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[FMRadio] mActionHandler -> turnOn()"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[FMRadio] turnOn() - ACTION_TURN_ON!"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FMRadio] turnOn() state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v6}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/htc/fm/FMRadioService;->getQuickBootPoweroff()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1994
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #setter for: Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z
    invoke-static {v4, v8}, Lcom/htc/fm/FMRadio;->access$802(Lcom/htc/fm/FMRadio;Z)Z

    .line 1995
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->internalTurnOn()V
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$900(Lcom/htc/fm/FMRadio;)V

    goto :goto_0

    .line 1997
    :cond_2
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #setter for: Lcom/htc/fm/FMRadio;->mIfTurnOffFromUI:Z
    invoke-static {v4, v7}, Lcom/htc/fm/FMRadio;->access$1002(Lcom/htc/fm/FMRadio;Z)Z

    .line 1998
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[FMRadio] ACTION_QUICKBOOT_POWEROFF - ACTION_TURN_ON - Can not turn on"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2004
    :pswitch_3
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 2005
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #setter for: Lcom/htc/fm/FMRadio;->mIfTurnOffFromUI:Z
    invoke-static {v4, v7}, Lcom/htc/fm/FMRadio;->access$1002(Lcom/htc/fm/FMRadio;Z)Z

    .line 2006
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v4}, Lcom/htc/fm/FMController;->turnOff()Z

    goto/16 :goto_0

    .line 2011
    :pswitch_4
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[FMRadio] mActionHandler -> togglePower()"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    invoke-virtual {v4}, Lcom/htc/fm/FMRadio;->togglePower()V

    goto/16 :goto_0

    .line 2016
    :pswitch_5
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->seekUp()Z
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$500(Lcom/htc/fm/FMRadio;)Z

    goto/16 :goto_0

    .line 2019
    :pswitch_6
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->doSeekUp(Z)V
    invoke-static {v4, v7}, Lcom/htc/fm/FMRadio;->access$1100(Lcom/htc/fm/FMRadio;Z)V

    goto/16 :goto_0

    .line 2022
    :pswitch_7
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->doSeekDown(Z)V
    invoke-static {v4, v7}, Lcom/htc/fm/FMRadio;->access$1200(Lcom/htc/fm/FMRadio;Z)V

    goto/16 :goto_0

    .line 2025
    :pswitch_8
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->processOnScanFinished()V
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$1300(Lcom/htc/fm/FMRadio;)V

    goto/16 :goto_0

    .line 2028
    :pswitch_9
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$1400(Lcom/htc/fm/FMRadio;)Lcom/htc/fm/Preset;

    move-result-object v2

    .line 2029
    .local v2, preset:Lcom/htc/fm/Preset;
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V
    invoke-static {v4, v2, v7}, Lcom/htc/fm/FMRadio;->access$1500(Lcom/htc/fm/FMRadio;Lcom/htc/fm/Preset;Z)V

    goto/16 :goto_0

    .line 2034
    .end local v2           #preset:Lcom/htc/fm/Preset;
    :pswitch_a
    const-wide/16 v0, 0x0

    .line 2037
    .local v0, lastTimeStampOfUIStartingAdjust:J
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[FMRadio] ACION_DO_UPDATE_FREROLLBAR"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/fm/RotateSeed;

    .line 2041
    .local v3, seed:Lcom/htc/fm/RotateSeed;
    if-eqz v3, :cond_0

    .line 2044
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->TimeStampOfUIStartingAdjust:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$1600(Lcom/htc/fm/FMRadio;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 2045
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->TimeStampOfUIStartingAdjust:J
    invoke-static {v4}, Lcom/htc/fm/FMRadio;->access$1600(Lcom/htc/fm/FMRadio;)J

    move-result-wide v0

    .line 2047
    :cond_3
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seed.TimeStampOfUIStartingAdjust:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-wide v4, v3, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_0

    .line 2050
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFreq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v6, v6, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v6, v6, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FreRollBra freq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v6, v6, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget v6, v6, Lcom/htc/fm/FreqRollBar;->mfreq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    iget-wide v5, v3, Lcom/htc/fm/RotateSeed;->TimeStampOfUIStartingAdjust:J

    #setter for: Lcom/htc/fm/FMRadio;->TimeStampOfUIStartingAdjust:J
    invoke-static {v4, v5, v6}, Lcom/htc/fm/FMRadio;->access$1602(Lcom/htc/fm/FMRadio;J)J

    .line 2052
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget v5, v3, Lcom/htc/fm/RotateSeed;->Switcher:I

    iget v6, v3, Lcom/htc/fm/RotateSeed;->number:I

    iget v7, v3, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    iget v8, v3, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/fm/FreqRollBar;->RotateSwitcher(IIII)Z

    .line 2053
    iget-object v4, p0, Lcom/htc/fm/FMRadio$12;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v4, v4, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    iget v5, v3, Lcom/htc/fm/RotateSeed;->Switcher:I

    iget v6, v3, Lcom/htc/fm/RotateSeed;->number:I

    iget v7, v3, Lcom/htc/fm/RotateSeed;->RotateDuration:I

    iget v8, v3, Lcom/htc/fm/RotateSeed;->InterpolatorType:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/fm/MirrorFace;->RotateSwitcher(IIII)Z

    goto/16 :goto_0

    .line 1961
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
    .end packed-switch
.end method
