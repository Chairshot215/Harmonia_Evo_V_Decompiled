.class public Lcom/htc/android/htcime/ezsip/QwertyHWKBView;
.super Lcom/htc/android/htcime/ezsip/EZHWKBView;
.source "QwertyHWKBView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final DEBUG:Z = true

.field private static final INFO:Z = false

.field protected static final TAG:Ljava/lang/String; = "QwertyHWKBView"


# instance fields
.field private ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

.field protected imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

.field protected isDoChangeToEngIM:Z

.field protected isDoChangeToNextIM:Z

.field public mHandleAtUp:Z

.field mIMSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

.field protected mIsPassKeyDownToSystem:Z

.field protected mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

.field protected mappingKeyCode:[I

.field private mappingKeyCode2XT9idx:[I

.field private mappingKeyCode2XT9idx_CJ:[I

.field private mappingKeyCode2XT9idx_FRA:[I

.field private mappingKeyCode2XT9idx_GER:[I

.field private mappingKeyCode2XT9idx_Nordic:[I

.field private mappingKeyCode2XT9idx_PY:[I

.field private mappingKeyCode2XT9idx_RUS:[I

.field private mappingKeyCode2XT9idx_STROKE_CN:[I

.field private mappingKeyCode2XT9idx_STROKE_HK:[I

.field private mappingKeyCode2XT9idx_WWE:[I

.field private mappingKeyCode2XT9idx_ZY:[I

.field protected mappingXT9idx:[I

.field private mappingXT9idx_CJ:[I

.field private mappingXT9idx_Nordic:[I

.field private mappingXT9idx_PY:[I

.field private mappingXT9idx_RUS:[I

.field private mappingXT9idx_STROKE:[I

.field private mappingXT9idx_WWE:[I

.field private mappingXT9idx_ZY:[I

.field private multiTapKey:[I

.field private multiTapKey_RUS:[I

.field private multiTapKeylist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private multiTapKeylist_RUS:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/EZHWKBView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 68
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHandleAtUp:Z

    .line 402
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIsPassKeyDownToSystem:Z

    .line 1100
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->isDoChangeToEngIM:Z

    .line 1101
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->isDoChangeToNextIM:Z

    .line 99
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 100
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "hardward keyboard"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.htcime.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 103
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 105
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->loadConstant(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method private InitialT9Setting()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 957
    const/4 v0, 0x0

    .line 960
    .local v0, real_cmd:I
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_EnlargeKey:Z

    if-eqz v4, :cond_0

    .line 961
    const/4 v1, 0x0

    .line 964
    .local v1, tmp:I
    :goto_0
    or-int/2addr v0, v1

    .line 967
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mAutoSubstitute:Z

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 968
    :goto_1
    shl-int/lit8 v1, v1, 0x3

    .line 969
    or-int/2addr v0, v1

    .line 972
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_EnlargeKey:Z

    if-eqz v4, :cond_3

    .line 973
    const/4 v1, 0x1

    .line 976
    :goto_2
    shl-int/lit8 v1, v1, 0x4

    .line 977
    or-int/2addr v0, v1

    .line 980
    const/high16 v2, 0x717

    or-int/2addr v0, v2

    .line 981
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 982
    return-void

    .line 963
    .end local v1           #tmp:I
    :cond_0
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mHWQWERTYSpellingCheck:Z

    if-ne v4, v2, :cond_1

    move v1, v2

    .restart local v1       #tmp:I
    :goto_3
    goto :goto_0

    .end local v1           #tmp:I
    :cond_1
    move v1, v3

    goto :goto_3

    .restart local v1       #tmp:I
    :cond_2
    move v1, v3

    .line 967
    goto :goto_1

    .line 975
    :cond_3
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYWordComplete:Z

    if-ne v4, v2, :cond_4

    move v1, v2

    :goto_4
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_4
.end method

.method private getAccentString(I[I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "arr1"
    .parameter "arr2"

    .prologue
    .line 623
    add-int/lit8 v2, p1, -0x1d

    .line 624
    .local v2, idx:I
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mAccent_list_AZ:[Ljava/lang/String;

    if-eqz v3, :cond_0

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mAccent_list_AZ:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 625
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mAccent_list_AZ:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 640
    :goto_0
    return-object v3

    .line 628
    :cond_0
    if-nez p2, :cond_1

    .line 629
    const-string v3, ""

    goto :goto_0

    .line 631
    :cond_1
    array-length v0, p2

    .line 633
    .local v0, arrLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 634
    aget v3, p2, v1

    if-ne p1, v3, :cond_2

    .line 635
    if-eqz p3, :cond_2

    array-length v3, p3

    if-lt v3, v1, :cond_2

    .line 636
    aget-object v3, p3, v1

    goto :goto_0

    .line 633
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    :cond_3
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public finishInput()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->dismiss()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIMSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIMSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->hideSwitchMenu()V

    .line 316
    :cond_1
    return-void
.end method

.method public forceLoadDefaultSIP()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIMSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->forceLoadDefaultSIP()V

    .line 1057
    return-void
.end method

.method public final getEZSIP()Lcom/htc/android/htcime/Intf/IHTCSIP;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    return-object v0
.end method

.method public getKeyboardPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1096
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public getSIPId(II)I
    .locals 2
    .parameter "contentType"
    .parameter "orientation"

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIMSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->getContentSensitiveSIP(II)I

    move-result v0

    .line 1064
    .local v0, sip_id:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    .line 1065
    return v0
.end method

.method public getStatusIcon()I
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIMSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->getStatusIcon()I

    move-result v0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "htcIMM"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 180
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 181
    const/high16 v0, 0x800

    iput v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIP_ID:I

    .line 182
    const/high16 v0, 0x900

    iput v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIP_LP_ID:I

    .line 184
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 185
    return-void
.end method

.method initLatinIM()V
    .locals 4

    .prologue
    .line 293
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v2, "QwertyHWKBView"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->hold(Ljava/lang/String;)V

    .line 296
    :try_start_0
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 297
    const v1, 0x7161c19

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->InitialT9Setting()V

    .line 301
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mContentTypePredictionMode:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setPredictionMode(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v2, "QwertyHWKBView"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->release(Ljava/lang/String;)V

    .line 307
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "QwertyHWKBView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initLatinIM] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isShortCutDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1104
    const/4 v0, 0x0

    return v0
.end method

.method public isShortCutUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1108
    const/4 v0, 0x0

    return v0
.end method

.method isTerminator(I)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 595
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 596
    :cond_0
    const/4 v0, 0x1

    .line 597
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadConstant(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 113
    .local v9, r:Landroid/content/res/Resources;
    const v10, 0x7f07002e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode:[I

    .line 115
    const v10, 0x7f070031

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_RUS:[I

    .line 116
    const v10, 0x7f07002f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_WWE:[I

    .line 117
    const v10, 0x7f070030

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_Nordic:[I

    .line 118
    const v10, 0x7f070032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_ZY:[I

    .line 119
    const v10, 0x7f070033

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_CJ:[I

    .line 120
    const v10, 0x7f070034

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_PY:[I

    .line 121
    const v10, 0x7f070035

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_STROKE:[I

    .line 123
    const v10, 0x7f07003a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_RUS:[I

    .line 124
    const v10, 0x7f070036

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_WWE:[I

    .line 125
    const v10, 0x7f070037

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_FRA:[I

    .line 126
    const v10, 0x7f070038

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_GER:[I

    .line 127
    const v10, 0x7f070039

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_Nordic:[I

    .line 128
    const v10, 0x7f07003b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_ZY:[I

    .line 129
    const v10, 0x7f07003c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_CJ:[I

    .line 130
    const v10, 0x7f07003d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_PY:[I

    .line 131
    const v10, 0x7f07003e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_STROKE_HK:[I

    .line 132
    const v10, 0x7f07003f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_STROKE_CN:[I

    .line 134
    const v10, 0x7f070040

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey_RUS:[I

    .line 136
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey_RUS:[I

    array-length v10, v10

    new-array v10, v10, [[I

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKeylist_RUS:[[I

    .line 138
    const v10, 0x7f070041

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, multitapKeylist_rus:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey_RUS:[I

    array-length v10, v10

    if-ge v6, v10, :cond_1

    .line 142
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKeylist_RUS:[[I

    aget-object v11, v8, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    new-array v11, v11, [I

    aput-object v11, v10, v6

    .line 144
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    aget-object v10, v8, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_0

    .line 145
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKeylist_RUS:[[I

    aget-object v10, v10, v6

    aget-object v11, v8, v6

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v10, v7

    .line 144
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 140
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 149
    .end local v7           #j:I
    :cond_1
    const v10, 0x7f070042

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mAccent_list_AZ:[Ljava/lang/String;

    .line 150
    const v10, 0x7f070043

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mAccent_list_others:[Ljava/lang/String;

    .line 153
    const v10, 0x7f070044

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, hwkb_cid_list:[Ljava/lang/String;
    const v10, 0x7f070046

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, hwkb_cid_lang_list_mapping:[Ljava/lang/String;
    const v10, 0x7f070047

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, hwkb_cid_def_lang_mapping:[Ljava/lang/String;
    array-length v2, v5

    .line 157
    .local v2, cid_list_len:I
    array-length v1, v4

    .line 158
    .local v1, cid_lang_list_mapping_len:I
    array-length v0, v3

    .line 159
    .local v0, cid_def_lang_mapping_len:I
    if-ne v2, v1, :cond_2

    if-eq v2, v0, :cond_3

    .line 160
    :cond_2
    const-string v10, "QwertyHWKBView"

    const-string v11, "cid mapping array size error!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_4

    .line 163
    sget-object v10, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_LANG_MAPPING:Ljava/util/HashMap;

    aget-object v11, v5, v6

    aget-object v12, v4, v6

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v10, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_DEF_LANG_MAPPING:Ljava/util/HashMap;

    aget-object v11, v5, v6

    aget-object v12, v3, v6

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 168
    :cond_4
    const-string v10, "ro.cid"

    const-string v11, "00000000"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    .line 169
    return-void
.end method

.method mapping2arrays(I[I[I)I
    .locals 4
    .parameter "key"
    .parameter "arr1"
    .parameter "arr2"

    .prologue
    const/4 v2, -0x1

    .line 601
    if-nez p2, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v2

    .line 604
    :cond_1
    array-length v0, p2

    .line 606
    .local v0, arrLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 607
    aget v3, p2, v1

    if-ne p1, v3, :cond_3

    .line 608
    if-eqz p3, :cond_2

    array-length v2, p3

    if-lt v2, v1, :cond_2

    aget v2, p3, v1

    goto :goto_0

    .line 609
    :cond_2
    const/4 v2, -0x3

    goto :goto_0

    .line 606
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 332
    return-void
.end method

.method public onCursorChanged()V
    .locals 2

    .prologue
    .line 323
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->doAutoCapCheck(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->shiftStateCheck()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->passKeyDownToSystem(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 435
    const/4 v11, 0x0

    .line 590
    :goto_0
    return v11

    .line 438
    :cond_0
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {v11}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 439
    const/16 v11, 0x43

    if-eq p1, v11, :cond_1

    const/4 v11, 0x4

    if-ne p1, v11, :cond_3

    .line 440
    :cond_1
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {v11}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->dismiss()V

    .line 445
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 446
    const/4 v11, 0x1

    goto :goto_0

    .line 441
    :cond_3
    const/16 v11, 0x13

    if-eq p1, v11, :cond_4

    const/16 v11, 0x14

    if-eq p1, v11, :cond_4

    const/16 v11, 0x15

    if-eq p1, v11, :cond_4

    const/16 v11, 0x16

    if-eq p1, v11, :cond_4

    const/16 v11, 0x17

    if-eq p1, v11, :cond_4

    const/16 v11, 0x42

    if-ne p1, v11, :cond_2

    .line 444
    :cond_4
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {v11, p1}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->handleKey(I)V

    goto :goto_1

    .line 449
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getFnState()Z

    move-result v0

    .line 450
    .local v0, bFnStateOn:Z
    iget v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mShiftState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_6

    iget v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mShiftState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 451
    .local v1, bShiftStateOn:Z
    :goto_2
    if-eqz v0, :cond_8

    const/4 v11, 0x2

    move v12, v11

    :goto_3
    if-eqz v1, :cond_9

    const/4 v11, 0x1

    :goto_4
    or-int v10, v12, v11

    .line 452
    .local v10, meta:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-static {v11}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v9

    .line 453
    .local v9, kmap:Landroid/view/KeyCharacterMap;
    invoke-virtual {v9, p1, v10}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v2

    .line 454
    .local v2, ch:I
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    .line 457
    .local v3, chType:I
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v11, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v12, "HTC__Y13"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 458
    const/4 v11, 0x2

    invoke-virtual {v9, p1, v11}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v7

    .line 460
    .local v7, fnONch:I
    if-eqz v7, :cond_f

    const/16 v11, 0x20

    if-eq v7, v11, :cond_f

    const v11, 0xef01

    if-ge v7, v11, :cond_f

    const/16 v11, 0x43

    if-eq p1, v11, :cond_f

    const/16 v11, 0x42

    if-eq p1, v11, :cond_f

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 464
    .local v4, count:I
    if-nez v4, :cond_a

    .line 465
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getShiftState()I

    move-result v11

    iput v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    .line 466
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->isTerminator(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 467
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHandleAtUp:Z

    .line 468
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 469
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 450
    .end local v1           #bShiftStateOn:Z
    .end local v2           #ch:I
    .end local v3           #chType:I
    .end local v4           #count:I
    .end local v7           #fnONch:I
    .end local v9           #kmap:Landroid/view/KeyCharacterMap;
    .end local v10           #meta:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 451
    .restart local v1       #bShiftStateOn:Z
    :cond_8
    const/4 v11, 0x0

    move v12, v11

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 472
    .restart local v2       #ch:I
    .restart local v3       #chType:I
    .restart local v4       #count:I
    .restart local v7       #fnONch:I
    .restart local v9       #kmap:Landroid/view/KeyCharacterMap;
    .restart local v10       #meta:I
    :cond_a
    const/4 v11, 0x1

    if-ne v4, v11, :cond_e

    .line 473
    const/high16 v6, 0x80

    .line 474
    .local v6, flag:I
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->isTerminator(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 475
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHandleAtUp:Z

    .line 476
    const/4 v6, 0x0

    .line 481
    :cond_b
    iget v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_c

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getShiftState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 482
    const/4 v11, 0x2

    iput v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    .line 483
    :cond_c
    iget v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    .line 484
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 486
    :cond_d
    const/high16 v11, 0x2800

    or-int/2addr v11, v7

    or-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 488
    iget v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e

    .line 489
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 492
    .end local v6           #flag:I
    :cond_e
    const/4 v11, 0x1

    if-lt v4, v11, :cond_f

    .line 493
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 499
    .end local v4           #count:I
    .end local v7           #fnONch:I
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 500
    .restart local v4       #count:I
    if-nez v4, :cond_10

    .line 501
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode:[I

    iget-object v12, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mAccent_list_others:[Ljava/lang/String;

    invoke-direct {p0, p1, v11, v12}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getAccentString(I[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurAccent:Ljava/lang/String;

    .line 502
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurAccent:Ljava/lang/String;

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurAccent:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 503
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHasAccent:Z

    .line 509
    :cond_10
    :goto_5
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v11, v11, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v11, v11, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_19

    :cond_11
    if-eqz v2, :cond_19

    const/16 v11, 0x20

    if-eq v2, v11, :cond_19

    const v11, 0xef01

    if-ge v2, v11, :cond_19

    const/16 v11, 0x43

    if-eq p1, v11, :cond_19

    const/16 v11, 0x42

    if-eq p1, v11, :cond_19

    .line 516
    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v11

    if-nez v11, :cond_18

    const/16 v11, 0xd9

    if-eq p1, v11, :cond_18

    .line 522
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v12, 0xa8

    if-ne v11, v12, :cond_15

    sget v11, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_15

    if-nez v0, :cond_12

    const/16 v11, 0x4d

    if-eq p1, v11, :cond_13

    const/16 v11, 0x4a

    if-eq p1, v11, :cond_13

    const/16 v11, 0xe0

    if-eq p1, v11, :cond_13

    const/16 v11, 0xd8

    if-eq p1, v11, :cond_13

    :cond_12
    if-eqz v0, :cond_15

    const/16 v11, 0xd8

    if-ne p1, v11, :cond_15

    .line 568
    :cond_13
    const-string v11, "QwertyHWKBView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onKeyDown, ucode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",sipID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v13, v13, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",meta="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iput p1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurrentKeyCode:I

    .line 573
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v11, v11, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    packed-switch v11, :pswitch_data_0

    .line 589
    :pswitch_0
    const-string v11, "QwertyHWKBView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onKeyDown, unknown sipID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v13, v13, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 505
    :cond_14
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHasAccent:Z

    goto/16 :goto_5

    .line 533
    :cond_15
    iget-boolean v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHasAccent:Z

    if-eqz v11, :cond_16

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->isTerminator(I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 534
    if-nez v4, :cond_13

    .line 535
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/high16 v12, 0x2800

    or-int/2addr v12, v2

    invoke-direct {v5, v11, v12}, Landroid/view/KeyEvent;-><init>(II)V

    .line 536
    .local v5, evt:Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 537
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v11, v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v11

    goto/16 :goto_0

    .line 542
    .end local v5           #evt:Landroid/view/KeyEvent;
    :cond_16
    if-eqz v0, :cond_17

    const/high16 v8, 0x2800

    .line 544
    .local v8, kbID:I
    :goto_6
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    or-int v12, v8, v2

    invoke-direct {v5, v11, v12}, Landroid/view/KeyEvent;-><init>(II)V

    .line 545
    .restart local v5       #evt:Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 546
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v11, v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v11

    goto/16 :goto_0

    .line 542
    .end local v5           #evt:Landroid/view/KeyEvent;
    .end local v8           #kbID:I
    :cond_17
    const/high16 v8, 0xf00

    goto :goto_6

    .line 550
    :cond_18
    if-eqz v0, :cond_13

    .line 551
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/high16 v12, 0x2800

    or-int/2addr v12, v2

    invoke-direct {v5, v11, v12}, Landroid/view/KeyEvent;-><init>(II)V

    .line 552
    .restart local v5       #evt:Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 553
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v11, v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v11

    goto/16 :goto_0

    .line 558
    .end local v5           #evt:Landroid/view/KeyEvent;
    :cond_19
    if-eqz v0, :cond_13

    const/16 v11, 0xf

    if-eq v3, v11, :cond_13

    const/16 v11, 0x42

    if-eq v11, p1, :cond_13

    const/16 v11, 0x43

    if-eq v11, p1, :cond_13

    const/16 v11, 0x20

    if-eq v11, v2, :cond_13

    .line 563
    const/high16 v11, 0x71c

    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 564
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIsPassKeyDownToSystem:Z

    .line 565
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 578
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->onKeyDownLATIN(ILandroid/view/KeyEvent;)Z

    move-result v11

    goto/16 :goto_0

    .line 581
    :pswitch_2
    invoke-virtual/range {p0 .. p2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->onKeyDownZY(ILandroid/view/KeyEvent;)Z

    move-result v11

    goto/16 :goto_0

    .line 586
    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->onKeyDownCHT(ILandroid/view/KeyEvent;)Z

    move-result v11

    goto/16 :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDownCHT(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 881
    const/4 v0, -0x1

    .line 884
    .local v0, idx:I
    const/16 v2, 0x1d

    if-lt p1, v2, :cond_0

    const/16 v2, 0x36

    if-gt p1, v2, :cond_0

    .line 885
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    add-int/lit8 v3, p1, -0x1d

    aget v0, v2, v3

    .line 891
    :goto_0
    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    .line 892
    const/high16 v2, 0x800

    or-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 898
    :goto_1
    return v1

    .line 888
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode:[I

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mapping2arrays(I[I[I)I

    move-result v0

    goto :goto_0

    .line 894
    :cond_1
    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    .line 895
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1, p2}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyDownLATIN(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHasAccent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mKeyDownHasAccent:Z

    .line 648
    :cond_0
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHasAccent:Z

    if-eqz v0, :cond_a

    .line 651
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 652
    .local v7, count:I
    if-nez v7, :cond_1

    iget v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemFnState:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownFNState:I

    .line 653
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownFNState:I

    if-nez v0, :cond_a

    .line 654
    if-nez v7, :cond_2

    .line 655
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getShiftState()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    .line 657
    :cond_2
    const/4 v0, 0x1

    if-ne v7, v0, :cond_9

    .line 660
    iget v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getShiftState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 661
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurAccent:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurAccent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 666
    iget v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 667
    :cond_4
    const-string v11, ""

    .line 668
    .local v11, tmp_set:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurAccent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 669
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurAccent:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 670
    .local v10, tmp_ch:C
    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    .line 671
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 668
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 673
    .end local v10           #tmp_ch:C
    :cond_6
    iput-object v11, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurAccent:Ljava/lang/String;

    .line 677
    .end local v8           #i:I
    .end local v11           #tmp_set:Ljava/lang/String;
    :cond_7
    iget v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mFirstDownShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 678
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 680
    :cond_8
    new-instance v0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurAccent:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x2800

    const/high16 v6, 0x80

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;-><init>(Lcom/htc/android/htcime/ezsip/EZHWKBView;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    .line 681
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    const/16 v1, 0x11

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->showAtLocation(Landroid/view/View;III)V

    .line 683
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mShowAccentWindow:Z

    .line 687
    :cond_9
    const/4 v0, 0x1

    if-lt v7, v0, :cond_a

    .line 688
    const/4 v0, 0x1

    .line 821
    .end local v7           #count:I
    :goto_1
    return v0

    .line 694
    :cond_a
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getPredictionMode()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mapping2arrays(I[I[I)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_f

    .line 695
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastMultitapKeyCode:I

    if-eq v0, p1, :cond_e

    .line 701
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastMultitapKeyCode:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey:[I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mapping2arrays(I[I[I)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_c

    .line 702
    const/4 v0, 0x4

    iget v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemCapState:I

    if-ne v0, v1, :cond_b

    .line 703
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getSystemShiftState()I

    move-result v0

    if-nez v0, :cond_b

    .line 704
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 707
    :cond_b
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 708
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->Done()V

    .line 711
    :cond_c
    const/high16 v0, 0x727

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 712
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    iput p1, v0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastMultitapKeyCode:I

    .line 713
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListCurIdx:I

    .line 714
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKeylist:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListSize:I

    .line 722
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->KeyDown()V

    .line 723
    const/high16 v1, 0x4800

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKeylist:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListCurIdx:I

    aget v0, v0, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 725
    const/4 v0, 0x1

    goto :goto_1

    .line 718
    :cond_e
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mShiftState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 719
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    goto :goto_2

    .line 728
    :cond_f
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_15

    const/16 v0, 0x36

    if-gt p1, v0, :cond_15

    .line 729
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getPredictionMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 731
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastMultitapKeyCode:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey:[I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mapping2arrays(I[I[I)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_10

    .line 732
    const/4 v0, 0x4

    iget v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemCapState:I

    if-ne v0, v1, :cond_10

    .line 733
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getSystemShiftState()I

    move-result v0

    if-nez v0, :cond_10

    .line 734
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 738
    :cond_10
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->Done()V

    .line 742
    :cond_11
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_14

    .line 743
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_12

    .line 744
    const v0, 0x28000071

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 745
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 746
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 748
    :cond_12
    const/16 v0, 0x33

    if-ne p1, v0, :cond_14

    .line 749
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getShiftState()I

    move-result v1

    if-eq v0, v1, :cond_13

    const v0, 0xf000385

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 751
    :goto_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 752
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 750
    :cond_13
    const v0, 0x280003c2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    goto :goto_3

    .line 756
    :cond_14
    const/high16 v0, 0x800

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 757
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 758
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 761
    :cond_15
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getPredictionMode()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->Done()V

    .line 763
    :cond_16
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode:[I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mapping2arrays(I[I[I)I

    move-result v9

    .line 764
    .local v9, idx:I
    const/4 v0, -0x1

    if-le v9, v0, :cond_18

    .line 766
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_17

    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v1, "HTC__405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_17

    iget v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemFnState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 770
    const/high16 v0, 0x728

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 771
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 772
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 775
    :cond_17
    const/high16 v0, 0x800

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 776
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 777
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 779
    :cond_18
    const/4 v0, -0x1

    if-ne v9, v0, :cond_20

    .line 780
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1d

    .line 781
    const/16 v0, 0xd9

    if-ne p1, v0, :cond_19

    .line 782
    const v0, 0x280000f8

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 783
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 784
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 786
    :cond_19
    const/16 v0, 0xdc

    if-ne p1, v0, :cond_1a

    .line 787
    const v0, 0x280000e4

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 788
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 789
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 791
    :cond_1a
    const/16 v0, 0xdd

    if-ne p1, v0, :cond_1b

    .line 792
    const v0, 0x280000e6

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 793
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 794
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 796
    :cond_1b
    const/16 v0, 0xde

    if-ne p1, v0, :cond_1c

    .line 797
    const v0, 0x280000e5

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 798
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 799
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 801
    :cond_1c
    const/16 v0, 0xdf

    if-ne p1, v0, :cond_1f

    .line 802
    const v0, 0x280000f6

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 803
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 804
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 807
    :cond_1d
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v0, :cond_1f

    .line 808
    const/16 v0, 0xd9

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v1, "HTC__405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v1, "TIM__401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHandleAtUp:Z

    .line 812
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    .line 813
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 817
    :cond_1f
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0, p2}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 820
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIsPassKeyDownToSystem:Z

    .line 821
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public onKeyDownZY(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v7, 0x800

    const/4 v3, 0x1

    .line 828
    const/4 v1, -0x1

    .line 831
    .local v1, idx:I
    const/16 v4, 0x1d

    if-lt p1, v4, :cond_1

    const/16 v4, 0x36

    if-gt p1, v4, :cond_1

    .line 832
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    add-int/lit8 v5, p1, -0x1d

    aget v1, v4, v5

    .line 838
    :goto_0
    const-string v4, "QwertyHWKBView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyDownZY keyCode=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/16 v4, 0xff

    if-le v1, v4, :cond_3

    .line 842
    shr-int/lit8 v1, v1, 0x8

    .line 843
    const/4 v2, 0x0

    .line 845
    .local v2, tone:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 846
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 847
    shl-int v4, v3, v0

    or-int/2addr v2, v4

    .line 849
    :cond_0
    shr-int/lit8 v1, v1, 0x1

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 835
    .end local v0           #i:I
    .end local v2           #tone:I
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode:[I

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mapping2arrays(I[I[I)I

    move-result v1

    goto :goto_0

    .line 852
    .restart local v0       #i:I
    .restart local v2       #tone:I
    :cond_2
    const/high16 v4, 0x74f

    or-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 853
    const-string v4, "QwertyHWKBView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyDownZY Send tone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v0           #i:I
    .end local v2           #tone:I
    :goto_2
    return v3

    .line 854
    :cond_3
    const/4 v4, -0x1

    if-eq v4, v1, :cond_5

    .line 855
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_4

    .line 856
    packed-switch v1, :pswitch_data_0

    .line 866
    or-int v4, v7, v1

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    goto :goto_2

    .line 858
    :pswitch_0
    const/4 v1, 0x6

    .line 859
    const v4, 0x74f0006

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    goto :goto_2

    .line 862
    :pswitch_1
    const/16 v1, 0x18

    .line 863
    const v4, 0x74f0018

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    goto :goto_2

    .line 869
    :cond_4
    or-int v4, v7, v1

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    goto :goto_2

    .line 872
    :cond_5
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    .line 873
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3, p2}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 903
    const/16 v2, 0x3b

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3c

    if-eq p1, v2, :cond_0

    const/16 v2, 0x39

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3a

    if-eq p1, v2, :cond_0

    if-eq p1, v5, :cond_0

    const/16 v2, 0x54

    if-eq p1, v2, :cond_0

    const/16 v2, 0xe3

    if-ne p1, v2, :cond_1

    .line 937
    :cond_0
    :goto_0
    return v3

    .line 909
    :cond_1
    const/16 v2, 0x17

    if-ne p1, v2, :cond_2

    .line 910
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2, p2}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 913
    :cond_2
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIsPassKeyDownToSystem:Z

    if-eqz v2, :cond_3

    .line 914
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIsPassKeyDownToSystem:Z

    goto :goto_0

    .line 920
    :cond_3
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHandleAtUp:Z

    if-eqz v2, :cond_5

    .line 922
    const/16 v2, 0xd9

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v4, "HTC__405"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v4, "TIM__401"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 925
    const/high16 v2, 0x728

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 934
    :goto_1
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHandleAtUp:Z

    .line 937
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 928
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 929
    .local v1, kmap:Landroid/view/KeyCharacterMap;
    iget v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemFnState:I

    if-ne v2, v5, :cond_7

    const/4 v2, 0x2

    :goto_2
    invoke-virtual {v1, p1, v2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    .line 931
    .local v0, ch:I
    const/high16 v2, 0xf00

    or-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    goto :goto_1

    .end local v0           #ch:I
    :cond_7
    move v2, v3

    .line 929
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->onMeasure(II)V

    .line 947
    return-void
.end method

.method protected passKeyDownToSystem(I)Z
    .locals 2
    .parameter "keycode"

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, ret_val:Z
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    sparse-switch v1, :sswitch_data_0

    .line 416
    :goto_0
    sparse-switch p1, :sswitch_data_1

    .line 428
    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIsPassKeyDownToSystem:Z

    .line 429
    return v0

    .line 411
    :sswitch_0
    const/4 v0, 0x1

    .line 412
    goto :goto_0

    .line 422
    :sswitch_1
    const/4 v0, 0x1

    .line 423
    goto :goto_1

    .line 407
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x17 -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch

    .line 416
    :sswitch_data_1
    .sparse-switch
        0x39 -> :sswitch_1
        0x3a -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public setEZSIP(I)V
    .locals 3
    .parameter "sipID"

    .prologue
    const/4 v2, 0x0

    .line 340
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 342
    packed-switch p1, :pswitch_data_0

    .line 382
    :pswitch_0
    new-instance v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 392
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 399
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 400
    return-void

    .line 344
    :pswitch_1
    new-instance v0, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYLQwertySIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto :goto_0

    .line 348
    :pswitch_2
    new-instance v0, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYLQwertySIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto :goto_0

    .line 352
    :pswitch_3
    new-instance v0, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJLQwertySIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto :goto_0

    .line 356
    :pswitch_4
    new-instance v0, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/StrokeLQwertySIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto :goto_0

    .line 361
    :pswitch_5
    new-instance v0, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/ZYPQwertySIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto :goto_0

    .line 365
    :pswitch_6
    new-instance v0, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/PYPQwertySIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto :goto_0

    .line 369
    :pswitch_7
    new-instance v0, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CJPQwertySIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto/16 :goto_0

    .line 373
    :pswitch_8
    new-instance v0, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/StrokePQwertySIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto/16 :goto_0

    .line 377
    :pswitch_9
    new-instance v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto/16 :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected setIMEInputMode()V
    .locals 1

    .prologue
    .line 986
    const v0, 0x7150001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 988
    const/high16 v0, 0x703

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 991
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getPredictionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    const v0, 0x70a0001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    .line 995
    :goto_0
    return-void

    .line 994
    :cond_0
    const v0, 0x70a0002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->sendKeyEvent(I)V

    goto :goto_0
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public setSwitcher(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V
    .locals 0
    .parameter "switcher"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIMSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    .line 189
    return-void
.end method

.method protected shiftStateCheck()V
    .locals 3

    .prologue
    .line 1070
    iget v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurrentKeyCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mShiftState:I

    .line 1076
    .local v0, targetShiftState:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mShiftState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1077
    const/4 v0, 0x1

    .line 1081
    :cond_2
    iget v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurrentKeyCode:I

    packed-switch v1, :pswitch_data_0

    .line 1090
    :goto_1
    :pswitch_0
    iget v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mShiftState:I

    if-eq v1, v0, :cond_0

    .line 1091
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 1085
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->doAutoCapCheck(I)I

    move-result v0

    .line 1086
    goto :goto_1

    .line 1081
    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public showHWLangDialog()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v1, 0x710

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1052
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIMSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->doLanguageOption()V

    .line 1053
    return-void
.end method

.method public startInput()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 196
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-nez v2, :cond_0

    .line 197
    new-instance v2, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 198
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-interface {v2, v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 199
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->imEngine:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 202
    :cond_0
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 203
    .local v1, lang:I
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->startInput()V

    .line 204
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->startInput()V

    .line 205
    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 209
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    instance-of v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView;

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->ezSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v2, Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPkeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSIPdata:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    packed-switch v2, :pswitch_data_0

    .line 286
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->doAutoCapCheck(I)I

    move-result v2

    invoke-virtual {p0, v2, v6}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 288
    iput v5, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemFnState:I

    .line 289
    iput v5, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemCapState:I

    .line 290
    return-void

    .line 217
    :pswitch_1
    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey:[I

    .line 218
    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKeylist:Ljava/util/HashMap;

    .line 220
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    packed-switch v2, :pswitch_data_1

    .line 248
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_WWE:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    .line 249
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_WWE:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    .line 252
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->initLatinIM()V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_RUS:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    .line 223
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey_RUS:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey:[I

    .line 224
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_RUS:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    .line 225
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey_RUS:[I

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKeylist:Ljava/util/HashMap;

    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey_RUS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKeylist:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKey_RUS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->multiTapKeylist_RUS:[[I

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 233
    .end local v0           #i:I
    :pswitch_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_WWE:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    .line 234
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_FRA:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    goto :goto_1

    .line 237
    :pswitch_5
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_WWE:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    .line 238
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_GER:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    goto :goto_1

    .line 244
    :pswitch_6
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_Nordic:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    .line 245
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_Nordic:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    goto :goto_1

    .line 257
    :pswitch_7
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_ZY:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    .line 258
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_ZY:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    goto :goto_0

    .line 263
    :pswitch_8
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_CJ:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    .line 264
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_CJ:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    goto :goto_0

    .line 269
    :pswitch_9
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_PY:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    .line 270
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_PY:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    goto/16 :goto_0

    .line 275
    :pswitch_a
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx_STROKE:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingXT9idx:[I

    .line 276
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v3, "HTCCN701"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_STROKE_CN:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    goto/16 :goto_0

    .line 279
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx_STROKE_HK:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mappingKeyCode2XT9idx:[I

    goto/16 :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 220
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public switchHWLang()V
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v1, 0x710

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1044
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mIMSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->switchSIP()V

    .line 1045
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    .line 1046
    return-void
.end method

.method public updateFNCAPSMode(II)V
    .locals 4
    .parameter "fn"
    .parameter "caps"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1005
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1006
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1017
    invoke-virtual {p0, v3, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 1018
    iput v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemCapState:I

    .line 1023
    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 1037
    const-string v0, "QwertyHWKBView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFNCAPSMode, unknown fn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :goto_1
    return-void

    .line 1008
    :pswitch_0
    invoke-virtual {p0, v3, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 1009
    iput v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemCapState:I

    goto :goto_0

    .line 1013
    :pswitch_1
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setIMECapMode(IZ)V

    .line 1014
    iput v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemCapState:I

    goto :goto_0

    .line 1027
    :pswitch_2
    iget v2, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemFnState:I

    if-ne v2, v0, :cond_2

    :goto_2
    iput v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurFnState:I

    .line 1029
    iput v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemFnState:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1027
    goto :goto_2

    .line 1033
    :pswitch_3
    iput v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCurFnState:I

    .line 1034
    iput v0, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mSystemFnState:I

    goto :goto_1

    .line 1006
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1023
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public updateState()V
    .locals 3

    .prologue
    .line 617
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 618
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    const-string v1, "com.htc.android.htcime.adjustMetaState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 619
    :cond_0
    return-void
.end method
