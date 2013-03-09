.class public Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "StrokeP12SIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StrokeP12SIP"


# instance fields
.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 48
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Stroke 12Key"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0xe

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 53
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 54
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 156
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 157
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 158
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 159
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 162
    :cond_0
    return v3
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->closing()V

    .line 108
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 109
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "htcIMM"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 59
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mContext:Landroid/content/Context;

    const v2, 0x7f050057

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 60
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->setPopupOffset(II)V

    .line 63
    const/high16 v0, 0x100

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mSIP_ID:I

    .line 64
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mSIP_LP_ID:I

    .line 69
    return-void
.end method

.method protected isStrokeSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 120
    .local v0, keyCode:I
    const/16 v2, 0x31

    if-lt v0, v2, :cond_0

    const/16 v2, 0x35

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 315
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 5
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x0

    .line 129
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 136
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 138
    .local v0, sendBtnIdx:I
    :goto_1
    const-string v1, "StrokeP12SIP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onKeyDown]: ButtonIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codes[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->isStrokeSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 145
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 136
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method protected onKeyMove(III)V
    .locals 0
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 292
    return-void
.end method

.method public onKeyUp(III)V
    .locals 6
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/16 v5, 0x13

    const/4 v4, 0x0

    const/high16 v3, 0x71c

    .line 172
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->onInterceptKeyUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 182
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 185
    .local v0, sendBtnIdx:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->isStrokeSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 182
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 192
    .restart local v0       #sendBtnIdx:I
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    sparse-switch v1, :sswitch_data_0

    .line 276
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    if-lez v1, :cond_0

    .line 277
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 278
    const/high16 v1, 0xf00

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 194
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 195
    const v1, 0x7300001

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 196
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 200
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 201
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->launchSettings()V

    goto :goto_0

    .line 205
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 206
    const/high16 v1, 0x704

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 207
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mLongPress:Z

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->launchSettings()V

    goto :goto_0

    .line 214
    :sswitch_4
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 215
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mLongPress:Z

    if-eqz v1, :cond_4

    .line 216
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->launchSettings()V

    goto/16 :goto_0

    .line 220
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthKeyboardType()V

    goto/16 :goto_0

    .line 225
    :sswitch_5
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 229
    :sswitch_6
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 230
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 231
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v5, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 234
    :sswitch_7
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 239
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 242
    :sswitch_8
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 243
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mLongPress:Z

    if-eqz v1, :cond_5

    .line 244
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 249
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 253
    :sswitch_9
    const/high16 v1, 0x743

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 257
    :sswitch_a
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 262
    :sswitch_b
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 265
    :sswitch_c
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 268
    :sswitch_d
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 271
    :sswitch_e
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        -0x39 -> :sswitch_5
        -0x19 -> :sswitch_4
        -0x18 -> :sswitch_8
        -0x15 -> :sswitch_c
        -0x14 -> :sswitch_b
        -0x13 -> :sswitch_e
        -0x12 -> :sswitch_d
        -0x10 -> :sswitch_7
        -0xf -> :sswitch_3
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_6
        0x8 -> :sswitch_0
        0xa -> :sswitch_5
        0x20 -> :sswitch_a
        0xef -> :sswitch_9
    .end sparse-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public startInput()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 82
    const/high16 v0, 0x748

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 84
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 85
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 87
    const v0, 0x7400002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->sendKeyEvent(I)V

    .line 89
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 91
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->setPreviewEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->setStatusIcon()V

    .line 97
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeP12SIP;->invalidateAll()V

    .line 98
    return-void
.end method
