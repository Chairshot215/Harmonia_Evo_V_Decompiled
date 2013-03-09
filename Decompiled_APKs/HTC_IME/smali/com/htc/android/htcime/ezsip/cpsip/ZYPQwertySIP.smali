.class public Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "ZYPQwertySIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZYPQwertySIP"


# instance fields
.field private mHasTone:Z

.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mMTWordPhrase:Z

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

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

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 47
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHasTone:Z

    .line 48
    iput v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIPLayout:I

    .line 49
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMTWordPhrase:Z

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "ZhuYin Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0xb

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 59
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 60
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 199
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 200
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 201
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 202
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 205
    :cond_0
    return v3
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->closing()V

    .line 124
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 125
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "htcIMM"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 65
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 66
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mContext:Landroid/content/Context;

    const v2, 0x7f05005b

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->setPopupOffset(II)V

    .line 70
    const/high16 v0, 0x300

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIP_ID:I

    .line 71
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIP_LP_ID:I

    .line 72
    return-void
.end method

.method protected isBPMFPhonetic(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 155
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

    .line 159
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 161
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

    .line 354
    packed-switch p1, :pswitch_data_0

    .line 391
    :goto_0
    :pswitch_0
    return-void

    .line 358
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 361
    :sswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 362
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->invalidateAll()V

    .line 363
    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIPLayout:I

    .line 364
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHasTone:Z

    .line 365
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMTWordPhrase:Z

    goto :goto_0

    .line 368
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 369
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->invalidateAll()V

    .line 370
    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIPLayout:I

    .line 371
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHasTone:Z

    .line 372
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMTWordPhrase:Z

    goto :goto_0

    .line 382
    :pswitch_2
    if-ne v0, p2, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHasTone:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 387
    :pswitch_3
    if-ne v0, p2, :cond_1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMTWordPhrase:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 5
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x0

    .line 170
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 177
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 179
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

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codes[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->isBPMFPhonetic(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 186
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 187
    const/high16 v1, 0x74a

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 188
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->updateSIPOnIMEStatus()V

    goto :goto_0

    .line 177
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method protected onKeyMove(III)V
    .locals 0
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 351
    return-void
.end method

.method public onKeyUp(III)V
    .locals 11
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v10, 0x74a

    const/16 v9, 0x14

    const/4 v8, 0x1

    const/high16 v7, 0x71c

    const/4 v6, 0x0

    .line 215
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

    .line 217
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->onInterceptKeyUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 226
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 227
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v2, v2

    if-ne v8, v2, :cond_2

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    if-eq v2, v3, :cond_3

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/htcime/util/htcDAM;->ProcessKeyInput(III)I

    move-result v0

    .line 229
    .local v0, newIndex:I
    if-eq v0, p1, :cond_3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 231
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v6

    invoke-virtual {v2, v3, p0, v4, v5}, Lcom/htc/android/htcime/util/htcDAM;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V

    .line 232
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 233
    move p1, v0

    .line 239
    .end local v0           #newIndex:I
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_4

    move v1, p1

    .line 242
    .local v1, sendBtnIdx:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->isBPMFPhonetic(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 246
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->isBPMFTone(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 247
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(III)V

    .line 248
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 249
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->updateSIPOnIMEStatus()V

    goto/16 :goto_0

    .line 239
    .end local v1           #sendBtnIdx:I
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 251
    .restart local v1       #sendBtnIdx:I
    :cond_5
    const/high16 v2, 0x742

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    add-int/lit16 v3, v3, -0xed

    add-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 252
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->updateSIPOnIMEStatus()V

    goto/16 :goto_0

    .line 256
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    sparse-switch v2, :sswitch_data_0

    .line 335
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-lez v2, :cond_7

    .line 336
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 337
    const/high16 v2, 0xf00

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 341
    :cond_7
    :goto_2
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->updateSIPOnIMEStatus()V

    goto/16 :goto_0

    .line 258
    :sswitch_1
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 259
    const v2, 0x7300001

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 260
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_2

    .line 264
    :sswitch_2
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 265
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->launchSettings()V

    goto :goto_2

    .line 269
    :sswitch_3
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 270
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mLongPress:Z

    if-eqz v2, :cond_7

    .line 272
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->launchSettings()V

    goto :goto_2

    .line 278
    :sswitch_4
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    goto :goto_2

    .line 282
    :sswitch_5
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 283
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 284
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v9, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_2

    .line 287
    :sswitch_6
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 292
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_2

    .line 295
    :sswitch_7
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 296
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mLongPress:Z

    if-eqz v2, :cond_8

    .line 297
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_7

    .line 298
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->invokeVoiceInput()V

    goto :goto_2

    .line 302
    :cond_8
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto :goto_2

    .line 307
    :sswitch_8
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_7

    .line 308
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 309
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->invokeVoiceInput()V

    goto :goto_2

    .line 313
    :sswitch_9
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    goto :goto_2

    .line 318
    :sswitch_a
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_2

    .line 321
    :sswitch_b
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_2

    .line 324
    :sswitch_c
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_2

    .line 327
    :sswitch_d
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v9}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_2

    .line 330
    :sswitch_e
    const v2, 0xf000009

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_2

    .line 256
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
    .line 119
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public startInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 85
    const/high16 v0, 0x748

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 87
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 90
    const v0, 0x7400001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->sendKeyEvent(I)V

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIPLayout:I

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIPLayout:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 98
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->setPreviewEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->setStatusIcon()V

    .line 104
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->loadFeedbackBG(Landroid/content/Context;)V

    .line 107
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHasTone:Z

    .line 108
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mMTWordPhrase:Z

    .line 110
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->invalidateAll()V

    .line 111
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/htc/android/htcime/util/htcDAM;->getDAMId(II)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/util/htcDAM;->LoadKeyboard(I[Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    .line 114
    :cond_1
    return-void
.end method

.method public updateSIPOnIMEStatus()V
    .locals 4

    .prologue
    .line 134
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v0

    .line 137
    .local v0, newIMEStatus:I
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mHasTone:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    .line 145
    .local v1, newLayout:I
    :goto_0
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIPLayout:I

    if-eq v1, v2, :cond_0

    .line 146
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIPLayout:I

    .line 147
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mSIPLayout:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 148
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;->invalidateAll()V

    .line 150
    :cond_0
    return-void

    .line 137
    .end local v1           #newLayout:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
