.class public Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;
.super Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
.source "HandwriteLSIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_CLASS:Ljava/lang/String; = "[HandwriteLSIP] "

.field private static final LOG_TAG:Ljava/lang/String; = "HandwriteLSIP"

.field private static final LOG_TITLE:Ljava/lang/String; = "HandwritingLog"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v4, 0x800

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v2, "Handwriting SIP"

    iput-object v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v2, 0x3

    iput v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 53
    iput v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mSipKeyBase:I

    .line 54
    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mEngSipID:I

    .line 57
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 58
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mSymSipID:I

    .line 63
    :goto_0
    const v0, 0x7f050013

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->m_nKeyboard:I

    .line 64
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Transparent_HWR:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->m_nPanel:I

    .line 65
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->m_bIsPanelEmbeddedInSip:Z

    .line 68
    iput v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mSIP_ID:I

    .line 69
    const/high16 v0, 0x900

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mSIP_LP_ID:I

    .line 72
    return-void

    .line 60
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mSymSipID:I

    goto :goto_0

    .line 64
    :cond_1
    const v0, 0x7f02003c

    goto :goto_1
.end method

.method private onInterceptClick()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 84
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v3, 0x710

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 86
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mSymSipID:I

    invoke-virtual {v1, v3, v2}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 87
    const/4 v1, 0x1

    .line 90
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->hideSwitchMenuInner()V

    .line 177
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->closing()V

    .line 178
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 180
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 185
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->EnableStatusBarExpand()V

    .line 198
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->finishInput()V

    .line 199
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 76
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 77
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 209
    return-void
.end method

.method public onClick(III)V
    .locals 4
    .parameter "btnIdx"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v3, 0x710

    .line 95
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->onInterceptClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 99
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 138
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->onClick(III)V

    goto :goto_0

    .line 101
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mConfigData:Lcom/htc/android/htcime/util/ConfigData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/util/ConfigData;->isCurrentQWERTYSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mEngSipID:I

    goto :goto_1

    .line 104
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mEngSipID:I

    goto :goto_1

    .line 109
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->sendKeyEvent(I)V

    .line 110
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->launchSettings()V

    goto :goto_1

    .line 114
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->sendKeyEvent(I)V

    .line 119
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_1

    .line 122
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->sendKeyEvent(I)V

    .line 123
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mLongPress:Z

    if-eqz v1, :cond_3

    .line 124
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->invokeVoiceInput()V

    goto :goto_1

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_1

    .line 133
    :sswitch_4
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->sendKeyEvent(I)V

    .line 134
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->showContinuousSwitchDialog()V

    goto :goto_1

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b -> :sswitch_4
        -0x18 -> :sswitch_3
        -0x10 -> :sswitch_2
        -0x9 -> :sswitch_0
        -0x3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public startInput()V
    .locals 5

    .prologue
    .line 147
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->startInput()V

    .line 152
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "continuous_input_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, checked:I
    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mContinuousInputMode:I

    .line 157
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mContext:Landroid/content/Context;

    const v4, 0x7f050013

    invoke-direct {v2, v3, v4}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 162
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mContinuousInputKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    sget v3, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mContinuousInputMode:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 164
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteLSIP;->invalidateAll()V

    .line 167
    :cond_1
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->updateFullscreenMode()V

    .line 168
    return-void
.end method
