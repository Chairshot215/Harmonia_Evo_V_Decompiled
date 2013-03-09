.class public Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;
.super Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.source "MusicWidget3D_4x1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;-><init>()V

    return-void
.end method

.method private initForConfigurationChange()V
    .locals 5

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    const-string v2, "[MusicWidget3D]"

    const-string v3, "initForConfigurationChange. Scene is null."

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initAlbumArt(Lcom/htc/fusion/fx/FxScene;)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initTrackInfo(Lcom/htc/fusion/fx/FxScene;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initButtonState(Lcom/htc/fusion/fx/FxScene;)V

    .line 80
    iget-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mIsErrorState:Z

    invoke-virtual {p0, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->moveButton(Z)V

    .line 81
    iget-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mIsErrorState:Z

    if-nez v2, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->goToMainPage()V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, errorString:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 86
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->goToNoMusicInfoPage()V

    goto :goto_0

    .line 88
    :cond_3
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected doConfigurationChange()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    const-string v1, "[MusicWidget3D]"

    const-string v2, "Scene is null."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initControls(Lcom/htc/fusion/fx/FxScene;)V

    .line 109
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initForConfigurationChange()V

    .line 111
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initHitbox(Lcom/htc/fusion/fx/FxScene;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initButtons(Lcom/htc/fusion/fx/FxScene;)V

    .line 113
    iput-boolean v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mIsNoMusic:Z

    .line 114
    const/4 v1, -0x2

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mCurAlbumID:I

    .line 116
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const-string v1, "[MusicWidget3D]"

    const-string v2, "onConfigurationChange, Service is connected, update music info."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->sendUpdateMusicInfoMessage(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v1, "[MusicWidget3D]"

    const-string v2, "onConfigurationChange(), Service is not connected, bind it."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected getLandScapeScenePath()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 58
    invoke-static {v0, v0}, Lcom/htc/MusicWidget3D/CustomizeSetting;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProtraitScenePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/CustomizeSetting;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    const-string v1, "[MusicWidget3D]"

    const-string v2, "Scene is null"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initControls(Lcom/htc/fusion/fx/FxScene;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initMainPage(Lcom/htc/fusion/fx/FxScene;)V

    .line 141
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initCommonResource()V

    .line 142
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initHitbox(Lcom/htc/fusion/fx/FxScene;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initButtons(Lcom/htc/fusion/fx/FxScene;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initAlbumArt(Lcom/htc/fusion/fx/FxScene;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initTrackInfo(Lcom/htc/fusion/fx/FxScene;)V

    .line 146
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initWorkerHandler()V

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mIsNoMusic:Z

    .line 148
    const/4 v1, -0x2

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mCurAlbumID:I

    goto :goto_0
.end method

.method protected initControls(Lcom/htc/fusion/fx/FxScene;)V
    .locals 4
    .parameter "scene"

    .prologue
    const/4 v3, 0x1

    .line 153
    sget-object v1, Lcom/htc/MusicWidget3D/Constants;->widget4x1ItemIdentifier:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 155
    .local v0, sceneChildren:[Lcom/htc/fusion/fx/FxObject;
    if-nez v0, :cond_0

    .line 156
    const-string v1, "[MusicWidget3D]"

    const-string v2, "Cannot find children in 4x1 initControls"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 160
    :cond_0
    array-length v1, v0

    sget-object v2, Lcom/htc/MusicWidget3D/Constants;->widget4x1ItemIdentifier:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 161
    const-string v1, "[MusicWidget3D]"

    const-string v2, "The count of sceneChildren is diffrenet from widget4x1ItemIdentifier"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_TiltAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 166
    aget-object v1, v0, v3

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 167
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 168
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 169
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 170
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 171
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 172
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 173
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_TiltMusic:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 174
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 175
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 176
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mPluginIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 177
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mAlbumArt01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 178
    const/16 v1, 0xd

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mAlbumArtReflection01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 179
    const/16 v1, 0xe

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_Marquee:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 180
    const/16 v1, 0xf

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 181
    const/16 v1, 0x10

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 182
    const/16 v1, 0x11

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 183
    const/16 v1, 0x12

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mAlbumArt02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 184
    const/16 v1, 0x13

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mAlbumArtReflection02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 185
    const/16 v1, 0x14

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 187
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initMarqueeControls()V

    .line 192
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->initTiltFrame()V

    goto/16 :goto_0
.end method

.method protected initTrackInfo(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "song"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mCurrTrackName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mCurrTrackName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->updateTrackName(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->setTrackName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected moveButton(Z)V
    .locals 5
    .parameter "isNoMusic"

    .prologue
    const/4 v4, 0x1

    .line 221
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 222
    const-string v2, "[MusicWidget3D]"

    const-string v3, "mContext is null in moveButton"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v2, :cond_2

    .line 227
    const-string v2, "[MusicWidget3D]"

    const-string v3, "m_tl_MusicButton is null in moveButton"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 233
    .local v0, diff:I
    if-ne p1, v4, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->getBtnInCenter()Z

    move-result v2

    if-eq v2, v4, :cond_0

    .line 235
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->getBtnInCenter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "Right"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 241
    .local v1, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v1, :cond_0

    .line 242
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v3, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "saved"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onDestroy()V

    .line 50
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onPause()V

    .line 39
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onResume()V

    .line 34
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onStart()V

    .line 30
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->onStop()V

    .line 44
    return-void
.end method

.method protected queueNextRefresh(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 213
    return-void
.end method

.method protected refreshNow()J
    .locals 2

    .prologue
    .line 217
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected setErrorString(Ljava/lang/String;)V
    .locals 3
    .parameter "errorText"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x1;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method
