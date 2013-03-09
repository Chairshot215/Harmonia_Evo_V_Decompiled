.class public Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "PortQweSymSIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final TAG:Ljava/lang/String; = "PortQweSymSIPView"


# instance fields
.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Portrait Qwerty Symbol"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 56
    return-void
.end method

.method private onInterceptClick()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 150
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 151
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 153
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v1, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    move v1, v2

    .line 157
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->closing()V

    .line 127
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->finishInput()V

    .line 128
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    const/4 v3, 0x0

    .line 65
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_htcime_noarrow"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const v2, 0x7f0500a6

    goto :goto_0

    :cond_0
    const v2, 0x7f050049

    :goto_0
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 68
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 69
    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->setPopupOffset(II)V

    .line 71
    iput v3, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mSIP_ID:I

    .line 72
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mSIP_LP_ID:I

    .line 73
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 243
    return-void
.end method

.method public onClick(III)V
    .locals 9
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v8, 0xf00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 173
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->onInterceptClick()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v4, p1

    .line 177
    .local v3, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v4, v6

    .line 178
    .local v0, code:I
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lez v4, :cond_2

    .line 179
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v5, v5, -0x1

    aget v0, v4, v5

    .line 180
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 235
    or-int v4, v8, v0

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 183
    :sswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 186
    :sswitch_1
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mAddWordFlag:Z

    if-nez v4, :cond_0

    .line 187
    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->sendKeyEvent(I)V

    .line 188
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 192
    :sswitch_2
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 193
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 197
    :sswitch_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto :goto_0

    .line 201
    :sswitch_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x43

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 204
    :sswitch_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 205
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 207
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 208
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 209
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    or-int/2addr v4, v8

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->sendKeyEvent(I)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    :cond_3
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 214
    .end local v1           #i:I
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-ne v4, v7, :cond_4

    .line 215
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v5, 0x2

    iput v5, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 218
    :goto_2
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 219
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 217
    :cond_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iput v7, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    goto :goto_2

    .line 223
    :sswitch_7
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 226
    :sswitch_8
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 229
    :sswitch_9
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 232
    :sswitch_a
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 180
    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_8
        -0x14 -> :sswitch_7
        -0x13 -> :sswitch_a
        -0x12 -> :sswitch_9
        -0xd -> :sswitch_5
        -0xc -> :sswitch_6
        -0xb -> :sswitch_2
        -0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0xa -> :sswitch_3
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public startInput()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->startInput()V

    .line 84
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->init_lpd_data()V

    .line 86
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->setPreviewEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->previewDismiss()V

    .line 88
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 89
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 90
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mAddWordFlag:Z

    .line 91
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, -0xb

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 92
    .local v0, abcSIPKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    sparse-switch v1, :sswitch_data_0

    .line 103
    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 108
    :cond_0
    :goto_0
    iput v3, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mShiftState:I

    .line 110
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->setStatusIcon()V

    .line 113
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setImeOptions(II)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->invalidateAll()V

    .line 117
    return-void

    .line 95
    :sswitch_0
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/symsip/PortQweSymSIPView;->mAddWordFlag:Z

    .line 96
    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    goto :goto_0

    .line 100
    :sswitch_1
    invoke-virtual {v0, v4}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method
