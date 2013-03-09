.class public Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "CPLandQweSymSIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final TAG:Ljava/lang/String; = "CPLandQweSymSIPView"


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
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Landscape Qwerty Symbol"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0x8

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 60
    return-void
.end method

.method private onInterceptClick()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 216
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 217
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 219
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    invoke-virtual {v1, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    move v1, v2

    .line 223
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private setKeyboardByType()V
    .locals 6

    .prologue
    .line 155
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    .local v1, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 157
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    if-eqz v3, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "cp_land_qwe_symbol_sip"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :goto_0
    const/4 v2, -0x1

    .line 164
    .local v2, targetXmlId:I
    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 165
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

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.htc.android.htcime"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 170
    new-instance v3, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 172
    return-void

    .line 160
    .end local v2           #targetXmlId:I
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "cp_land_qwe_full_symbol_sip"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto :goto_0
.end method


# virtual methods
.method public AddWordDisableButtons(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 210
    return-void
.end method

.method public finishInput()V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->closing()V

    .line 182
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->finishInput()V

    .line 183
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "htcIMM"

    .prologue
    const/4 v2, 0x0

    .line 69
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 70
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 72
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->setKeyboardByType()V

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 74
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->setPopupOffset(II)V

    .line 76
    iput v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSIP_ID:I

    .line 77
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSIP_LP_ID:I

    .line 78
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 354
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

    .line 239
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->onInterceptClick()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v6, p1

    .line 244
    .local v3, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v6, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v6, v4

    .line 245
    .local v0, code:I
    iget-object v6, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v6, v6

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lez v6, :cond_2

    .line 246
    iget-object v6, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v7, v7, -0x1

    aget v0, v6, v7

    .line 247
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 346
    or-int v4, v8, v0

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 250
    :sswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 253
    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mAddWordFlag:Z

    if-nez v5, :cond_0

    .line 254
    const v5, 0xf000020

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->sendKeyEvent(I)V

    .line 255
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    invoke-virtual {v5, v6, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 259
    :sswitch_2
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v6, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 260
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    invoke-virtual {v5, v6, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 264
    :sswitch_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto :goto_0

    .line 268
    :sswitch_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x43

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 271
    :sswitch_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 272
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 274
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 275
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 276
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    or-int/2addr v4, v8

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->sendKeyEvent(I)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_3
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 281
    .end local v1           #i:I
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 282
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    if-le v4, v7, :cond_4

    move v4, v5

    :goto_2
    iput v4, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 284
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    packed-switch v4, :pswitch_data_0

    .line 290
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 294
    :goto_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 299
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 282
    :cond_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    goto :goto_2

    .line 287
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto :goto_3

    .line 303
    :sswitch_7
    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    if-nez v6, :cond_5

    move v4, v5

    :cond_5
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    .line 305
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->isSingleLine:Z

    if-nez v4, :cond_6

    .line 306
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 307
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->setKeyboardByType()V

    .line 319
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 320
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v6, 0x3

    iput v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 321
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iput v5, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 322
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 327
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0x37

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 328
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 334
    :sswitch_8
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 337
    :sswitch_9
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 340
    :sswitch_a
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 343
    :sswitch_b
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        -0x37 -> :sswitch_7
        -0x15 -> :sswitch_9
        -0x14 -> :sswitch_8
        -0x13 -> :sswitch_b
        -0x12 -> :sswitch_a
        -0xd -> :sswitch_5
        -0xc -> :sswitch_6
        -0xb -> :sswitch_2
        -0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0xa -> :sswitch_3
        0x20 -> :sswitch_1
    .end sparse-switch

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public startInput()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 87
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->startInput()V

    .line 89
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPID()I

    move-result v0

    .line 90
    .local v0, act_sip:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    .line 92
    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    .line 95
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->isSingleLine:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    .line 102
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->setKeyboardByType()V

    .line 103
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v3, 0x3

    iput v3, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 141
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 146
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x37

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 147
    .local v1, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v1, :cond_0

    .line 148
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->invalidateAll()V

    .line 151
    return-void

    .line 98
    .end local v1           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_1
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    goto :goto_0

    .line 128
    :cond_2
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->isSingleLine:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    .line 136
    :goto_2
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->setKeyboardByType()V

    goto :goto_1

    .line 131
    :cond_3
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CPLandQweSymSIPView;->mSymbHalfWidth:Z

    goto :goto_2
.end method
