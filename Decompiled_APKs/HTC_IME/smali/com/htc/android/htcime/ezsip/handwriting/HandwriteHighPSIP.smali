.class public Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;
.super Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
.source "HandwriteHighPSIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_CLASS:Ljava/lang/String; = "[HandwriteHighPSIP] "

.field private static final LOG_TAG:Ljava/lang/String; = "HandwriteHighPSIP"

.field private static final LOG_TITLE:Ljava/lang/String; = "HandwritingLog"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x100

    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Handwriting SIP"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0x11

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 52
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 56
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSipKeyBase:I

    .line 57
    iput v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mEngSipID:I

    .line 58
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSymSipID:I

    .line 61
    const v0, 0x7f050011

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->m_nKeyboard:I

    .line 63
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->m_bIsPanelEmbeddedInSip:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 67
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSIP_ID:I

    .line 68
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSIP_LP_ID:I

    .line 71
    new-instance v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

    invoke-direct {v0, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSeparatePadView:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

    .line 72
    return-void
.end method

.method private onInterceptClick()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 90
    .local v0, direction:I
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mConfigData:Lcom/htc/android/htcime/util/ConfigData;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/util/ConfigData;->isCurrentQWERTYSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const/16 v1, 0x14

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSymSipID:I

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v3, 0x710

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 97
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSymSipID:I

    invoke-virtual {v1, v3, v2}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 98
    const/4 v1, 0x1

    .line 101
    :goto_1
    return v1

    .line 94
    :cond_0
    const/16 v1, 0x13

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSymSipID:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 101
    goto :goto_1
.end method


# virtual methods
.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->hideSwitchMenuInner()V

    .line 201
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->closing()V

    .line 202
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 204
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 209
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 220
    :cond_2
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->finishInput()V

    .line 221
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSeparatePadView:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

    const v1, 0x7f050012

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->init(Lcom/htc/android/htcime/HTCIMEService;I)V

    .line 78
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getMinWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipWidth:I

    .line 83
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 231
    return-void
.end method

.method public onClick(III)V
    .locals 4
    .parameter "btnIdx"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v3, 0x710

    .line 106
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->onInterceptClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 110
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 164
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->onClick(III)V

    goto :goto_0

    .line 112
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mConfigData:Lcom/htc/android/htcime/util/ConfigData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/util/ConfigData;->isCurrentQWERTYSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mEngSipID:I

    goto :goto_1

    .line 115
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mEngSipID:I

    goto :goto_1

    .line 120
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mConfigData:Lcom/htc/android/htcime/util/ConfigData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/util/ConfigData;->isCurrentQWERTYSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    const/16 v1, 0x14

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSymSipID:I

    goto :goto_1

    .line 123
    :cond_3
    const/16 v1, 0x13

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mSymSipID:I

    goto :goto_1

    .line 128
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->sendKeyEvent(I)V

    .line 129
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->launchSettings()V

    goto :goto_1

    .line 133
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->sendKeyEvent(I)V

    .line 138
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_1

    .line 141
    :sswitch_4
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->sendKeyEvent(I)V

    .line 142
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mLongPress:Z

    if-eqz v1, :cond_4

    .line 143
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->invokeVoiceInput()V

    goto :goto_1

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_1

    .line 152
    :sswitch_5
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_1

    .line 153
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->sendKeyEvent(I)V

    .line 154
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->invokeVoiceInput()V

    goto :goto_1

    .line 159
    :sswitch_6
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->sendKeyEvent(I)V

    .line 160
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->showContinuousSwitchDialog()V

    goto :goto_1

    .line 110
    :sswitch_data_0
    .sparse-switch
        -0x3b -> :sswitch_6
        -0x18 -> :sswitch_4
        -0x17 -> :sswitch_5
        -0x10 -> :sswitch_3
        -0x9 -> :sswitch_0
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public startInput()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 173
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->startInput()V

    .line 175
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "continuous_input_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, checked:I
    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mContinuousInputMode:I

    .line 179
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 181
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-nez v2, :cond_0

    .line 182
    new-instance v2, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mContext:Landroid/content/Context;

    const v4, 0x7f050011

    invoke-direct {v2, v3, v4}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 186
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mContinuousInputKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    sget v3, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mContinuousInputMode:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 188
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->invalidateAll()V

    .line 191
    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighPSIP;->setSIPVisibility(I)V

    .line 192
    return-void
.end method
