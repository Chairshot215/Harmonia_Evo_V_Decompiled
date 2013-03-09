.class public Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;
.super Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
.source "HandwritePSIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_CLASS:Ljava/lang/String; = "[HandwritePSIP] "

.field private static final LOG_TAG:Ljava/lang/String; = "HandwritePSIP"

.field private static final LOG_TITLE:Ljava/lang/String; = "HandwritingLog"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v4, 0x100

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v2, "Handwriting SIP"

    iput-object v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v2, 0x7

    iput v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 53
    iput v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mSipKeyBase:I

    .line 54
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mEngSipID:I

    .line 55
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mSymSipID:I

    .line 58
    const v0, 0x7f05000e

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->m_nKeyboard:I

    .line 59
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Transparent_HWR:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->m_nPanel:I

    .line 60
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->m_bIsPanelEmbeddedInSip:Z

    .line 63
    iput v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mSIP_ID:I

    .line 64
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mSIP_LP_ID:I

    .line 66
    return-void

    .line 59
    :cond_0
    const v0, 0x7f020053

    goto :goto_0
.end method

.method private onInterceptClick()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 79
    .local v0, direction:I
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mConfigData:Lcom/htc/android/htcime/util/ConfigData;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/util/ConfigData;->isCurrentQWERTYSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/16 v1, 0x14

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mSymSipID:I

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v3, 0x710

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 86
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mSymSipID:I

    invoke-virtual {v1, v3, v2}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 87
    const/4 v1, 0x1

    .line 90
    :goto_1
    return v1

    .line 83
    :cond_0
    const/16 v1, 0x13

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mSymSipID:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1
.end method


# virtual methods
.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->hideSwitchMenuInner()V

    .line 183
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->closing()V

    .line 184
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 186
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 191
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->EnableStatusBarExpand()V

    .line 204
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->finishInput()V

    .line 205
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 71
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 72
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 215
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
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->onInterceptClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;

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

    .line 146
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->onClick(III)V

    goto :goto_0

    .line 101
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mConfigData:Lcom/htc/android/htcime/util/ConfigData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/util/ConfigData;->isCurrentQWERTYSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mEngSipID:I

    goto :goto_1

    .line 104
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mEngSipID:I

    goto :goto_1

    .line 109
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mConfigData:Lcom/htc/android/htcime/util/ConfigData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/util/ConfigData;->isCurrentQWERTYSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    const/16 v1, 0x14

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mSymSipID:I

    goto :goto_1

    .line 112
    :cond_3
    const/16 v1, 0x13

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mSymSipID:I

    goto :goto_1

    .line 117
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->sendKeyEvent(I)V

    .line 118
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->launchSettings()V

    goto :goto_1

    .line 121
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->sendKeyEvent(I)V

    .line 126
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_1

    .line 129
    :sswitch_4
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->sendKeyEvent(I)V

    .line 130
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mLongPress:Z

    if-eqz v1, :cond_4

    .line 131
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->invokeVoiceInput()V

    goto :goto_1

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_1

    .line 140
    :sswitch_5
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->sendKeyEvent(I)V

    .line 141
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->showContinuousSwitchDialog()V

    goto :goto_1

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b -> :sswitch_5
        -0x18 -> :sswitch_4
        -0x10 -> :sswitch_3
        -0x9 -> :sswitch_0
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public startInput()V
    .locals 5

    .prologue
    .line 155
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->startInput()V

    .line 160
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 161
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "continuous_input_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, checked:I
    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mContinuousInputMode:I

    .line 165
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-nez v2, :cond_0

    .line 166
    new-instance v2, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mContext:Landroid/content/Context;

    const v4, 0x7f05000e

    invoke-direct {v2, v3, v4}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 170
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mContinuousInputKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    sget v3, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mContinuousInputMode:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 172
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwritePSIP;->invalidateAll()V

    .line 174
    :cond_1
    return-void
.end method
