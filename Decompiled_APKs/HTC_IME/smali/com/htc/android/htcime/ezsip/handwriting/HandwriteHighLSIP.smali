.class public Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;
.super Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
.source "HandwriteHighLSIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_CLASS:Ljava/lang/String; = "[HandwriteHighLSIP] "

.field private static final LOG_TAG:Ljava/lang/String; = "HandwriteHighLSIP"

.field private static final LOG_TITLE:Ljava/lang/String; = "HandwritingLog"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x800

    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Handwriting SIP"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0x9

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 52
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 56
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mSipKeyBase:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mEngSipID:I

    .line 58
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mSymSipID:I

    .line 61
    const v0, 0x7f050014

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->m_nKeyboard:I

    .line 64
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->m_bIsPanelEmbeddedInSip:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 68
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mSIP_ID:I

    .line 69
    const/high16 v0, 0x900

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mSIP_LP_ID:I

    .line 72
    new-instance v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

    invoke-direct {v0, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mSeparatePadView:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

    .line 73
    return-void
.end method

.method private onInterceptClick()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 91
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v3, 0x710

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 93
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mSymSipID:I

    invoke-virtual {v1, v3, v2}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 94
    const/4 v1, 0x1

    .line 97
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

    .line 191
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->hideSwitchMenuInner()V

    .line 192
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->closing()V

    .line 193
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 195
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 200
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 209
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 211
    :cond_2
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->finishInput()V

    .line 212
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mSeparatePadView:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

    const v1, 0x7f050015

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->init(Lcom/htc/android/htcime/HTCIMEService;I)V

    .line 79
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 82
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getMinWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipWidth:I

    .line 84
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 222
    return-void
.end method

.method public onClick(III)V
    .locals 4
    .parameter "btnIdx"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v3, 0x710

    .line 102
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->onInterceptClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 106
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 153
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->onClick(III)V

    goto :goto_0

    .line 108
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mConfigData:Lcom/htc/android/htcime/util/ConfigData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/util/ConfigData;->isCurrentQWERTYSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mEngSipID:I

    goto :goto_1

    .line 111
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mEngSipID:I

    goto :goto_1

    .line 116
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->sendKeyEvent(I)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->launchSettings()V

    goto :goto_1

    .line 121
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->sendKeyEvent(I)V

    .line 126
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_1

    .line 129
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->sendKeyEvent(I)V

    .line 130
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mLongPress:Z

    if-eqz v1, :cond_3

    .line 131
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->invokeVoiceInput()V

    goto :goto_1

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_1

    .line 141
    :sswitch_4
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_1

    .line 142
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->sendKeyEvent(I)V

    .line 143
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->invokeVoiceInput()V

    goto :goto_1

    .line 148
    :sswitch_5
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->sendKeyEvent(I)V

    .line 149
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->showContinuousSwitchDialog()V

    goto :goto_1

    .line 106
    :sswitch_data_0
    .sparse-switch
        -0x3b -> :sswitch_5
        -0x18 -> :sswitch_3
        -0x17 -> :sswitch_4
        -0x10 -> :sswitch_2
        -0x9 -> :sswitch_0
        -0x3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public startInput()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 162
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->startInput()V

    .line 164
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "continuous_input_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 166
    .local v0, checked:I
    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mContinuousInputMode:I

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mContext:Landroid/content/Context;

    const v4, 0x7f050014

    invoke-direct {v2, v3, v4}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 177
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mContinuousInputKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    sget v3, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mContinuousInputMode:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 179
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->invalidateAll()V

    .line 182
    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteHighLSIP;->setSIPVisibility(I)V

    .line 183
    return-void
.end method
