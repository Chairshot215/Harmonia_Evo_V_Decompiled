.class Lcom/htc/video/ViewVideo$12;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 10
    .parameter "mp"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1100
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    const/4 v5, -0x3

    invoke-static {v4, v5}, Lcom/htc/video/ViewVideo;->access$3572(Lcom/htc/video/ViewVideo;I)I

    .line 1103
    sget-boolean v4, Lcom/htc/video/Common/Constants;->IS_SOUND_EFFECT_VIDEO_SUPPORT:Z

    if-eqz v4, :cond_e

    .line 1105
    const/4 v2, 0x0

    .line 1107
    .local v2, tmpSpeakerEffect:I
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1109
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->closeVideoSoundEffectStream()V
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$3600(Lcom/htc/video/ViewVideo;)V

    .line 1111
    :cond_0
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    new-instance v5, Lcom/htc/video/VideoSoundEffectHelper;

    iget-object v6, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/htc/video/VideoSoundEffectHelper;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v4, v5}, Lcom/htc/video/ViewVideo;->access$802(Lcom/htc/video/ViewVideo;Lcom/htc/video/VideoSoundEffectHelper;)Lcom/htc/video/VideoSoundEffectHelper;

    .line 1112
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v5, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v5}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/video/VideoSoundEffectHelper;->getStoredCodec()I

    move-result v5

    #setter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v4, v5}, Lcom/htc/video/ViewVideo;->access$002(Lcom/htc/video/ViewVideo;I)I

    .line 1113
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v5, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v5}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/video/VideoSoundEffectHelper;->getStoredBeatsCodec()I

    move-result v5

    #setter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v4, v5}, Lcom/htc/video/ViewVideo;->access$2002(Lcom/htc/video/ViewVideo;I)I

    .line 1115
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1117
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1119
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/VideoSoundEffectHelper;->refreshEffectList()V

    .line 1120
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->updateSoundEffectDialog()V
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1900(Lcom/htc/video/ViewVideo;)V

    .line 1124
    :cond_1
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v6, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/video/VideoSoundEffectHelper;->isEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1126
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1132
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v4, v9}, Lcom/htc/video/ViewVideo;->access$002(Lcom/htc/video/ViewVideo;I)I

    .line 1136
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v6, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$2000(Lcom/htc/video/ViewVideo;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/video/VideoSoundEffectHelper;->isEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1138
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1139
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1141
    :cond_3
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1142
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v4, v8}, Lcom/htc/video/ViewVideo;->access$2002(Lcom/htc/video/ViewVideo;I)I

    .line 1157
    :cond_4
    :goto_1
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1159
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1161
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mBeatsHeadSetPlugged:Z
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1500(Lcom/htc/video/ViewVideo;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mNonBeatsHeadSetPlugged:Z
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1600(Lcom/htc/video/ViewVideo;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1163
    :cond_6
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1165
    :cond_7
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1171
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v4, v9}, Lcom/htc/video/ViewVideo;->access$002(Lcom/htc/video/ViewVideo;I)I

    .line 1172
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2000(Lcom/htc/video/ViewVideo;)I

    move-result v2

    .line 1188
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v5, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v5}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v5

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v4, v5, v9, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    .line 1194
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_9
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsOrHeadSetPlugged()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1206
    :cond_c
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v4, v2}, Lcom/htc/video/ViewVideo;->access$2002(Lcom/htc/video/ViewVideo;I)I

    .line 1208
    :cond_d
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    new-instance v5, Lcom/htc/video/HeadSetHelper;

    invoke-direct {v5}, Lcom/htc/video/HeadSetHelper;-><init>()V

    #setter for: Lcom/htc/video/ViewVideo;->mHeadSetHelper:Lcom/htc/video/HeadSetHelper;
    invoke-static {v4, v5}, Lcom/htc/video/ViewVideo;->access$3702(Lcom/htc/video/ViewVideo;Lcom/htc/video/HeadSetHelper;)Lcom/htc/video/HeadSetHelper;

    .line 1209
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHeadSetHelper:Lcom/htc/video/HeadSetHelper;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$3700(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HeadSetHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v6, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMonitorHeadSetStatus:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$3800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/video/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;)V

    .line 1212
    .end local v2           #tmpSpeakerEffect:I
    :cond_e
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 1213
    .local v1, height:I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    .line 1215
    .local v3, width:I
    const-string v4, "ViewVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onCreate] OnPreparedListener width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->videoOriAdj(II)V
    invoke-static {v4, v3, v1}, Lcom/htc/video/ViewVideo;->access$3400(Lcom/htc/video/ViewVideo;II)V

    .line 1222
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mDrmFirstLaunch:Z
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$3900(Lcom/htc/video/ViewVideo;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1224
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->consumeVideoRight()V
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$4000(Lcom/htc/video/ViewVideo;)V

    .line 1227
    :cond_f
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mPausePlayReason:I
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$3500(Lcom/htc/video/ViewVideo;)I

    move-result v4

    if-nez v4, :cond_19

    .line 1234
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$700(Lcom/htc/video/ViewVideo;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1236
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$700(Lcom/htc/video/ViewVideo;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    :cond_10
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$700(Lcom/htc/video/ViewVideo;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1239
    const-string v4, "ViewVideo"

    const-string v5, "[onPrepared]: PAUSE_PLAY_REASON_NONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_11
    :goto_3
    :try_start_0
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mLoadingDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$4100(Lcom/htc/video/ViewVideo;)Landroid/app/Dialog;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1254
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/video/ViewVideo;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    :goto_4
    return-void

    .line 1134
    .end local v1           #height:I
    .end local v3           #width:I
    .restart local v2       #tmpSpeakerEffect:I
    :cond_12
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v4, v8}, Lcom/htc/video/ViewVideo;->access$002(Lcom/htc/video/ViewVideo;I)I

    goto/16 :goto_0

    .line 1143
    :cond_13
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1144
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v4, v9}, Lcom/htc/video/ViewVideo;->access$2002(Lcom/htc/video/ViewVideo;I)I

    goto/16 :goto_1

    .line 1174
    :cond_14
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsOrHeadSetPlugged()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1179
    :cond_17
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v4, v8}, Lcom/htc/video/ViewVideo;->access$002(Lcom/htc/video/ViewVideo;I)I

    .line 1180
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2000(Lcom/htc/video/ViewVideo;)I

    move-result v2

    goto/16 :goto_2

    .line 1184
    :cond_18
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v5, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v5}, Lcom/htc/video/ViewVideo;->access$2000(Lcom/htc/video/ViewVideo;)I

    move-result v5

    #setter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v4, v5}, Lcom/htc/video/ViewVideo;->access$002(Lcom/htc/video/ViewVideo;I)I

    goto/16 :goto_2

    .line 1241
    .end local v2           #tmpSpeakerEffect:I
    .restart local v1       #height:I
    .restart local v3       #width:I
    :cond_19
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mPausePlayReason:I
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$3500(Lcom/htc/video/ViewVideo;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_11

    .line 1243
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v5}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/video/HtcVideoView;->setMediaController(Lcom/htc/video/HtcMediaController;)V

    .line 1244
    iget-object v4, p0, Lcom/htc/video/ViewVideo$12;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/htc/video/ViewVideo$VideoMediaController;->show(I)V

    .line 1245
    const-string v4, "ViewVideo"

    const-string v5, "[onPrepared]: PAUSE_PLAY_REASON_USERPAUSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1256
    :catch_0
    move-exception v0

    .line 1258
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ViewVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no dialog can be removed at onPrepared: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
