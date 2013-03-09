.class public Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "StrokePQwertySIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StrokePQwertySIP"


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

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Stroke Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0xf

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 53
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 56
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 153
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 154
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 155
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 156
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 159
    :cond_0
    return v3
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->closing()V

    .line 106
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 107
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "htcIMM"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 60
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 61
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mContext:Landroid/content/Context;

    const v2, 0x7f050058

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 62
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->setPopupOffset(II)V

    .line 65
    const/high16 v0, 0x300

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mSIP_ID:I

    .line 66
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mSIP_LP_ID:I

    .line 67
    return-void
.end method

.method protected isStroke(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 4
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 120
    .local v0, keyCode:I
    const/16 v2, 0x31

    if-lt v0, v2, :cond_0

    const/16 v2, 0x35

    if-gt v0, v2, :cond_0

    iget v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-eq v2, v3, :cond_0

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
    .line 300
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 5
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x0

    .line 127
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 134
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 136
    .local v0, sendBtnIdx:I
    :goto_1
    const-string v1, "StrokePQwertySIP"

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

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codes[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->isStroke(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 142
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 134
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method protected onKeyMove(III)V
    .locals 0
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 296
    return-void
.end method

.method protected onKeyUp(III)V
    .locals 7
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/high16 v4, 0x71c

    .line 167
    const-string v1, "StrokePQwertySIP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onKeyUp]: ButtonIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->onInterceptKeyUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 179
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 182
    .local v0, sendBtnIdx:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->isStroke(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(III)V

    goto :goto_0

    .line 179
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 188
    .restart local v0       #sendBtnIdx:I
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    sparse-switch v1, :sswitch_data_0

    .line 281
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    if-lez v1, :cond_0

    .line 282
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 283
    const/high16 v1, 0xf00

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 190
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 191
    const v1, 0x7300001

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 192
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 196
    :sswitch_2
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 197
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->launchSettings()V

    goto :goto_0

    .line 201
    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 202
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mLongPress:Z

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->launchSettings()V

    goto :goto_0

    .line 209
    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 210
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mLongPress:Z

    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->launchSettings()V

    goto :goto_0

    .line 215
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthKeyboardType()V

    goto/16 :goto_0

    .line 219
    :sswitch_5
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 227
    :sswitch_6
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 228
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 229
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v6, v5}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 232
    :sswitch_7
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 237
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 240
    :sswitch_8
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 241
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mLongPress:Z

    if-eqz v1, :cond_5

    .line 242
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 247
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 252
    :sswitch_9
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 254
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 258
    :sswitch_a
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 261
    :sswitch_b
    const/high16 v1, 0x743

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 266
    :sswitch_c
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 269
    :sswitch_d
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 272
    :sswitch_e
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 275
    :sswitch_f
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v6}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 278
    :sswitch_10
    const v1, 0xf000009

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        -0x39 -> :sswitch_5
        -0x1a -> :sswitch_10
        -0x19 -> :sswitch_4
        -0x18 -> :sswitch_8
        -0x17 -> :sswitch_9
        -0x15 -> :sswitch_d
        -0x14 -> :sswitch_c
        -0x13 -> :sswitch_f
        -0x12 -> :sswitch_e
        -0x10 -> :sswitch_7
        -0xf -> :sswitch_3
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_6
        0x8 -> :sswitch_0
        0xa -> :sswitch_5
        0x20 -> :sswitch_a
        0xef -> :sswitch_b
    .end sparse-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public startInput()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 73
    const/high16 v0, 0x748

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 76
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 80
    const v0, 0x7400002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->sendKeyEvent(I)V

    .line 82
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 84
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->setPreviewEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->setStatusIcon()V

    .line 89
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;->invalidate()V

    .line 90
    return-void
.end method
