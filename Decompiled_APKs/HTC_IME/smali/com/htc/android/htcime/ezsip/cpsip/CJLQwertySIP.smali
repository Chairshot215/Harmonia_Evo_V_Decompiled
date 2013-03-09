.class public Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "CJLQwertySIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CJPQwertySIP"


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

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 49
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->bNormalCJMode:Z

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "ChangJie Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x5

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 56
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 59
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 184
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 185
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 186
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 187
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 190
    :cond_0
    return v3
.end method

.method private setKeyboardByType()V
    .locals 6

    .prologue
    .line 114
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "cj_lqwerty_sip"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 119
    .local v2, targetXmlId:I
    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 120
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

    .line 122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.htc.android.htcime"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 124
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v2, v3, :cond_2

    .line 125
    :cond_1
    new-instance v3, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 127
    :cond_2
    return-void
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->closing()V

    .line 142
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 143
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 63
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 65
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->setKeyboardByType()V

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->setPopupOffset(II)V

    .line 69
    const/high16 v0, 0x300

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mSIP_ID:I

    .line 70
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mSIP_LP_ID:I

    .line 71
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 350
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 5
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x0

    .line 156
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 163
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 165
    .local v0, sendBtnIdx:I
    :goto_1
    const-string v1, "CJPQwertySIP"

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

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codes[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 172
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 163
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method protected onKeyUp(III)V
    .locals 10
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v9, 0x71c

    .line 198
    const-string v5, "CJPQwertySIP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onKeyUp]: ButtonIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v5, v5

    if-lt p1, v5, :cond_1

    .line 346
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->onInterceptKeyUp()Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, p1

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 209
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 210
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ne v3, v5, :cond_2

    const/16 v5, 0x20

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v6, v6, v4

    if-eq v5, v6, :cond_3

    .line 211
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/htc/android/htcime/util/htcDAM;->ProcessKeyInput(III)I

    move-result v0

    .line 212
    .local v0, newIndex:I
    if-eq v0, p1, :cond_3

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 214
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v7, v7, v4

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v8, v8, v0

    iget-object v8, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v8, v8, v4

    invoke-virtual {v5, v6, p0, v7, v8}, Lcom/htc/android/htcime/util/htcDAM;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V

    .line 215
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v0

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 216
    move p1, v0

    .line 222
    .end local v0           #newIndex:I
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v6, -0x3e7

    if-ne v5, v6, :cond_4

    move v1, p1

    .line 225
    .local v1, sendBtnIdx:I
    :goto_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v5, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 228
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 229
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {p0, v3, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(III)V

    goto :goto_0

    .line 222
    .end local v1           #sendBtnIdx:I
    :cond_4
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 232
    .restart local v1       #sendBtnIdx:I
    :cond_5
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v4

    sparse-switch v5, :sswitch_data_0

    .line 339
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    if-lez v3, :cond_0

    .line 340
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 341
    const/high16 v3, 0xf00

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v5, v4

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 234
    :sswitch_1
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 235
    const v3, 0x7300001

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 236
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto/16 :goto_0

    .line 240
    :sswitch_2
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 241
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->launchSettings()V

    goto/16 :goto_0

    .line 245
    :sswitch_3
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 246
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mLongPress:Z

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->launchSettings()V

    goto/16 :goto_0

    .line 253
    :sswitch_4
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 257
    :sswitch_5
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 258
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v5, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 259
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 262
    :sswitch_6
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 267
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 270
    :sswitch_7
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 271
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mLongPress:Z

    if-eqz v3, :cond_6

    .line 272
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 277
    :cond_6
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 282
    :sswitch_8
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 284
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 288
    :sswitch_9
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 292
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v5, :cond_7

    .line 293
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 294
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 297
    :cond_7
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->bNormalCJMode:Z

    if-nez v5, :cond_8

    :goto_2
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->bNormalCJMode:Z

    .line 299
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->bNormalCJMode:Z

    if-eqz v3, :cond_9

    .line 300
    const v3, 0x7400003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 306
    :goto_3
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v1

    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->bNormalCJMode:Z

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->invalidateAll()V

    .line 311
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 312
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->bNormalCJMode:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_8
    move v3, v4

    .line 297
    goto :goto_2

    .line 303
    :cond_9
    const v3, 0x7400004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    goto :goto_3

    .line 317
    :sswitch_a
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 322
    :sswitch_b
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 325
    :sswitch_c
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 328
    :sswitch_d
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 331
    :sswitch_e
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 334
    :sswitch_f
    const v3, 0xf000009

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        -0x38 -> :sswitch_9
        -0x1a -> :sswitch_f
        -0x18 -> :sswitch_7
        -0x17 -> :sswitch_8
        -0x15 -> :sswitch_c
        -0x14 -> :sswitch_b
        -0x13 -> :sswitch_e
        -0x12 -> :sswitch_d
        -0x10 -> :sswitch_6
        -0xf -> :sswitch_3
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_5
        0x8 -> :sswitch_0
        0xa -> :sswitch_4
        0x20 -> :sswitch_a
    .end sparse-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public startInput()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 78
    const/high16 v2, 0x748

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 80
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 81
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 84
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 85
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->bNormalCJMode:Z

    .line 87
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->bNormalCJMode:Z

    if-eqz v2, :cond_3

    .line 88
    const v2, 0x7400003

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    .line 92
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->setKeyboardByType()V

    .line 93
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 95
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x38

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 96
    .local v0, CJModeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 97
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->bNormalCJMode:Z

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 99
    :cond_0
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->setPreviewEnabled(Z)V

    .line 100
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 102
    :cond_1
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->updateFullscreenMode()V

    .line 103
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->setStatusIcon()V

    .line 105
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v4, v3}, Lcom/htc/android/htcime/util/htcDAM;->getDAMId(II)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/util/htcDAM;->LoadKeyboard(I[Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->invalidate()V

    .line 110
    return-void

    .line 90
    .end local v0           #CJModeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_3
    const v2, 0x7400004

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;->sendKeyEvent(I)V

    goto :goto_0
.end method
