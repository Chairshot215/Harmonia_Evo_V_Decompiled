.class public Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "PYP12SIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field protected static final DEBUG_DUMP:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PYP12SIP"

.field private static final MAX_PAGE_ELEMENT_COUNT:I = 0x4

.field private static final SIP_LAYOUT_NORMAL:I = 0x1

.field private static final SIP_LAYOUT_SPELL_LAST:I = 0x3

.field private static final SIP_LAYOUT_SPELL_NAVI:I = 0x4

.field private static final SIP_LAYOUT_SPELL_ONLY:I = 0x2


# instance fields
.field private mActivePhonIndex:I

.field private mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

.field private mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mPhonListStart:I

.field private mPreIMEStatus:I

.field private mSipSplitType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 48
    iput v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPreIMEStatus:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    .line 50
    iput v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "PinYin 12Key"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0xc

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 75
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 185
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 186
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 187
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 188
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 191
    :cond_0
    return v3
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->closing()V

    .line 133
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 134
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "htcIMM"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 79
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 80
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mContext:Landroid/content/Context;

    const v2, 0x7f050047

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->setPopupOffset(II)V

    .line 84
    const/high16 v0, 0x100

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSIP_ID:I

    .line 85
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSIP_LP_ID:I

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 88
    return-void
.end method

.method initPhonKeys()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 536
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0xf2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    aput-object v1, v0, v4

    .line 537
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0xf3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    aput-object v1, v0, v3

    .line 538
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0xf4

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    aput-object v1, v0, v5

    .line 539
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0xf5

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    aput-object v1, v0, v6

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 542
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 543
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 544
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 545
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 546
    return-void
.end method

.method protected isPYSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 145
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
    .locals 7
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x4

    const/4 v6, 0x1

    .line 469
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellCount()I

    move-result v0

    .line 470
    .local v0, count:I
    if-le v0, v1, :cond_0

    move v2, v4

    .line 472
    .local v2, page_count:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 533
    :goto_1
    :pswitch_0
    return-void

    .end local v2           #page_count:I
    :cond_0
    move v2, v0

    .line 470
    goto :goto_0

    .line 474
    .restart local v2       #page_count:I
    :pswitch_1
    const-string v3, "PYP12SIP"

    const-string v4, "[PY_12]XT9IMEDef.ACTION_SIP_ONLY_JIANPIN_SPELLING"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    if-eq v6, v3, :cond_1

    .line 476
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 477
    iput v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto :goto_1

    .line 482
    :pswitch_2
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_1

    .line 485
    :pswitch_4
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    if-eq v6, v3, :cond_2

    .line 486
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 487
    iput v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    .line 489
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto :goto_1

    .line 492
    :pswitch_5
    if-le v0, v1, :cond_4

    .line 494
    .local v1, new_type:I
    :goto_2
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    if-eq v1, v4, :cond_3

    .line 495
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 496
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    .line 497
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->initPhonKeys()V

    .line 500
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    .line 501
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    if-lt v4, v0, :cond_5

    :goto_3
    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    .line 502
    const-string v3, "PYP12SIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PY_12]ACTION_SIP_UPDATE_STATUS to MIX_SPELLING_CANDIDATE (index,start)=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->updatePhonList()V

    .line 505
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto/16 :goto_1

    .line 492
    .end local v1           #new_type:I
    :cond_4
    const/4 v1, 0x2

    goto :goto_2

    .line 501
    .restart local v1       #new_type:I
    :cond_5
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    div-int/2addr v3, v2

    mul-int/2addr v3, v2

    goto :goto_3

    .line 512
    .end local v1           #new_type:I
    :pswitch_6
    iput p2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    .line 513
    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    if-lt v5, v0, :cond_7

    :goto_4
    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    .line 514
    const-string v3, "PYP12SIP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PY_12]ACTION_SIP_UPDATE_SPELLING (index,start,count)=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    if-gt v0, v1, :cond_8

    .line 517
    const/4 v1, 0x2

    .line 521
    .restart local v1       #new_type:I
    :goto_5
    const-string v3, "PYP12SIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PY_12]ACTION_SIP_UPDATE_SPELLING SIP_TYPE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    if-eq v1, v3, :cond_6

    .line 524
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 525
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    .line 526
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->initPhonKeys()V

    .line 529
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->updatePhonList()V

    .line 530
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto/16 :goto_1

    .line 513
    .end local v1           #new_type:I
    :cond_7
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    div-int/2addr v3, v2

    mul-int/2addr v3, v2

    goto :goto_4

    .line 519
    :cond_8
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_9

    move v1, v4

    .restart local v1       #new_type:I
    :cond_9
    goto :goto_5

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 482
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 6
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v5, 0x0

    .line 154
    const/4 v0, 0x1

    .line 155
    .local v0, bHandled:Z
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 162
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_2

    move v1, p1

    .line 164
    .local v1, sendBtnIdx:I
    :goto_1
    const-string v2, "PYP12SIP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onKeyDown]: ButtonIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v4}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " codes[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->isPYSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 171
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 162
    .end local v1           #sendBtnIdx:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 175
    .restart local v1       #sendBtnIdx:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyMove(III)V
    .locals 0
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 415
    return-void
.end method

.method public onKeyUp(III)V
    .locals 11
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x746

    const/high16 v8, 0x71c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 199
    const-string v3, "PYP12SIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onClick]: ButtonIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v3, v3

    if-lt p1, v3, :cond_1

    .line 407
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->onInterceptKeyUp()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, p1

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 212
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v4, -0x3e7

    if-ne v3, v4, :cond_2

    move v2, p1

    .line 215
    .local v2, sendBtnIdx:I
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v3, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->isPYSymb(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSIP_ID:I

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 212
    .end local v2           #sendBtnIdx:I
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 222
    .restart local v2       #sendBtnIdx:I
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    sparse-switch v3, :sswitch_data_0

    .line 398
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    if-lez v3, :cond_0

    .line 399
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 400
    const/high16 v3, 0xf00

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 401
    iput v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    goto :goto_0

    .line 224
    :sswitch_1
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 225
    const v3, 0x7300001

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 226
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 230
    :sswitch_2
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 231
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->launchSettings()V

    goto :goto_0

    .line 235
    :sswitch_3
    const-string v3, "PYP12SIP"

    const-string v4, "[PY_12]KEYCODE_LANG_SWITCH"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 238
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mLongPress:Z

    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->launchSettings()V

    goto :goto_0

    .line 245
    :sswitch_4
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 246
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mLongPress:Z

    if-eqz v3, :cond_4

    .line 247
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->launchSettings()V

    goto/16 :goto_0

    .line 251
    :cond_4
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthKeyboardType()V

    goto/16 :goto_0

    .line 255
    :sswitch_5
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSIP_ID:I

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 260
    :sswitch_6
    const/high16 v3, 0x743

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 265
    :sswitch_7
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 266
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 267
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 271
    :sswitch_8
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 276
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 279
    :sswitch_9
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 280
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mLongPress:Z

    if-eqz v3, :cond_5

    .line 281
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 286
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 290
    :sswitch_a
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellCount()I

    move-result v0

    .line 291
    .local v0, count:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    if-lez v3, :cond_0

    .line 292
    const/4 v1, 0x4

    .line 294
    .local v1, new_type:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    if-eq v1, v3, :cond_6

    .line 295
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 296
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    .line 297
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->initPhonKeys()V

    .line 300
    :cond_6
    iput v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    .line 301
    const-string v3, "PYP12SIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PY_12]KEYCODE_PHON_LIST_UP (mPhonListStart, new_type)=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->updatePhonList()V

    .line 303
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 309
    .end local v0           #count:I
    .end local v1           #new_type:I
    :sswitch_b
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellCount()I

    move-result v0

    .line 311
    .restart local v0       #count:I
    const/4 v3, 0x4

    if-gt v0, v3, :cond_8

    .line 312
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 313
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    if-eq v3, v4, :cond_0

    .line 314
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 315
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 316
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 317
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 318
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 322
    :cond_8
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    .line 324
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_9

    .line 325
    const/4 v1, 0x3

    .line 327
    .restart local v1       #new_type:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    if-eq v1, v3, :cond_9

    .line 328
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 329
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    .line 330
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->initPhonKeys()V

    .line 334
    .end local v1           #new_type:I
    :cond_9
    const-string v3, "PYP12SIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PY_12]KEYCODE_PHON_LIST_DOWN (mPhonListStart, new_type)=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->updatePhonList()V

    .line 336
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 341
    .end local v0           #count:I
    :sswitch_c
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 342
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    or-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 343
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v6

    if-eq v3, v4, :cond_0

    .line 344
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 345
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 346
    :cond_a
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v6

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 347
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    .line 348
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 354
    :sswitch_d
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 355
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v7

    if-eq v3, v4, :cond_0

    .line 356
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 357
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 358
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 359
    :cond_b
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v7

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 360
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    .line 361
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 367
    :sswitch_e
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 368
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v10

    if-eq v3, v4, :cond_0

    .line 369
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 370
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 371
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 372
    :cond_c
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v10

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 373
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    .line 374
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 379
    :sswitch_f
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSIP_ID:I

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 384
    :sswitch_10
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 387
    :sswitch_11
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 390
    :sswitch_12
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 393
    :sswitch_13
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        -0x19 -> :sswitch_4
        -0x18 -> :sswitch_9
        -0x15 -> :sswitch_11
        -0x14 -> :sswitch_10
        -0x13 -> :sswitch_13
        -0x12 -> :sswitch_12
        -0x10 -> :sswitch_8
        -0xf -> :sswitch_3
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_7
        0x8 -> :sswitch_0
        0xa -> :sswitch_5
        0x20 -> :sswitch_f
        0xef -> :sswitch_6
        0xf2 -> :sswitch_c
        0xf3 -> :sswitch_d
        0xf4 -> :sswitch_e
        0xf5 -> :sswitch_b
        0xf6 -> :sswitch_a
    .end sparse-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public startInput()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 100
    const/high16 v0, 0x748

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 102
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 103
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 105
    const/high16 v0, 0x740

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->sendKeyEvent(I)V

    .line 107
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->initDefaultSetting(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 109
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 111
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->setPreviewEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mSipSplitType:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPreIMEStatus:I

    .line 118
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->initPhonKeys()V

    .line 121
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->setStatusIcon()V

    .line 122
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->invalidateAll()V

    .line 123
    return-void
.end method

.method public updatePhonList()V
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x2

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 438
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellCount()I

    move-result v0

    .line 439
    .local v0, count:I
    if-le v0, v3, :cond_0

    move v3, v4

    .line 442
    .local v3, page_count:I
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v7

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 443
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v7

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 444
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v6

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 445
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v6

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 446
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v8

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 447
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v8

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 448
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v4

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 449
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v5, v4

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 451
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 453
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 454
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonListStart:I

    add-int v1, v4, v2

    .line 455
    .local v1, ele_index:I
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v4, v2

    if-lt v1, v0, :cond_4

    const-string v4, ""

    :goto_1
    iput-object v4, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 457
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v5, ""

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    .line 458
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 460
    :cond_2
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonIndex:I

    if-ne v4, v1, :cond_3

    .line 461
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 462
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 453
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :cond_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/PYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v4, v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 465
    .end local v1           #ele_index:I
    :cond_5
    return-void
.end method
