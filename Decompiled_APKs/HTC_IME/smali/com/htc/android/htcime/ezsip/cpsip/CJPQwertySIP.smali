.class public Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "CJPQwertySIP.java"

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

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 49
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->bNormalCJMode:Z

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "ChangJie Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0x9

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 59
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 60
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 165
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 166
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 167
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 168
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 171
    :cond_0
    return v3
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->closing()V

    .line 123
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 124
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "htcIMM"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 64
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 65
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mContext:Landroid/content/Context;

    const v2, 0x7f050002

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->setPopupOffset(II)V

    .line 69
    const/high16 v0, 0x300

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mSIP_ID:I

    .line 70
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mSIP_LP_ID:I

    .line 71
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 339
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 5
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x0

    .line 137
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 144
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 146
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

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codes[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 153
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 144
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method protected onKeyMove(III)V
    .locals 0
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 335
    return-void
.end method

.method protected onKeyUp(III)V
    .locals 11
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/16 v10, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v9, 0x71c

    .line 179
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

    .line 181
    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v5, v5

    if-lt p1, v5, :cond_1

    .line 327
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->onInterceptKeyUp()Z

    move-result v5

    if-nez v5, :cond_0

    .line 188
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, p1

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 190
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 191
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ne v3, v5, :cond_2

    const/16 v5, 0x20

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v6, v6, v4

    if-eq v5, v6, :cond_3

    .line 192
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/htc/android/htcime/util/htcDAM;->ProcessKeyInput(III)I

    move-result v0

    .line 193
    .local v0, newIndex:I
    if-eq v0, p1, :cond_3

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 195
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v7, v7, v4

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v8, v8, v0

    iget-object v8, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v8, v8, v4

    invoke-virtual {v5, v6, p0, v7, v8}, Lcom/htc/android/htcime/util/htcDAM;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V

    .line 196
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v0

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 197
    move p1, v0

    .line 203
    .end local v0           #newIndex:I
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v6, -0x3e7

    if-ne v5, v6, :cond_4

    move v1, p1

    .line 206
    .local v1, sendBtnIdx:I
    :goto_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v5, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 210
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {p0, v3, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(III)V

    goto :goto_0

    .line 203
    .end local v1           #sendBtnIdx:I
    :cond_4
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 213
    .restart local v1       #sendBtnIdx:I
    :cond_5
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v4

    sparse-switch v5, :sswitch_data_0

    .line 320
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    if-lez v3, :cond_0

    .line 321
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 322
    const/high16 v3, 0xf00

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v5, v4

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 215
    :sswitch_1
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 216
    const v3, 0x7300001

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 217
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto/16 :goto_0

    .line 221
    :sswitch_2
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 222
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->launchSettings()V

    goto/16 :goto_0

    .line 226
    :sswitch_3
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 227
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mLongPress:Z

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->launchSettings()V

    goto/16 :goto_0

    .line 234
    :sswitch_4
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 238
    :sswitch_5
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 239
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v5, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 240
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3, v10, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 243
    :sswitch_6
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 248
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 251
    :sswitch_7
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 252
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mLongPress:Z

    if-eqz v3, :cond_6

    .line 253
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 258
    :cond_6
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 263
    :sswitch_8
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 265
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 269
    :sswitch_9
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 273
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v5, :cond_7

    .line 274
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 275
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 278
    :cond_7
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->bNormalCJMode:Z

    if-nez v5, :cond_8

    :goto_2
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->bNormalCJMode:Z

    .line 280
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->bNormalCJMode:Z

    if-eqz v3, :cond_9

    .line 281
    const v3, 0x7400003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 287
    :goto_3
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v1

    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->bNormalCJMode:Z

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->invalidateAll()V

    .line 291
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 292
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->bNormalCJMode:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_8
    move v3, v4

    .line 278
    goto :goto_2

    .line 284
    :cond_9
    const v3, 0x7400004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    goto :goto_3

    .line 297
    :sswitch_a
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 302
    :sswitch_b
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 305
    :sswitch_c
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 308
    :sswitch_d
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 311
    :sswitch_e
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3, v10}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 314
    :sswitch_f
    const v3, 0xf000009

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 213
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
    .line 118
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public startInput()V
    .locals 5

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 77
    const/high16 v2, 0x748

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 79
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 80
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 83
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->bNormalCJMode:Z

    .line 86
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->bNormalCJMode:Z

    if-eqz v2, :cond_3

    .line 87
    const v2, 0x7400003

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 93
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x38

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 94
    .local v0, CJModeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 95
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->bNormalCJMode:Z

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 97
    :cond_0
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->setPreviewEnabled(Z)V

    .line 98
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->setStatusIcon()V

    .line 102
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->invalidate()V

    .line 104
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/htc/android/htcime/util/htcDAM;->getDAMId(II)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/util/htcDAM;->LoadKeyboard(I[Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    .line 107
    :cond_2
    return-void

    .line 89
    .end local v0           #CJModeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_3
    const v2, 0x7400004

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;->sendKeyEvent(I)V

    goto :goto_0
.end method
