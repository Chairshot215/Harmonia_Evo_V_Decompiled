.class public Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "PYPQwertySIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PYPQwertySIP"


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

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 48
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "PinYin Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0xd

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 53
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 54
    return-void
.end method

.method private isPinYinSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 124
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

    .line 158
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 159
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 160
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 161
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 162
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 165
    :cond_0
    return v3
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->closing()V

    .line 112
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 113
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "htcIMM"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 59
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mContext:Landroid/content/Context;

    const v2, 0x7f050048

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 60
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->setPopupOffset(II)V

    .line 63
    const/high16 v0, 0x300

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mSIP_ID:I

    .line 64
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mSIP_LP_ID:I

    .line 65
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 320
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 3
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 133
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 140
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 142
    .local v0, sendBtnIdx:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->isPinYinSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 147
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 140
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method protected onKeyMove(III)V
    .locals 0
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 316
    return-void
.end method

.method protected onKeyUp(III)V
    .locals 11
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v10, 0x704

    const/16 v9, 0x14

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x71c

    .line 173
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->onInterceptKeyUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 182
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v2, v2

    if-ne v8, v2, :cond_2

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v7

    if-eq v2, v3, :cond_3

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/htcime/util/htcDAM;->ProcessKeyInput(III)I

    move-result v0

    .line 185
    .local v0, newIndex:I
    if-eq v0, p1, :cond_3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 187
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v7

    invoke-virtual {v2, v3, p0, v4, v5}, Lcom/htc/android/htcime/util/htcDAM;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V

    .line 188
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 189
    move p1, v0

    .line 195
    .end local v0           #newIndex:I
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_4

    move v1, p1

    .line 198
    .local v1, sendBtnIdx:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->isPinYinSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(III)V

    goto :goto_0

    .line 195
    .end local v1           #sendBtnIdx:I
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 205
    .restart local v1       #sendBtnIdx:I
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v7

    sparse-switch v2, :sswitch_data_0

    .line 301
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v7

    if-lez v2, :cond_0

    .line 302
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 303
    const/high16 v2, 0xf00

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v7

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 207
    :sswitch_1
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 208
    const v2, 0x7300001

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 209
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto/16 :goto_0

    .line 213
    :sswitch_2
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 214
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 215
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->launchSettings()V

    goto/16 :goto_0

    .line 219
    :sswitch_3
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 220
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 221
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mLongPress:Z

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->launchSettings()V

    goto/16 :goto_0

    .line 228
    :sswitch_4
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 229
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mLongPress:Z

    if-eqz v2, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->launchSettings()V

    goto/16 :goto_0

    .line 234
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthKeyboardType()V

    goto/16 :goto_0

    .line 239
    :sswitch_5
    const/high16 v2, 0x743

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 245
    :sswitch_6
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 246
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 247
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v9, v7}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 251
    :sswitch_7
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 254
    :sswitch_8
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 259
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 262
    :sswitch_9
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 263
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mLongPress:Z

    if-eqz v2, :cond_7

    .line 264
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 269
    :cond_7
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 273
    :sswitch_a
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 275
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 279
    :sswitch_b
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 284
    :sswitch_c
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 287
    :sswitch_d
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 290
    :sswitch_e
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 293
    :sswitch_f
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v9}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_10
    const v2, 0xf000009

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a -> :sswitch_10
        -0x19 -> :sswitch_4
        -0x18 -> :sswitch_9
        -0x17 -> :sswitch_a
        -0x15 -> :sswitch_d
        -0x14 -> :sswitch_c
        -0x13 -> :sswitch_f
        -0x12 -> :sswitch_e
        -0x10 -> :sswitch_8
        -0xf -> :sswitch_3
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_6
        0x8 -> :sswitch_0
        0xa -> :sswitch_7
        0x20 -> :sswitch_b
        0xef -> :sswitch_5
    .end sparse-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public startInput()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 71
    const/high16 v0, 0x748

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->sendKeyEvent(I)V

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->initDefaultSetting(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 85
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->setPreviewEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->setStatusIcon()V

    .line 91
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/htc/android/htcime/util/htcDAM;->getDAMId(II)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/util/htcDAM;->LoadKeyboard(I[Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;->invalidate()V

    .line 96
    return-void
.end method
