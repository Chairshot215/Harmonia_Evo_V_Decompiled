.class public Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "StrokeLQwertySIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StrokeLQwertySIP"


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

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Stroke Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x7

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 53
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 54
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 175
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 176
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 177
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 178
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 181
    :cond_0
    return v3
.end method

.method private setKeyboardByType()V
    .locals 6

    .prologue
    .line 98
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "stroke_lqwerty_sip"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 103
    .local v2, targetXmlId:I
    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 104
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

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.htc.android.htcime"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 108
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v2, v3, :cond_2

    .line 109
    :cond_1
    new-instance v3, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->closing()V

    .line 127
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 128
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 60
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->setKeyboardByType()V

    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->setPopupOffset(II)V

    .line 64
    const/high16 v0, 0x800

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mSIP_ID:I

    .line 65
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mSIP_LP_ID:I

    .line 70
    return-void
.end method

.method protected isStroke(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 4
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 141
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
    .line 313
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 5
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x0

    .line 148
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 155
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 157
    .local v0, sendBtnIdx:I
    :goto_1
    const-string v1, "StrokeLQwertySIP"

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

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codes[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->isStroke(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 164
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 155
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1
.end method

.method protected onKeyUp(III)V
    .locals 6
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x71c

    .line 189
    const-string v1, "StrokeLQwertySIP"

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

    .line 191
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->onInterceptKeyUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 201
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_2

    move v0, p1

    .line 204
    .local v0, sendBtnIdx:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->isStroke(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(III)V

    goto :goto_0

    .line 201
    .end local v0           #sendBtnIdx:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 211
    .restart local v0       #sendBtnIdx:I
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    sparse-switch v1, :sswitch_data_0

    .line 298
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    if-lez v1, :cond_0

    .line 299
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 300
    const/high16 v1, 0xf00

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 213
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 214
    const v1, 0x7300001

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 215
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 219
    :sswitch_2
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 220
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->launchSettings()V

    goto :goto_0

    .line 224
    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 225
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mLongPress:Z

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->launchSettings()V

    goto :goto_0

    .line 233
    :sswitch_4
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 241
    :sswitch_5
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 242
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 243
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 246
    :sswitch_6
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 251
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 254
    :sswitch_7
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 255
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mLongPress:Z

    if-eqz v1, :cond_4

    .line 256
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 261
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 266
    :sswitch_8
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 268
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 272
    :sswitch_9
    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mSIP_ID:I

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 276
    :sswitch_a
    const/high16 v1, 0x743

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 282
    :sswitch_b
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 285
    :sswitch_c
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 288
    :sswitch_d
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 291
    :sswitch_e
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 294
    :sswitch_f
    const v1, 0xf000009

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x39 -> :sswitch_4
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
        0x20 -> :sswitch_9
        0xef -> :sswitch_a
    .end sparse-switch
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
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 76
    const/high16 v0, 0x748

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 78
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 79
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 81
    const v0, 0x7400002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->sendKeyEvent(I)V

    .line 83
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->setKeyboardByType()V

    .line 84
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 86
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->setPreviewEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->updateFullscreenMode()V

    .line 92
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->setStatusIcon()V

    .line 93
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;->invalidate()V

    .line 94
    return-void
.end method

.method public updateIMEStatus(I)V
    .locals 0
    .parameter "new_status"

    .prologue
    .line 309
    return-void
.end method
