.class public Lcom/htc/android/htcime/ezsip/ExternalHWKBView;
.super Lcom/htc/android/htcime/ezsip/QwertyHWKBView;
.source "ExternalHWKBView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final INFO:Z = false

.field protected static final TAG:Ljava/lang/String; = "ExternalHWKBView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private OnKeyDownLATINExternalHWKB(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v5, 0x800

    const/4 v2, 0x1

    .line 157
    const/16 v3, 0x1d

    if-lt p1, v3, :cond_0

    const/16 v3, 0x36

    if-gt p1, v3, :cond_0

    .line 158
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    or-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->sendKeyEvent(I)V

    .line 188
    :goto_0
    return v2

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mappingKeyCode:[I

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mappingXT9idx:[I

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mapping2arrays(I[I[I)I

    move-result v0

    .line 164
    .local v0, idx:I
    const/4 v3, -0x1

    if-lt v0, v3, :cond_3

    .line 165
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    .line 166
    .local v1, ucode:I
    const/16 v3, 0x43

    if-ne p1, v3, :cond_1

    .line 167
    const v3, 0x8000008

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->sendKeyEvent(I)V

    goto :goto_0

    .line 170
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 177
    if-lez v1, :cond_2

    .line 178
    const/high16 v3, 0xf00

    or-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->sendKeyEvent(I)V

    goto :goto_0

    .line 174
    :sswitch_0
    or-int v3, v5, v1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->sendKeyEvent(I)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2, p2}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 187
    .end local v1           #ucode:I
    :cond_3
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mIsPassKeyDownToSystem:Z

    .line 188
    const/4 v2, 0x0

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public isShortCutDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 195
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-nez v9, :cond_1

    move v6, v7

    .line 217
    :cond_0
    :goto_0
    return v6

    .line 196
    :cond_1
    const/4 v6, 0x0

    .line 197
    .local v6, retVal:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 199
    .local v5, repeatCnt:I
    if-nez v5, :cond_0

    .line 200
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    .line 201
    .local v1, isCtrlOn:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    .line 202
    .local v3, isShiftOn:Z
    const/16 v9, 0x3e

    if-ne p1, v9, :cond_4

    move v4, v8

    .line 203
    .local v4, isSpaceKey:Z
    :goto_1
    const/16 v9, 0x71

    if-eq p1, v9, :cond_2

    const/16 v9, 0x72

    if-ne p1, v9, :cond_5

    :cond_2
    move v0, v8

    .line 204
    .local v0, isCtrlKey:Z
    :goto_2
    const/16 v9, 0x3b

    if-eq p1, v9, :cond_3

    const/16 v9, 0x3c

    if-ne p1, v9, :cond_6

    :cond_3
    move v2, v8

    .line 206
    .local v2, isShiftKey:Z
    :goto_3
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    .line 207
    iput-boolean v8, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->isDoChangeToEngIM:Z

    .line 208
    const/4 v6, 0x1

    goto :goto_0

    .end local v0           #isCtrlKey:Z
    .end local v2           #isShiftKey:Z
    .end local v4           #isSpaceKey:Z
    :cond_4
    move v4, v7

    .line 202
    goto :goto_1

    .restart local v4       #isSpaceKey:Z
    :cond_5
    move v0, v7

    .line 203
    goto :goto_2

    .restart local v0       #isCtrlKey:Z
    :cond_6
    move v2, v7

    .line 204
    goto :goto_3

    .line 209
    .restart local v2       #isShiftKey:Z
    :cond_7
    if-eqz v1, :cond_8

    if-nez v2, :cond_9

    :cond_8
    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    .line 210
    :cond_9
    iput-boolean v8, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->isDoChangeToNextIM:Z

    .line 211
    const/4 v6, 0x1

    goto :goto_0

    .line 213
    :cond_a
    iput-boolean v7, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->isDoChangeToNextIM:Z

    iput-boolean v7, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->isDoChangeToEngIM:Z

    goto :goto_0
.end method

.method public isShortCutUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 222
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-nez v9, :cond_0

    .line 259
    :goto_0
    return v7

    .line 223
    :cond_0
    const/4 v5, 0x0

    .line 224
    .local v5, retVal:Z
    const/16 v9, 0x3e

    if-ne p1, v9, :cond_8

    move v4, v8

    .line 225
    .local v4, isSpaceKey:Z
    :goto_1
    const/16 v9, 0x71

    if-eq p1, v9, :cond_1

    const/16 v9, 0x72

    if-ne p1, v9, :cond_9

    :cond_1
    move v2, v8

    .line 226
    .local v2, isCtrlKey:Z
    :goto_2
    const/16 v9, 0x3b

    if-eq p1, v9, :cond_2

    const/16 v9, 0x3c

    if-ne p1, v9, :cond_a

    :cond_2
    move v3, v8

    .line 227
    .local v3, isShiftKey:Z
    :goto_3
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v9}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v0

    .line 229
    .local v0, SIPswitcher:Lcom/htc/android/htcime/util/SIPSwitcher;
    iget-boolean v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->isDoChangeToEngIM:Z

    if-eqz v9, :cond_b

    if-nez v4, :cond_3

    if-eqz v2, :cond_b

    .line 230
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->doSwapCurIMEng()V

    .line 231
    :cond_4
    const/4 v5, 0x1

    .line 237
    :cond_5
    :goto_4
    if-eqz v5, :cond_7

    .line 238
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    if-ne v9, v10, :cond_e

    .line 239
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 243
    :goto_5
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_OFF:Z

    .line 244
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_ON:Z

    .line 247
    if-eqz v0, :cond_6

    .line 248
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->getLanguageString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, curLangStr:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 250
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v9}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 251
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 254
    .end local v1           #curLangStr:Ljava/lang/String;
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_6
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v9, v10, v8}, Lcom/htc/android/htcime/HTCIMEService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 257
    :cond_7
    iput-boolean v7, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->isDoChangeToNextIM:Z

    iput-boolean v7, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->isDoChangeToEngIM:Z

    move v7, v5

    .line 259
    goto :goto_0

    .end local v0           #SIPswitcher:Lcom/htc/android/htcime/util/SIPSwitcher;
    .end local v2           #isCtrlKey:Z
    .end local v3           #isShiftKey:Z
    .end local v4           #isSpaceKey:Z
    :cond_8
    move v4, v7

    .line 224
    goto :goto_1

    .restart local v4       #isSpaceKey:Z
    :cond_9
    move v2, v7

    .line 225
    goto :goto_2

    .restart local v2       #isCtrlKey:Z
    :cond_a
    move v3, v7

    .line 226
    goto :goto_3

    .line 232
    .restart local v0       #SIPswitcher:Lcom/htc/android/htcime/util/SIPSwitcher;
    .restart local v3       #isShiftKey:Z
    :cond_b
    iget-boolean v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->isDoChangeToNextIM:Z

    if-eqz v9, :cond_5

    if-nez v2, :cond_c

    if-eqz v3, :cond_5

    .line 233
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->doNextSIP()V

    .line 234
    :cond_d
    const/4 v5, 0x1

    goto :goto_4

    .line 241
    :cond_e
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    goto :goto_5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x3d

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->passKeyDownToSystem(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iput p1, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mCurrentKeyCode:I

    .line 85
    if-ne p1, v2, :cond_3

    .line 92
    if-ne p1, v2, :cond_2

    .line 93
    const v0, 0xf000009

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->sendKeyEvent(I)V

    .line 94
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    packed-switch v1, :pswitch_data_0

    .line 115
    :pswitch_0
    const-string v1, "ExternalHWKBView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown, unknown sipID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->OnKeyDownLATINExternalHWKB(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->onKeyDownZY(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->onKeyDownCHT(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 122
    const/16 v2, 0x3b

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3c

    if-eq p1, v2, :cond_0

    const/16 v2, 0x39

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3a

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/16 v2, 0x54

    if-eq p1, v2, :cond_0

    const/16 v2, 0x71

    if-eq p1, v2, :cond_0

    const/16 v2, 0x72

    if-eq p1, v2, :cond_0

    const/16 v2, 0xe3

    if-ne p1, v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const/16 v2, 0x17

    if-ne p1, v2, :cond_2

    .line 130
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0, p2}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 134
    :cond_2
    const/16 v2, 0x73

    if-ne p1, v2, :cond_3

    .line 135
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mShiftbyAutoCap:Z

    .line 136
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCapsLockOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->setIMECapMode(IZ)V

    .line 145
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mIsPassKeyDownToSystem:Z

    if-eqz v2, :cond_5

    .line 149
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mIsPassKeyDownToSystem:Z

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->setIMECapMode(IZ)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 153
    goto :goto_0
.end method

.method protected passKeyDownToSystem(I)Z
    .locals 2
    .parameter "keycode"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, ret_val:Z
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    sparse-switch v1, :sswitch_data_0

    .line 57
    :goto_0
    sparse-switch p1, :sswitch_data_1

    .line 72
    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;->mIsPassKeyDownToSystem:Z

    .line 73
    return v0

    .line 52
    :sswitch_0
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    .line 66
    :sswitch_1
    const/4 v0, 0x1

    .line 67
    goto :goto_1

    .line 48
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x17 -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch

    .line 57
    :sswitch_data_1
    .sparse-switch
        0x39 -> :sswitch_1
        0x3a -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x54 -> :sswitch_1
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
        0x73 -> :sswitch_1
    .end sparse-switch
.end method
