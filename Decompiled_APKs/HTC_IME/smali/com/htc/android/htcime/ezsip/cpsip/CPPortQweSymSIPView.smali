.class public Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "CPPortQweSymSIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final TAG:Ljava/lang/String; = "CPPortQweSymSIPView"


# instance fields
.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

.field private mSymbHalfWidth:Z

.field private userPrefHalfKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Portrait Qwerty Symbol"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0x14

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 59
    return-void
.end method

.method private onInterceptClick()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 192
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 194
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v1, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    move v1, v2

    .line 198
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public AddWordDisableButtons(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mAddWordFlag:Z

    .line 185
    return-void
.end method

.method public finishInput()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->closing()V

    .line 156
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->finishInput()V

    .line 157
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    const/4 v3, 0x0

    .line 68
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 70
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000d

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 71
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->setPopupOffset(II)V

    .line 74
    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSIP_ID:I

    .line 75
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSIP_LP_ID:I

    .line 76
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 342
    return-void
.end method

.method public onClick(III)V
    .locals 9
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v8, 0xf00

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 214
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->onInterceptClick()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v6, p1

    .line 219
    .local v3, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v6, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v6, v4

    .line 220
    .local v0, code:I
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 221
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v6, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v6, v6

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lez v6, :cond_2

    .line 222
    iget-object v6, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v7, v7, -0x1

    aget v0, v6, v7

    .line 223
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 334
    or-int v4, v8, v0

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 226
    :sswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 229
    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mAddWordFlag:Z

    if-nez v5, :cond_0

    .line 230
    const v5, 0xf000020

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->sendKeyEvent(I)V

    .line 231
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v5, v6, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 235
    :sswitch_2
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v6, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 236
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v5, v6, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 240
    :sswitch_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto :goto_0

    .line 244
    :sswitch_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x43

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 248
    :sswitch_5
    if-eqz v2, :cond_0

    .line 250
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 251
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 252
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    or-int/2addr v4, v8

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->sendKeyEvent(I)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_3
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 259
    .end local v1           #i:I
    :sswitch_6
    if-eqz v2, :cond_0

    .line 261
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 262
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multichars:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 263
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multichars:Ljava/lang/CharSequence;

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    or-int/2addr v4, v8

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->sendKeyEvent(I)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 265
    :cond_4
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 269
    .end local v1           #i:I
    :sswitch_7
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 270
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    if-le v4, v7, :cond_5

    move v4, v5

    :goto_3
    iput v4, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 272
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    packed-switch v4, :pswitch_data_0

    .line 278
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 282
    :goto_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 287
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 270
    :cond_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    goto :goto_3

    .line 275
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto :goto_4

    .line 291
    :sswitch_8
    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    if-nez v6, :cond_6

    move v4, v5

    :cond_6
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    .line 293
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->isSingleLine:Z

    if-nez v4, :cond_7

    .line 294
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 295
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    :cond_7
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    if-eqz v4, :cond_8

    .line 300
    new-instance v4, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mContext:Landroid/content/Context;

    const v7, 0x7f05000d

    invoke-direct {v4, v6, v7}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 306
    :goto_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 307
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v6, 0x3

    iput v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 308
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iput v5, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 309
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 314
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0x37

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 303
    :cond_8
    new-instance v4, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mContext:Landroid/content/Context;

    const v7, 0x7f05000c

    invoke-direct {v4, v6, v7}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    goto :goto_5

    .line 321
    :sswitch_9
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 324
    :sswitch_a
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 327
    :sswitch_b
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 330
    :sswitch_c
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e -> :sswitch_6
        -0x37 -> :sswitch_8
        -0x15 -> :sswitch_a
        -0x14 -> :sswitch_9
        -0x13 -> :sswitch_c
        -0x12 -> :sswitch_b
        -0xd -> :sswitch_5
        -0xc -> :sswitch_7
        -0xb -> :sswitch_2
        -0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0xa -> :sswitch_3
        0x20 -> :sswitch_1
    .end sparse-switch

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public startInput()V
    .locals 7

    .prologue
    const v2, 0x7f05000d

    const v3, 0x7f05000c

    const/4 v6, 0x1

    .line 85
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->startInput()V

    .line 87
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPID()I

    move-result v0

    .line 88
    .local v0, act_sip:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090308

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    .line 90
    const/4 v4, 0x6

    if-gt v0, v4, :cond_3

    .line 93
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->isSingleLine:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    .line 98
    :goto_0
    new-instance v4, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    if-eqz v6, :cond_2

    :goto_1
    invoke-direct {v4, v5, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 99
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v3, 0x3

    iput v3, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 136
    :goto_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 141
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x37

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 142
    .local v1, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v1, :cond_0

    .line 143
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->invalidateAll()V

    .line 146
    return-void

    .line 96
    .end local v1           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_1
    iput-boolean v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    goto :goto_0

    :cond_2
    move v2, v3

    .line 98
    goto :goto_1

    .line 123
    :cond_3
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->isSingleLine:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 124
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    .line 131
    :goto_3
    new-instance v4, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    if-eqz v6, :cond_5

    :goto_4
    invoke-direct {v4, v5, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    goto :goto_2

    .line 126
    :cond_4
    iput-boolean v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPPortQweSymSIPView;->mSymbHalfWidth:Z

    goto :goto_3

    :cond_5
    move v2, v3

    .line 131
    goto :goto_4
.end method
