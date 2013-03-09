.class Lcom/htc/music/HtcMusic$38;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createSoundEffectDialog()Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string v3, "SoundEffectDialog"

    const-string v4, "PositiveButton onClick +++"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    iget-boolean v3, v2, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v4}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/HtcMusic;->access$3202(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I
    invoke-static {v3, v1}, Lcom/htc/music/HtcMusic;->access$3102(Lcom/htc/music/HtcMusic;I)I

    :goto_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    const/4 v3, 0x1

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_2
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$3200(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    const-string v3, "SoundEffectDialog"

    const-string v4, "PositiveButton onClick ---"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_2
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v3, v1, :cond_4

    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    iget v5, v5, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v4, v4, v5

    #setter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/HtcMusic;->access$3202(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    #setter for: Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I
    invoke-static {v3, v4}, Lcom/htc/music/HtcMusic;->access$3102(Lcom/htc/music/HtcMusic;I)I

    goto :goto_1

    :cond_3
    const-string v3, "[HtcMusic]"

    const-string v4, "SoundEffectDialog, PositiveButton onClick, SoundEffectHelper.EqualizerStylesFromDevice is null!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v4}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/HtcMusic;->access$3202(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I
    invoke-static {v3, v1}, Lcom/htc/music/HtcMusic;->access$3102(Lcom/htc/music/HtcMusic;I)I

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_2
.end method
