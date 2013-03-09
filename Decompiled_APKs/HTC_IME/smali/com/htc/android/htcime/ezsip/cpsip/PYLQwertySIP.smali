.class public Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "PYLQwertySIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PYLQwertySIP"


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

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "PinYin Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x6

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 53
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 54
    return-void
.end method

.method private isPinYinSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 140
    .local v0, code:I
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 174
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 175
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 176
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 177
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 180
    :cond_0
    return v3
.end method

.method private setKeyboardByType()V
    .locals 6

    .prologue
    .line 99
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "py_lqwerty_sip"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 104
    .local v2, targetXmlId:I
    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 105
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

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.htc.android.htcime"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 109
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v2, v3, :cond_2

    .line 110
    :cond_1
    new-instance v3, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 112
    :cond_2
    return-void
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->closing()V

    .line 128
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 129
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 60
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->setKeyboardByType()V

    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->setPopupOffset(II)V

    .line 64
    const/high16 v0, 0x300

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mSIP_ID:I

    .line 65
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mSIP_LP_ID:I

    .line 66
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 322
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 3
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 149
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 156
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 158
    .local v0, sendBtnIdx:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->isPinYinSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 163
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 156
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method protected onKeyUp(III)V
    .locals 9
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x71c

    .line 187
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->onInterceptKeyUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 196
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v2, v2

    if-ne v8, v2, :cond_2

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v7

    if-eq v2, v3, :cond_3

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/htcime/util/htcDAM;->ProcessKeyInput(III)I

    move-result v0

    .line 199
    .local v0, newIndex:I
    if-eq v0, p1, :cond_3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 201
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v7

    invoke-virtual {v2, v3, p0, v4, v5}, Lcom/htc/android/htcime/util/htcDAM;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V

    .line 202
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 203
    move p1, v0

    .line 209
    .end local v0           #newIndex:I
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_4

    move v1, p1

    .line 212
    .local v1, sendBtnIdx:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->isPinYinSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(III)V

    goto :goto_0

    .line 209
    .end local v1           #sendBtnIdx:I
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 221
    .restart local v1       #sendBtnIdx:I
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v7

    sparse-switch v2, :sswitch_data_0

    .line 306
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v7

    if-lez v2, :cond_0

    .line 307
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 308
    const/high16 v2, 0xf00

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v7

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 223
    :sswitch_1
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 224
    const v2, 0x7300001

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 225
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto/16 :goto_0

    .line 229
    :sswitch_2
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 230
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->launchSettings()V

    goto/16 :goto_0

    .line 234
    :sswitch_3
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 235
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mLongPress:Z

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->launchSettings()V

    goto/16 :goto_0

    .line 243
    :sswitch_4
    const/high16 v2, 0x743

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 249
    :sswitch_5
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 250
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 251
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v7}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 255
    :sswitch_6
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 260
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 263
    :sswitch_7
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 264
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mLongPress:Z

    if-eqz v2, :cond_6

    .line 265
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 270
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 275
    :sswitch_8
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 277
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 281
    :sswitch_9
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 284
    :sswitch_a
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 289
    :sswitch_b
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 292
    :sswitch_c
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 295
    :sswitch_d
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 298
    :sswitch_e
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 301
    :sswitch_f
    const v2, 0xf000009

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 221
    :sswitch_data_0
    .sparse-switch
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
        0xa -> :sswitch_9
        0x20 -> :sswitch_a
        0xef -> :sswitch_4
    .end sparse-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public startInput()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 72
    const/high16 v0, 0x748

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->sendKeyEvent(I)V

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 77
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->initDefaultSetting(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 79
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->setKeyboardByType()V

    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 82
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->setPreviewEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->updateFullscreenMode()V

    .line 88
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->setStatusIcon()V

    .line 90
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/htc/android/htcime/util/htcDAM;->getDAMId(II)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/util/htcDAM;->LoadKeyboard(I[Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;->invalidate()V

    .line 95
    return-void
.end method

.method public updateIMEStatus(I)V
    .locals 0
    .parameter "new_status"

    .prologue
    .line 318
    return-void
.end method
