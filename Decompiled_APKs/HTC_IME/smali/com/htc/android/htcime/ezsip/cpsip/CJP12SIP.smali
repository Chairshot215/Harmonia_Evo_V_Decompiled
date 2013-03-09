.class public Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "CJP12SIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CJP12SIP"


# instance fields
.field private bNormalCJMode:Z

.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 48
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->bNormalCJMode:Z

    .line 53
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "ChangJie 12Key"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0x8

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 56
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 59
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 183
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->Cancel()V

    .line 185
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 186
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 187
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 190
    :cond_0
    return v3
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->closing()V

    .line 134
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 135
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "htcIMM"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 63
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 64
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mContext:Landroid/content/Context;

    const v2, 0x7f050001

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 65
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 68
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapIndex:[I

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->setPopupOffset(II)V

    .line 72
    const/high16 v0, 0x100

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mSIP_ID:I

    .line 73
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mSIP_LP_ID:I

    .line 74
    return-void
.end method

.method protected isCJSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 146
    .local v0, keyCode:I
    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

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
    .line 427
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 5
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x0

    .line 155
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 162
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 164
    .local v0, sendBtnIdx:I
    :goto_1
    const-string v1, "CJP12SIP"

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

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codes[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->isCJSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 171
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 172
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->Cancel()V

    goto :goto_0

    .line 162
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method protected onKeyMove(III)V
    .locals 0
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 423
    return-void
.end method

.method public onKeyUp(III)V
    .locals 10
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const v9, 0xffff

    const/16 v8, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v7, 0x71c

    .line 199
    const-string v4, "CJP12SIP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onKeyUp]: ButtonIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v4, v4

    if-lt p1, v4, :cond_1

    .line 340
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->onInterceptKeyUp()Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, p1

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 211
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v5, -0x3e7

    if-ne v4, v5, :cond_3

    move v0, p1

    .line 214
    .local v0, sendBtnIdx:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v4, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->isCJSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 218
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v9, v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v2, v0, :cond_2

    .line 220
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->MultitapDone()V

    .line 223
    :cond_2
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mSIP_ID:I

    or-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 224
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    iput v0, v2, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 225
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->KeyDown(I)V

    goto :goto_0

    .line 211
    .end local v0           #sendBtnIdx:I
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 228
    .restart local v0       #sendBtnIdx:I
    :cond_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 330
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    if-lez v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->Cancel()V

    .line 332
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 333
    const/high16 v2, 0xf00

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v4, v3

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 230
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->Cancel()V

    .line 231
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 232
    const v2, 0x7300001

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 233
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto/16 :goto_0

    .line 237
    :sswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->Cancel()V

    .line 238
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 239
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->launchSettings()V

    goto/16 :goto_0

    .line 243
    :sswitch_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->Cancel()V

    .line 244
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 245
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mLongPress:Z

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->launchSettings()V

    goto/16 :goto_0

    .line 252
    :sswitch_4
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mSIP_ID:I

    or-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 253
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    iput v9, v2, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    goto/16 :goto_0

    .line 257
    :sswitch_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->Cancel()V

    .line 258
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 259
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v4, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 260
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v8, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 263
    :sswitch_6
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->Cancel()V

    .line 264
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 269
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 272
    :sswitch_7
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 273
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mLongPress:Z

    if-eqz v2, :cond_5

    .line 274
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 279
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 282
    :sswitch_8
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->Cancel()V

    .line 283
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 287
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v4, :cond_6

    .line 288
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 289
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 290
    const v4, 0x7150002

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 293
    :cond_6
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->bNormalCJMode:Z

    if-nez v4, :cond_7

    :goto_2
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->bNormalCJMode:Z

    .line 295
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->bNormalCJMode:Z

    if-eqz v2, :cond_8

    .line 296
    const v2, 0x7400003

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 301
    :goto_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->bNormalCJMode:Z

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->invalidateAll()V

    .line 306
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 307
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->bNormalCJMode:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_7
    move v2, v3

    .line 293
    goto :goto_2

    .line 299
    :cond_8
    const v2, 0x7400004

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    goto :goto_3

    .line 311
    :sswitch_9
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mSIP_ID:I

    or-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 316
    :sswitch_a
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 319
    :sswitch_b
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 322
    :sswitch_c
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 325
    :sswitch_d
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        -0x38 -> :sswitch_8
        -0x18 -> :sswitch_7
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

.method protected repeatKey()Z
    .locals 4

    .prologue
    .line 344
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mRepeatKeyIndex:I

    aget-object v0, v2, v3

    .line 347
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mRepeatKeyIndex:I

    .line 349
    .local v1, sendBtnIdx:I
    :goto_0
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 357
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    .line 362
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    const v3, 0xffff

    iput v3, v2, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 364
    const/4 v2, 0x1

    return v2

    .line 347
    .end local v1           #sendBtnIdx:I
    :cond_0
    iget v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_0

    .line 352
    .restart local v1       #sendBtnIdx:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto :goto_1

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public startInput()V
    .locals 5

    .prologue
    .line 84
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 87
    const/high16 v3, 0x748

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 89
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 90
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 93
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 94
    .local v2, sp:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->bNormalCJMode:Z

    .line 96
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->bNormalCJMode:Z

    if-eqz v3, :cond_2

    .line 97
    const v3, 0x7400003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 103
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0x38

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 104
    .local v0, CJModeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 105
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->bNormalCJMode:Z

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 107
    :cond_0
    const v3, 0x7450003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 109
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->setPreviewEnabled(Z)V

    .line 110
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 113
    :cond_1
    const v3, 0x7150002

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    .line 118
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->mMultiTapIndex:[I

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v0           #CJModeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v1           #i:I
    :cond_2
    const v3, 0x7400004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 122
    .restart local v0       #CJModeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->setStatusIcon()V

    .line 123
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJP12SIP;->invalidateAll()V

    .line 124
    return-void
.end method
