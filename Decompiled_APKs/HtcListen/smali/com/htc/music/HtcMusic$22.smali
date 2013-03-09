.class Lcom/htc/music/HtcMusic$22;
.super Landroid/os/Handler;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$2700(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    :sswitch_1
    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v5, v2, v3}, Lcom/htc/music/HtcMusic;->access$2800(Lcom/htc/music/HtcMusic;J)V

    goto :goto_0

    :sswitch_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070057

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x20c013c

    new-instance v7, Lcom/htc/music/HtcMusic$22$1;

    invoke-direct {v7, p0}, Lcom/htc/music/HtcMusic$22$1;-><init>(Lcom/htc/music/HtcMusic$22;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTrackInfoP()V
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$2900(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    :sswitch_4
    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$3000(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$3000(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v1

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v1, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    const-string v0, "Original"

    :cond_1
    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v5}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v6, v6, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v5, v6, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v5, v4, :cond_2

    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I
    invoke-static {v5, v1}, Lcom/htc/music/HtcMusic;->access$3102(Lcom/htc/music/HtcMusic;I)I

    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/htc/music/HtcMusic;->access$3202(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    iget v6, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/HtcMusic;->showToast(I)V
    invoke-static {v5, v6}, Lcom/htc/music/HtcMusic;->access$3300(Lcom/htc/music/HtcMusic;I)V

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "[HtcMusic]"

    const-string v6, "msg.what = START_ENHANCER_SERVICE_ONSTART"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    const-string v6, "action_activity_on_start"

    #calls: Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "[HtcMusic]"

    const-string v6, "msg.what = SET_PLUGIN_LISTENER"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setPluginListListener()V
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v5, v5, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v5, v5, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v5}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->showContactRingtoneToast()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_0
        0x7 -> :sswitch_3
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0x33 -> :sswitch_4
        0x34 -> :sswitch_5
        0x66 -> :sswitch_8
    .end sparse-switch
.end method
