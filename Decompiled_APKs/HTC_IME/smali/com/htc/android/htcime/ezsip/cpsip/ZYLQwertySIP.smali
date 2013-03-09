.class public Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "ZYLQwertySIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZYPQwertySIP"


# instance fields
.field private mHasTone:Z

.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mMTWordPhrase:Z

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

.field private mPreIMEStatus:I

.field private mSIPLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mPreIMEStatus:I

    .line 47
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHasTone:Z

    .line 48
    iput v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIPLayout:I

    .line 49
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMTWordPhrase:Z

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "ZhuYin Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 56
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 59
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 218
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 219
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 220
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 221
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 224
    :cond_0
    return v3
.end method

.method private setKeyboardByType()V
    .locals 6

    .prologue
    .line 120
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 121
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "zy_lqwerty_sip"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 125
    .local v2, targetXmlId:I
    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.htc.android.htcime"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 130
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v2, v3, :cond_2

    .line 131
    :cond_1
    new-instance v3, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 133
    :cond_2
    return-void
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->closing()V

    .line 143
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 144
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 63
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 65
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->setKeyboardByType()V

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->setPopupOffset(II)V

    .line 69
    const/high16 v0, 0x300

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIP_ID:I

    .line 70
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIP_LP_ID:I

    .line 71
    return-void
.end method

.method protected isBPMFPhonetic(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 174
    .local v0, keyCode:I
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    const/16 v2, 0xec

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0xed

    if-lt v0, v2, :cond_2

    const/16 v2, 0xf1

    if-gt v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected isBPMFTone(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 180
    .local v0, keyCode:I
    const/16 v2, 0xed

    if-lt v0, v2, :cond_0

    const/16 v2, 0xf1

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public notify(IILjava/lang/String;)V
    .locals 3
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 373
    packed-switch p1, :pswitch_data_0

    .line 408
    :goto_0
    :pswitch_0
    return-void

    .line 377
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 380
    :sswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 381
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->invalidateAll()V

    .line 382
    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIPLayout:I

    .line 383
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHasTone:Z

    .line 384
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMTWordPhrase:Z

    goto :goto_0

    .line 387
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 388
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->invalidateAll()V

    .line 389
    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIPLayout:I

    .line 390
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHasTone:Z

    .line 391
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMTWordPhrase:Z

    goto :goto_0

    .line 399
    :pswitch_2
    if-ne v0, p2, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHasTone:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 404
    :pswitch_3
    if-ne v0, p2, :cond_1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMTWordPhrase:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 377
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 5
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x0

    .line 189
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 196
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 198
    .local v0, sendBtnIdx:I
    :goto_1
    const-string v1, "ZYPQwertySIP"

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

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codes[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->isBPMFPhonetic(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 205
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 206
    const/high16 v1, 0x74a

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 207
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->updateSIPOnIMEStatus()V

    goto :goto_0

    .line 196
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method public onKeyUp(III)V
    .locals 10
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v9, 0x74a

    const/4 v8, 0x1

    const/high16 v7, 0x71c

    const/4 v6, 0x0

    .line 233
    const-string v2, "ZYPQwertySIP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onKeyUp]: ButtonIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->onInterceptKeyUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 244
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v2, v2

    if-ne v8, v2, :cond_2

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    if-eq v2, v3, :cond_3

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/htcime/util/htcDAM;->ProcessKeyInput(III)I

    move-result v0

    .line 247
    .local v0, newIndex:I
    if-eq v0, p1, :cond_3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v6

    invoke-virtual {v2, v3, p0, v4, v5}, Lcom/htc/android/htcime/util/htcDAM;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V

    .line 250
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 251
    move p1, v0

    .line 257
    .end local v0           #newIndex:I
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_4

    move v1, p1

    .line 260
    .local v1, sendBtnIdx:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->isBPMFPhonetic(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 264
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->isBPMFTone(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 265
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(III)V

    .line 266
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 267
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->updateSIPOnIMEStatus()V

    goto/16 :goto_0

    .line 257
    .end local v1           #sendBtnIdx:I
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 270
    .restart local v1       #sendBtnIdx:I
    :cond_5
    const/high16 v2, 0x742

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    add-int/lit16 v3, v3, -0xed

    add-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 271
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 272
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->updateSIPOnIMEStatus()V

    goto/16 :goto_0

    .line 276
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    sparse-switch v2, :sswitch_data_0

    .line 355
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-lez v2, :cond_7

    .line 356
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 357
    const/high16 v2, 0xf00

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 361
    :cond_7
    :goto_2
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->updateSIPOnIMEStatus()V

    goto/16 :goto_0

    .line 278
    :sswitch_1
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 279
    const v2, 0x7300001

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 280
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_2

    .line 284
    :sswitch_2
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 285
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->launchSettings()V

    goto :goto_2

    .line 289
    :sswitch_3
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 290
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mLongPress:Z

    if-eqz v2, :cond_7

    .line 292
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->launchSettings()V

    goto :goto_2

    .line 298
    :sswitch_4
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    goto :goto_2

    .line 302
    :sswitch_5
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 303
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 304
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_2

    .line 307
    :sswitch_6
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 312
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_2

    .line 315
    :sswitch_7
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 316
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mLongPress:Z

    if-eqz v2, :cond_8

    .line 317
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_7

    .line 318
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->invokeVoiceInput()V

    goto :goto_2

    .line 322
    :cond_8
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_2

    .line 327
    :sswitch_8
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_7

    .line 328
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 329
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->invokeVoiceInput()V

    goto :goto_2

    .line 333
    :sswitch_9
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    goto :goto_2

    .line 338
    :sswitch_a
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_2

    .line 341
    :sswitch_b
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_2

    .line 344
    :sswitch_c
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_2

    .line 347
    :sswitch_d
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_2

    .line 350
    :sswitch_e
    const v2, 0xf000009

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_2

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a -> :sswitch_e
        -0x18 -> :sswitch_7
        -0x17 -> :sswitch_8
        -0x15 -> :sswitch_b
        -0x14 -> :sswitch_a
        -0x13 -> :sswitch_d
        -0x12 -> :sswitch_c
        -0x10 -> :sswitch_6
        -0xf -> :sswitch_3
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_5
        0x8 -> :sswitch_0
        0xa -> :sswitch_4
        0x20 -> :sswitch_9
    .end sparse-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public startInput()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 84
    const/high16 v0, 0x748

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 86
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 87
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 89
    const v0, 0x7400001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->sendKeyEvent(I)V

    .line 91
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->setKeyboardByType()V

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 95
    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIPLayout:I

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIPLayout:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 98
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->setPreviewEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->updateFullscreenMode()V

    .line 104
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHasTone:Z

    .line 105
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mMTWordPhrase:Z

    .line 108
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->setStatusIcon()V

    .line 109
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->loadFeedbackBG(Landroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v3, v1}, Lcom/htc/android/htcime/util/htcDAM;->getDAMId(II)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/util/htcDAM;->LoadKeyboard(I[Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->invalidateAll()V

    .line 116
    return-void
.end method

.method public updateSIPOnIMEStatus()V
    .locals 4

    .prologue
    .line 153
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v0

    .line 156
    .local v0, newIMEStatus:I
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mHasTone:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    .line 164
    .local v1, newLayout:I
    :goto_0
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIPLayout:I

    if-eq v1, v2, :cond_0

    .line 165
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIPLayout:I

    .line 166
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mSIPLayout:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 167
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;->invalidateAll()V

    .line 169
    :cond_0
    return-void

    .line 156
    .end local v1           #newLayout:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
