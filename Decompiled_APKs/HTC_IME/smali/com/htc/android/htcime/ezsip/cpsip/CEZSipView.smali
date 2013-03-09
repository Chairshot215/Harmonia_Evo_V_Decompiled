.class public abstract Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "CEZSipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG_DUMP:Z = true

.field protected static final DEBUG_TAG:Ljava/lang/String; = "CEZSipView"


# instance fields
.field protected final CJ_P12_KBD_NUM:I

.field protected final CJ_P12_KBD_RES_ID:I

.field protected final CJ_QWERTY_KBD_NUM:I

.field protected final CJ_QWERTY_KBD_RES_ID:I

.field protected final PY_P12_KBD_NUM:I

.field protected final PY_P12_KBD_RES_ID:I

.field protected final PY_QWERTY_KBD_NUM:I

.field protected final PY_QWERTY_KBD_RES_ID:I

.field protected final ST_P12_KBD_NUM:I

.field protected final ST_P12_KBD_RES_ID:I

.field protected final ZY_HW_QWERTY_KBD_NUM:I

.field protected final ZY_HW_QWERTY_KBD_RES_ID:I

.field protected final ZY_P12_KBD_NUM:I

.field protected final ZY_P12_KBD_RES_ID:I

.field protected final ZY_QWERTY_KBD_NUM:I

.field protected final ZY_QWERTY_KBD_RES_ID:I

.field private dismissKey:Z

.field protected mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

.field protected mMultiTapIndex:[I

.field protected mSIPList:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;-><init>(Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    .line 29
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapIndex:[I

    .line 35
    const/16 v0, 0xf04

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->CJ_QWERTY_KBD_NUM:I

    .line 36
    const/16 v0, 0x1104

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->CJ_P12_KBD_NUM:I

    .line 37
    const/16 v0, 0xd04

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->PY_QWERTY_KBD_NUM:I

    .line 38
    const/16 v0, 0xa04

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->PY_P12_KBD_NUM:I

    .line 39
    const/16 v0, 0xc04

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->ST_P12_KBD_NUM:I

    .line 40
    const/16 v0, 0xe04

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->ZY_QWERTY_KBD_NUM:I

    .line 41
    const/16 v0, 0xb04

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->ZY_P12_KBD_NUM:I

    .line 42
    const/16 v0, 0x1204

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->ZY_HW_QWERTY_KBD_NUM:I

    .line 45
    const v0, 0x7f060006

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->CJ_QWERTY_KBD_RES_ID:I

    .line 46
    const v0, 0x7f060008

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->CJ_P12_KBD_RES_ID:I

    .line 47
    const v0, 0x7f060004

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->PY_QWERTY_KBD_RES_ID:I

    .line 48
    const v0, 0x7f060001

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->PY_P12_KBD_RES_ID:I

    .line 49
    const v0, 0x7f060003

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->ST_P12_KBD_RES_ID:I

    .line 50
    const v0, 0x7f060005

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->ZY_QWERTY_KBD_RES_ID:I

    .line 51
    const v0, 0x7f060002

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->ZY_P12_KBD_RES_ID:I

    .line 52
    const v0, 0x7f060009

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->ZY_HW_QWERTY_KBD_RES_ID:I

    .line 55
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIPList:[I

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->dismissKey:Z

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    return-void
.end method

.method private getLangNumByType(I)I
    .locals 1
    .parameter "lang_type"

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_0

    .line 210
    const/16 v0, 0xe0

    .line 214
    .local v0, lang_num:I
    :goto_0
    return v0

    .line 207
    .end local v0           #lang_num:I
    :pswitch_0
    const/16 v0, 0xe1

    .line 208
    .restart local v0       #lang_num:I
    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V
    .locals 9
    .parameter "mKey"

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x10

    const/4 v6, 0x1

    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, k:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v3, 0x0

    .line 496
    .local v3, space_type_inc:I
    const/4 v0, 0x0

    .line 497
    .local v0, disable_gl:Z
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/htcime/util/SIPSwitcher;->getSIPCount()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 498
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v4, :cond_2

    .line 499
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0x17

    invoke-virtual {v4, v6, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 517
    :goto_0
    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 518
    :cond_0
    if-eqz v0, :cond_1

    .line 519
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v4, :cond_1

    .line 520
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 521
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v8

    if-ne v4, v7, :cond_6

    .line 522
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 528
    .end local v1           #i:I
    :cond_1
    return-void

    .line 501
    :cond_2
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->dismissKey:Z

    if-eqz v4, :cond_3

    .line 502
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0x63

    invoke-virtual {v4, v6, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 503
    const/4 v3, 0x3

    goto :goto_0

    .line 505
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 506
    const/4 v0, 0x1

    goto :goto_0

    .line 510
    :cond_4
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v4, :cond_5

    .line 511
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0x18

    invoke-virtual {v4, v6, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    goto :goto_0

    .line 513
    :cond_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    goto :goto_0

    .line 520
    .restart local v1       #i:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z
    .locals 7
    .parameter "mKey"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v6, 0x71c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->getAccentMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    .local v0, accentString:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v3, :cond_4

    .line 113
    const-string v4, "1#"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->setAccentMode(Z)V

    .line 141
    .end local v0           #accentString:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .line 119
    .restart local v0       #accentString:Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 120
    sget-object v4, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    const/high16 v4, 0x711

    or-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    .line 136
    .end local v1           #i:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->setAccentMode(Z)V

    move v2, v3

    .line 138
    goto :goto_0

    .line 119
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    .end local v1           #i:I
    :cond_4
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIP_LP_ID:I

    const/high16 v5, 0xf00

    if-ne v4, v5, :cond_5

    .line 128
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    .line 129
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIP_LP_ID:I

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    goto :goto_2

    .line 132
    :cond_5
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    .line 133
    iget v4, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIP_LP_ID:I

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int/2addr v4, v5

    iget v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mLastCodeX:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mLastCodeY:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(III)V

    goto :goto_2
.end method

.method protected initDefaultSetting(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z
    .locals 9
    .parameter "sipData"

    .prologue
    const/4 v8, 0x0

    .line 279
    iget v3, p1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 284
    .local v3, sip_type:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 286
    .local v4, sp:Landroid/content/SharedPreferences;
    sparse-switch v3, :sswitch_data_0

    .line 385
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 290
    :sswitch_0
    const/high16 v5, 0x740

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    .line 293
    const/4 v2, 0x0

    .line 295
    .local v2, iMohu:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 297
    .local v0, bTemp:Z
    if-eqz v0, :cond_0

    .line 298
    or-int/lit8 v2, v2, 0x1

    .line 303
    :goto_1
    const-string v5, "CEZSipView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Z/ZH to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 307
    if-eqz v0, :cond_1

    .line 308
    or-int/lit8 v2, v2, 0x2

    .line 313
    :goto_2
    const-string v5, "CEZSipView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set C/CH to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 317
    if-eqz v0, :cond_2

    .line 318
    or-int/lit8 v2, v2, 0x4

    .line 323
    :goto_3
    const-string v5, "CEZSipView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set S/SH to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 327
    if-eqz v0, :cond_3

    .line 328
    or-int/lit8 v2, v2, 0x8

    .line 333
    :goto_4
    const-string v5, "CEZSipView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set N/L to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090100

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 336
    if-eqz v0, :cond_4

    .line 337
    or-int/lit8 v2, v2, 0x10

    .line 342
    :goto_5
    const-string v5, "CEZSipView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set R/L to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090101

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 345
    if-eqz v0, :cond_5

    .line 346
    or-int/lit8 v2, v2, 0x20

    .line 351
    :goto_6
    const-string v5, "CEZSipView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set F/H to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090102

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 354
    if-eqz v0, :cond_6

    .line 355
    or-int/lit8 v2, v2, 0x40

    .line 360
    :goto_7
    const-string v5, "CEZSipView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set AN/ANG to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 363
    if-eqz v0, :cond_7

    .line 364
    or-int/lit16 v2, v2, 0x80

    .line 369
    :goto_8
    const-string v5, "CEZSipView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set EN/ENG to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090104

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 372
    if-eqz v0, :cond_8

    .line 373
    or-int/lit16 v2, v2, 0x100

    .line 378
    :goto_9
    const-string v5, "CEZSipView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set IN/ING to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/high16 v5, 0x747

    or-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 300
    :cond_0
    const/4 v1, -0x2

    .line 301
    .local v1, iMask:I
    and-int/2addr v2, v1

    goto/16 :goto_1

    .line 310
    .end local v1           #iMask:I
    :cond_1
    const/4 v1, -0x3

    .line 311
    .restart local v1       #iMask:I
    and-int/2addr v2, v1

    goto/16 :goto_2

    .line 320
    .end local v1           #iMask:I
    :cond_2
    const/4 v1, -0x5

    .line 321
    .restart local v1       #iMask:I
    and-int/2addr v2, v1

    goto/16 :goto_3

    .line 330
    .end local v1           #iMask:I
    :cond_3
    const/16 v1, -0x9

    .line 331
    .restart local v1       #iMask:I
    and-int/2addr v2, v1

    goto/16 :goto_4

    .line 339
    .end local v1           #iMask:I
    :cond_4
    const/16 v1, -0x11

    .line 340
    .restart local v1       #iMask:I
    and-int/2addr v2, v1

    goto/16 :goto_5

    .line 348
    .end local v1           #iMask:I
    :cond_5
    const/16 v1, -0x21

    .line 349
    .restart local v1       #iMask:I
    and-int/2addr v2, v1

    goto/16 :goto_6

    .line 357
    .end local v1           #iMask:I
    :cond_6
    const/16 v1, -0x41

    .line 358
    .restart local v1       #iMask:I
    and-int/2addr v2, v1

    goto/16 :goto_7

    .line 366
    .end local v1           #iMask:I
    :cond_7
    const/16 v1, -0x81

    .line 367
    .restart local v1       #iMask:I
    and-int/2addr v2, v1

    goto :goto_8

    .line 375
    .end local v1           #iMask:I
    :cond_8
    const/16 v1, -0x101

    .line 376
    .restart local v1       #iMask:I
    and-int/2addr v2, v1

    goto :goto_9

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method protected initKeyboardDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z
    .locals 5
    .parameter "sipData"

    .prologue
    .line 146
    iget v0, p1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 147
    .local v0, sip_type:I
    const/4 v1, 0x0

    .line 148
    .local v1, target_kbd_num:I
    const/4 v2, 0x0

    .line 150
    .local v2, target_kbd_res:I
    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    if-eq v1, v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v2, Lcom/htc/android/htcime/HTCIMMData;->mKBDResID:I

    .line 194
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mKBDNum:I

    .line 195
    const v3, 0x7410001

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    .line 198
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 153
    :pswitch_0
    const/16 v1, 0xf04

    .line 154
    const v2, 0x7f060006

    .line 155
    goto :goto_0

    .line 157
    :pswitch_1
    const/16 v1, 0x1104

    .line 158
    const v2, 0x7f060008

    .line 159
    goto :goto_0

    .line 162
    :pswitch_2
    const/16 v1, 0xd04

    .line 163
    const v2, 0x7f060004

    .line 164
    goto :goto_0

    .line 166
    :pswitch_3
    const/16 v1, 0xa04

    .line 167
    const v2, 0x7f060001

    .line 168
    goto :goto_0

    .line 172
    :pswitch_4
    const/16 v1, 0xc04

    .line 173
    const v2, 0x7f060003

    .line 174
    goto :goto_0

    .line 177
    :pswitch_5
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v3, :cond_1

    .line 178
    const/16 v1, 0x1204

    .line 179
    const v2, 0x7f060009

    goto :goto_0

    .line 181
    :cond_1
    const-string v3, "[20101210]"

    const-string v4, "[initKeyboardDB] ZY use Normal Keyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/16 v1, 0xe04

    .line 183
    const v2, 0x7f060005

    .line 185
    goto :goto_0

    .line 187
    :pswitch_6
    const/16 v1, 0xb04

    .line 188
    const v2, 0x7f060002

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected initLanguageDB(Lcom/htc/android/htcime/Intf/HTCSIPData;)Z
    .locals 4
    .parameter "sipData"

    .prologue
    .line 219
    iget v0, p1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 220
    .local v0, sip_type:I
    const/4 v1, 0x0

    .line 221
    .local v1, target_ldb_num:I
    const/4 v2, 0x0

    .line 223
    .local v2, target_ldb_res:I
    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    if-eq v1, v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    .line 251
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v2, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBResID:I

    .line 252
    const v3, 0x7410002

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    sput v3, Lcom/htc/android/htcime/HTCIMMData;->mCPUDBNum:I

    .line 258
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    if-eqz v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mCPLDBNum:I

    packed-switch v3, :pswitch_data_1

    .line 272
    :cond_1
    :goto_1
    const/high16 v3, 0x74b

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V

    .line 274
    const/4 v3, 0x1

    return v3

    .line 231
    :pswitch_0
    const/16 v1, 0xe0

    .line 232
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_TC_LDB_RES_ID:I

    .line 233
    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mCPPYLanguage:I

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->getLangNumByType(I)I

    move-result v1

    .line 238
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mCPPYLanguage:I

    if-nez v3, :cond_2

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_TC_LDB_RES_ID:I

    .line 239
    :goto_2
    goto :goto_0

    .line 238
    :cond_2
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_SC_LDB_RES_ID:I

    goto :goto_2

    .line 243
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mCPSTLanguage:I

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->getLangNumByType(I)I

    move-result v1

    .line 244
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mCPSTLanguage:I

    if-nez v3, :cond_3

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_TC_LDB_RES_ID:I

    :goto_3
    goto :goto_0

    :cond_3
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_SC_LDB_RES_ID:I

    goto :goto_3

    .line 262
    :pswitch_3
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v3, 0xe6

    sput v3, Lcom/htc/android/htcime/HTCIMMData;->mCPUDBNum:I

    goto :goto_1

    .line 265
    :pswitch_4
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v3, 0xe7

    sput v3, Lcom/htc/android/htcime/HTCIMMData;->mCPUDBNum:I

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 260
    :pswitch_data_1
    .packed-switch 0xe0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected initSIPSwitchString()Z
    .locals 14

    .prologue
    const v13, 0x7f0902b2

    const v12, 0x7f0902b1

    const v11, 0x7f0902b0

    const v10, 0x7f0902ad

    const/4 v9, 0x1

    .line 389
    const-string v0, ""

    .line 390
    .local v0, AccentString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 392
    .local v1, SIPListIndex:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v6, -0x10

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    .line 394
    .local v4, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIPList:[I

    if-nez v5, :cond_0

    .line 395
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIPList:[I

    .line 397
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    if-ge v3, v5, :cond_7

    .line 398
    if-ne v9, v3, :cond_1

    .line 399
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .local v2, SIPListIndex:I
    const/16 v6, 0x100

    aput v6, v5, v1

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 403
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :cond_1
    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v5, v5, v3

    packed-switch v5, :pswitch_data_0

    .line 397
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :pswitch_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v6, v6, v3

    aput v6, v5, v1

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 408
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto :goto_1

    .line 407
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 411
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :pswitch_2
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v6, v6, v3

    aput v6, v5, v1

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0902b3

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 413
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto :goto_1

    .line 412
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0902b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 416
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :pswitch_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v6, v6, v3

    aput v6, v5, v1

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 418
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto/16 :goto_1

    .line 417
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 421
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :pswitch_4
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v6, v6, v3

    aput v6, v5, v1

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 423
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto/16 :goto_1

    .line 422
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 426
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :pswitch_5
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v6, v6, v3

    aput v6, v5, v1

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 428
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto/16 :goto_1

    .line 427
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 436
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :cond_7
    iput-object v0, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 437
    iput v9, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->alignIndex:I

    .line 439
    return v9

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected repeatKey()Z
    .locals 4

    .prologue
    .line 80
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mRepeatKeyIndex:I

    aget-object v0, v2, v3

    .line 83
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mRepeatKeyIndex:I

    .line 85
    .local v1, sendBtnIdx:I
    :goto_0
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 93
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    .line 98
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 83
    .end local v1           #sendBtnIdx:I
    :cond_0
    iget v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_0

    .line 88
    .restart local v1       #sendBtnIdx:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public startInput()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->startInput()V

    .line 105
    return-void
.end method
