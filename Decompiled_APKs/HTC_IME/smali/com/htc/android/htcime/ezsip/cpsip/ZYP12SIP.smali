.class public Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;
.super Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.source "ZYP12SIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field protected static final DEBUG_DUMP:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ZYP12SIP"

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

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 46
    iput v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPreIMEStatus:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    .line 48
    iput v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "ZhuYin 12Key"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0xa

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 70
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 73
    return-void
.end method

.method private onInterceptKeyUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 181
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 182
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 183
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 184
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 187
    :cond_0
    return v3
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->closing()V

    .line 131
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->finishInput()V

    .line 132
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "htcIMM"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 78
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 79
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mContext:Landroid/content/Context;

    const v2, 0x7f05005a

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->setPopupOffset(II)V

    .line 83
    const/high16 v0, 0x100

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSIP_ID:I

    .line 84
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSIP_LP_ID:I

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 87
    return-void
.end method

.method initPhonKeys()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 507
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0xf2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    aput-object v1, v0, v4

    .line 508
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0xf3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    aput-object v1, v0, v3

    .line 509
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0xf4

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    aput-object v1, v0, v5

    .line 510
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0xf5

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    aput-object v1, v0, v6

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 513
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 514
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 515
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 516
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 517
    return-void
.end method

.method protected isBPMFPhonetic(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v2, v1

    .line 143
    .local v0, keyCode:I
    const/16 v2, 0x31

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x23

    if-eq v2, v0, :cond_1

    const/16 v2, 0x2a

    if-ne v2, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
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

    .line 442
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellCount()I

    move-result v0

    .line 443
    .local v0, count:I
    if-le v0, v1, :cond_0

    move v2, v4

    .line 445
    .local v2, page_count:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 504
    :goto_1
    :pswitch_0
    return-void

    .end local v2           #page_count:I
    :cond_0
    move v2, v0

    .line 443
    goto :goto_0

    .line 447
    .restart local v2       #page_count:I
    :pswitch_1
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    if-eq v6, v3, :cond_1

    .line 448
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 449
    iput v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto :goto_1

    .line 454
    :pswitch_2
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_1

    .line 457
    :pswitch_4
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    if-eq v6, v3, :cond_2

    .line 458
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 459
    iput v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto :goto_1

    .line 464
    :pswitch_5
    if-le v0, v1, :cond_4

    .line 466
    .local v1, new_type:I
    :goto_2
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    if-eq v1, v4, :cond_3

    .line 467
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 468
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    .line 469
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->initPhonKeys()V

    .line 472
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    .line 473
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    if-lt v4, v0, :cond_5

    :goto_3
    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    .line 474
    const-string v3, "ZYP12SIP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PY_12]ACTION_SIP_UPDATE_STATUS to MIX_SPELLING_CANDIDATE (index,start)=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->updatePhonList()V

    .line 477
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto :goto_1

    .line 464
    .end local v1           #new_type:I
    :cond_4
    const/4 v1, 0x2

    goto :goto_2

    .line 473
    .restart local v1       #new_type:I
    :cond_5
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    div-int/2addr v3, v2

    mul-int/2addr v3, v2

    goto :goto_3

    .line 484
    .end local v1           #new_type:I
    :pswitch_6
    iput p2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    .line 485
    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    if-lt v5, v0, :cond_7

    :goto_4
    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    .line 486
    const-string v3, "ZYP12SIP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PY_12]ACTION_SIP_UPDATE_SPELLING (index,start)=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-gt v0, v1, :cond_8

    .line 489
    const/4 v1, 0x2

    .line 494
    .restart local v1       #new_type:I
    :goto_5
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    if-eq v1, v3, :cond_6

    .line 495
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 496
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    .line 497
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->initPhonKeys()V

    .line 500
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->updatePhonList()V

    .line 501
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto/16 :goto_1

    .line 485
    .end local v1           #new_type:I
    :cond_7
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    div-int/2addr v3, v2

    mul-int/2addr v3, v2

    goto :goto_4

    .line 491
    :cond_8
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_9

    move v1, v4

    .restart local v1       #new_type:I
    :cond_9
    goto :goto_5

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 454
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
    .line 138
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 6
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v5, 0x0

    .line 151
    const/4 v0, 0x1

    .line 153
    .local v0, bHandled:Z
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 160
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_2

    move v1, p1

    .line 162
    .local v1, sendBtnIdx:I
    :goto_1
    const-string v2, "ZYP12SIP"

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

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v4}, Lcom/htc/android/htcime/Intf/IHTCIM;->getIMEStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " codes[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->isBPMFPhonetic(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 168
    iget v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 160
    .end local v1           #sendBtnIdx:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 172
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
    .line 389
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

    .line 194
    const-string v3, "ZYP12SIP"

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

    .line 196
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v3, v3

    if-lt p1, v3, :cond_1

    .line 381
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->onInterceptKeyUp()Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, p1

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 207
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v4, -0x3e7

    if-ne v3, v4, :cond_2

    move v2, p1

    .line 210
    .local v2, sendBtnIdx:I
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v3, p2, p3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->isBPMFPhonetic(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSIP_ID:I

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 207
    .end local v2           #sendBtnIdx:I
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 217
    .restart local v2       #sendBtnIdx:I
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    sparse-switch v3, :sswitch_data_0

    .line 372
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    if-lez v3, :cond_0

    .line 373
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 374
    const/high16 v3, 0xf00

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 375
    iput v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    goto :goto_0

    .line 219
    :sswitch_1
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 220
    const v3, 0x7300001

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 221
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 225
    :sswitch_2
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 226
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->launchSettings()V

    goto :goto_0

    .line 230
    :sswitch_3
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 231
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mLongPress:Z

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->launchSettings()V

    goto :goto_0

    .line 238
    :sswitch_4
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSIP_ID:I

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    goto :goto_0

    .line 242
    :sswitch_5
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 243
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 244
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 247
    :sswitch_6
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSIP_ID:I

    or-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 250
    :sswitch_7
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 255
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 258
    :sswitch_8
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 259
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mLongPress:Z

    if-eqz v3, :cond_4

    .line 260
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 265
    :cond_4
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 269
    :sswitch_9
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellCount()I

    move-result v0

    .line 270
    .local v0, count:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    if-lez v3, :cond_0

    .line 271
    const/4 v1, 0x4

    .line 273
    .local v1, new_type:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    if-eq v1, v3, :cond_5

    .line 274
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 275
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    .line 276
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->initPhonKeys()V

    .line 279
    :cond_5
    iput v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    .line 280
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->updatePhonList()V

    .line 281
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 287
    .end local v0           #count:I
    .end local v1           #new_type:I
    :sswitch_a
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellCount()I

    move-result v0

    .line 289
    .restart local v0       #count:I
    const/4 v3, 0x4

    if-gt v0, v3, :cond_7

    .line 290
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 291
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    if-eq v3, v4, :cond_0

    .line 292
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 293
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 294
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 295
    :cond_6
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 296
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 300
    :cond_7
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    .line 302
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_8

    .line 303
    const/4 v1, 0x3

    .line 305
    .restart local v1       #new_type:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    if-eq v1, v3, :cond_8

    .line 306
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 307
    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    .line 308
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->initPhonKeys()V

    .line 312
    .end local v1           #new_type:I
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->updatePhonList()V

    .line 313
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 318
    .end local v0           #count:I
    :sswitch_b
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 319
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v6

    if-eq v3, v4, :cond_0

    .line 320
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    or-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 321
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 322
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 323
    :cond_9
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v6

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 324
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    .line 325
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 331
    :sswitch_c
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 332
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v7

    if-eq v3, v4, :cond_0

    .line 333
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 334
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 335
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 336
    :cond_a
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v7

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 337
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    .line 338
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 344
    :sswitch_d
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 345
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v10

    if-eq v3, v4, :cond_0

    .line 346
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 347
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 348
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 349
    :cond_b
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, v10

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 350
    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    .line 351
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    goto/16 :goto_0

    .line 358
    :sswitch_e
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 361
    :sswitch_f
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 364
    :sswitch_10
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 367
    :sswitch_11
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        -0x18 -> :sswitch_8
        -0x15 -> :sswitch_f
        -0x14 -> :sswitch_e
        -0x13 -> :sswitch_11
        -0x12 -> :sswitch_10
        -0x10 -> :sswitch_7
        -0xf -> :sswitch_3
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_5
        0x8 -> :sswitch_0
        0xa -> :sswitch_4
        0x20 -> :sswitch_6
        0xf2 -> :sswitch_b
        0xf3 -> :sswitch_c
        0xf4 -> :sswitch_d
        0xf5 -> :sswitch_a
        0xf6 -> :sswitch_9
    .end sparse-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public startInput()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->startInput()V

    .line 100
    const/high16 v0, 0x748

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 102
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 103
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z

    .line 105
    const v0, 0x7400001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->sendKeyEvent(I)V

    .line 107
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 109
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->setPreviewEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mSipSplitType:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPreIMEStatus:I

    .line 116
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->initPhonKeys()V

    .line 119
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->setStatusIcon()V

    .line 120
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->invalidateAll()V

    .line 121
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

    .line 411
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellCount()I

    move-result v0

    .line 412
    .local v0, count:I
    if-le v0, v3, :cond_0

    move v3, v4

    .line 415
    .local v3, page_count:I
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v7

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 416
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v7

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 417
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v6

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 418
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v6

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 419
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v8

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 420
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v8

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 421
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, v4

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 422
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v5, v4

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 424
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 426
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 427
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonListStart:I

    add-int v1, v4, v2

    .line 428
    .local v1, ele_index:I
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v4, v2

    if-lt v1, v0, :cond_4

    const-string v4, ""

    :goto_1
    iput-object v4, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 430
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v5, ""

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    .line 431
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 433
    :cond_2
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonIndex:I

    if-ne v4, v1, :cond_3

    .line 434
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mActivePhonKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 435
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mPhonKey:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 426
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/ZYP12SIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v4, v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getSpellString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 438
    .end local v1           #ele_index:I
    :cond_5
    return-void
.end method
