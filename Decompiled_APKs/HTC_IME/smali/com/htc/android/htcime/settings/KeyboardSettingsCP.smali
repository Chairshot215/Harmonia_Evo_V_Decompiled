.class public Lcom/htc/android/htcime/settings/KeyboardSettingsCP;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettingsCP.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;
.implements Lcom/htc/android/htcime/settings/SpeedSeekBarPreference$OnProgressSubmittedListener;


# static fields
.field private static HW_LANG_SWITCED:I

.field private static KEY_HANDWRITING_TYPE:Ljava/lang/String;

.field private static KEY_SIP_LIST_UPDATE:Ljava/lang/String;

.field private static PY_LANG_SWITCED:I

.field private static ST_LANG_SWITCED:I

.field private static mIntialSIPSwitchKey:Ljava/lang/String;


# instance fields
.field private HANDWRITING_MODE_BOARD:I

.field private HANDWRITING_MODE_NORMAL:I

.field private HANDWRITING_MODE_OTHER:I

.field private final TAG:Ljava/lang/String;

.field private final hardCodeListItems:[Ljava/lang/String;

.field private mCMCCUseQwertyKey:Ljava/lang/String;

.field private mCMCCUseQwertyType:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mFinalSipList:[Ljava/lang/String;

.field private mFromMenu:Z

.field private mFuzzyPYKey:Ljava/lang/String;

.field private mFuzzyPYType:Lcom/htc/preference/HtcPreferenceScreen;

.field private mHWColorTypeKey:Ljava/lang/String;

.field private mHWLangTypeKey:Ljava/lang/String;

.field private mHWPatternWordKey:Ljava/lang/String;

.field private mHandWritingType:I

.field private mHandwritingChineseLangType:Lcom/htc/preference/HtcListPreference;

.field private mHandwritingPatternWord:Lcom/htc/preference/HtcPreferenceScreen;

.field private mHandwritingPenColorType:Lcom/htc/preference/HtcListPreference;

.field private mIsSupportCID:Z

.field private mLPTypes:Lcom/htc/preference/HtcListPreference;

.field private mLangSwitchedKey:Ljava/lang/String;

.field private mOrientation:I

.field private mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

.field private mPYLangTypeKey:Ljava/lang/String;

.field private mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

.field private mSTLangTypeKey:Ljava/lang/String;

.field private mSipEntry:[Ljava/lang/String;

.field private mSipItem:[Ljava/lang/String;

.field private mSipList:[Z

.field private mSipValue:[Ljava/lang/String;

.field private mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

.field private mStrokeSpeedKey:Ljava/lang/String;

.field private mStrokeWidth:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

.field private mStrokeWidthKey:Ljava/lang/String;

.field private mSupportSIPs:I

.field private mTypeKey:Ljava/lang/String;

.field private mZYSmart:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mZYSmartKey:Ljava/lang/String;

.field private modifiedFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "sip_list_mode_change"

    sput-object v0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->KEY_SIP_LIST_UPDATE:Ljava/lang/String;

    .line 83
    const-string v0, "handwriting_type"

    sput-object v0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->KEY_HANDWRITING_TYPE:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->HW_LANG_SWITCED:I

    .line 115
    const/4 v0, 0x2

    sput v0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->PY_LANG_SWITCED:I

    .line 116
    const/4 v0, 0x4

    sput v0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->ST_LANG_SWITCED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 51
    const-string v0, "KeyboardSettings"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->TAG:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidth:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    .line 61
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    .line 64
    iput v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mOrientation:I

    .line 65
    iput-boolean v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFromMenu:Z

    .line 66
    iput v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    .line 87
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSipList:[Z

    .line 88
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSipItem:[Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFinalSipList:[Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSipEntry:[Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSipValue:[Ljava/lang/String;

    .line 94
    iput v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->HANDWRITING_MODE_NORMAL:I

    .line 95
    iput v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->HANDWRITING_MODE_BOARD:I

    .line 96
    iput v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->HANDWRITING_MODE_OTHER:I

    .line 97
    iget v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->HANDWRITING_MODE_NORMAL:I

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandWritingType:I

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Handwriting"

    aput-object v1, v0, v3

    const-string v1, "ZuhYin"

    aput-object v1, v0, v4

    const-string v1, "CangJie"

    aput-object v1, v0, v2

    const-string v1, "PinYin"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "Stroke"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->hardCodeListItems:[Ljava/lang/String;

    .line 101
    iput-boolean v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mIsSupportCID:Z

    .line 111
    iput v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSupportSIPs:I

    return-void
.end method

.method private constructSipListResourceFromHWKBCID()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 602
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 603
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 604
    .local v1, r:Landroid/content/res/Resources;
    const v4, 0x7f0900e8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mIntialSIPSwitchKey:Ljava/lang/String;

    .line 605
    sget-object v4, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mIntialSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSupportSIPs:I

    .line 607
    invoke-static {}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->getShowLFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    const/16 v4, 0x3d

    iput v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSupportSIPs:I

    .line 617
    :cond_0
    iget v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSupportSIPs:I

    if-ne v4, v5, :cond_2

    .line 618
    const/4 v3, 0x0

    .line 643
    :cond_1
    return v3

    .line 620
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v0, v4, :cond_1

    .line 621
    iget v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSupportSIPs:I

    shl-int v5, v3, v0

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 622
    packed-switch v0, :pswitch_data_0

    .line 620
    :cond_3
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :pswitch_1
    sput-boolean v3, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsHWEnabled:Z

    goto :goto_1

    .line 629
    :pswitch_2
    sput-boolean v3, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZYEnabled:Z

    goto :goto_1

    .line 634
    :pswitch_3
    sput-boolean v3, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsPYEnabled:Z

    goto :goto_1

    .line 637
    :pswitch_4
    sput-boolean v3, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsSTEnabled:Z

    goto :goto_1

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initKey()V
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 342
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f090302

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mTypeKey:Ljava/lang/String;

    .line 343
    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYLangTypeKey:Ljava/lang/String;

    .line 344
    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTLangTypeKey:Ljava/lang/String;

    .line 345
    const v1, 0x7f0902a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHWLangTypeKey:Ljava/lang/String;

    .line 346
    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHWPatternWordKey:Ljava/lang/String;

    .line 347
    const v1, 0x7f0902a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHWColorTypeKey:Ljava/lang/String;

    .line 348
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFuzzyPYKey:Ljava/lang/String;

    .line 349
    const v1, 0x7f0902a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidthKey:Ljava/lang/String;

    .line 350
    const v1, 0x7f0902a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeedKey:Ljava/lang/String;

    .line 351
    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mLangSwitchedKey:Ljava/lang/String;

    .line 352
    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mZYSmartKey:Ljava/lang/String;

    .line 354
    const v1, 0x7f0902fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mCMCCUseQwertyKey:Ljava/lang/String;

    .line 356
    return-void
.end method

.method private initKeyboardSetting()Z
    .locals 15

    .prologue
    const v14, 0x7f0902fc

    const v13, 0x7f09009b

    const v12, 0x7f090098

    const v11, 0x7f090095

    const/4 v10, 0x1

    .line 365
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-ne v7, v8, :cond_0

    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->constructSipListResourceFromHWKBCID()Z

    move-result v7

    if-nez v7, :cond_0

    .line 368
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsPYEnabled:Z

    .line 369
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsSTEnabled:Z

    .line 370
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsHWEnabled:Z

    .line 371
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZYEnabled:Z

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 375
    .local v4, r:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 377
    .local v5, sp:Landroid/content/SharedPreferences;
    sget-boolean v7, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZYEnabled:Z

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_ZY_Phrase_Input:Z

    if-nez v7, :cond_2

    .line 378
    :cond_1
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 379
    .local v1, ZYSettings:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_5

    .line 380
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 386
    :goto_0
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mZYSmart:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_6

    .line 387
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mZYSmart:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 394
    .end local v1           #ZYSettings:Lcom/htc/preference/HtcPreference;
    :cond_2
    :goto_1
    sget-boolean v7, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsPYEnabled:Z

    if-eqz v7, :cond_8

    .line 396
    const-string v7, "0"

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYLangTypeKey:Ljava/lang/String;

    const-string v9, "0"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 397
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFuzzyPYType:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 401
    :goto_2
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 429
    :goto_3
    sget-boolean v7, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsSTEnabled:Z

    if-eqz v7, :cond_c

    .line 430
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 449
    :goto_4
    sget-boolean v7, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsHWEnabled:Z

    if-eqz v7, :cond_f

    .line 450
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingChineseLangType:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 453
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPenColorType:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPenColorType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPenColorType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 470
    :goto_5
    const v7, 0x7f0b0009

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 471
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 472
    .local v2, cmccQwertySettings:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_10

    .line 473
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 479
    :goto_6
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mCMCCUseQwertyType:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_11

    .line 480
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mCMCCUseQwertyType:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 489
    .end local v2           #cmccQwertySettings:Lcom/htc/preference/HtcPreference;
    :cond_3
    :goto_7
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-eqz v7, :cond_4

    .line 490
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPatternWord:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v7, :cond_12

    .line 491
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPatternWord:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 551
    :cond_4
    :goto_8
    return v10

    .line 383
    .restart local v1       #ZYSettings:Lcom/htc/preference/HtcPreference;
    :cond_5
    const-string v7, "KeyboardSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtcPreference of \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    :cond_6
    const-string v7, "KeyboardSettings"

    const-string v8, "mZYSmart preference is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 399
    .end local v1           #ZYSettings:Lcom/htc/preference/HtcPreference;
    :cond_7
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFuzzyPYType:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    .line 405
    :cond_8
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 406
    .local v0, PYPreference:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_9

    .line 407
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 413
    :goto_9
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

    if-eqz v7, :cond_a

    .line 414
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 420
    :goto_a
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFuzzyPYType:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v7, :cond_b

    .line 421
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFuzzyPYType:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_3

    .line 410
    :cond_9
    const-string v7, "KeyboardSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtcPreference of \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 417
    :cond_a
    const-string v7, "KeyboardSettings"

    const-string v8, "mPYChineseLangType preference is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 424
    :cond_b
    const-string v7, "KeyboardSettings"

    const-string v8, "mFuzzyPYType preference is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 433
    .end local v0           #PYPreference:Lcom/htc/preference/HtcPreference;
    :cond_c
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 434
    .local v6, strokeSettings:Lcom/htc/preference/HtcPreference;
    if-eqz v6, :cond_d

    .line 435
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 441
    :goto_b
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

    if-eqz v7, :cond_e

    .line 442
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_4

    .line 438
    :cond_d
    const-string v7, "KeyboardSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtcPreference of \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 445
    :cond_e
    const-string v7, "KeyboardSettings"

    const-string v8, "mSTChineseLangType preference is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 457
    .end local v6           #strokeSettings:Lcom/htc/preference/HtcPreference;
    :cond_f
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    const v8, 0x7f09008f

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 458
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 459
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPatternWord:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 460
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPenColorType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 461
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidth:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 462
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 463
    :catch_0
    move-exception v3

    .line 464
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "KeyboardSettings"

    const-string v8, "[initKeyboardSetting] exception on remove handwriting preference"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 476
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v2       #cmccQwertySettings:Lcom/htc/preference/HtcPreference;
    :cond_10
    const-string v7, "KeyboardSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtcPreference of \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 483
    :cond_11
    const-string v7, "KeyboardSettings"

    const-string v8, "mCMCCUseQwertyType preference is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 494
    .end local v2           #cmccQwertySettings:Lcom/htc/preference/HtcPreference;
    :cond_12
    const-string v7, "KeyboardSettings"

    const-string v8, "HtcPreference of mHandwritingPatternWord not found"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method private upDateUIData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 268
    iget v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    if-nez v4, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 272
    .local v2, sp:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 275
    iget v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    if-lez v4, :cond_3

    .line 276
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeedKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    invoke-virtual {v5}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->getProgress()I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, prevWaitingTime:I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidthKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidth:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    invoke-virtual {v6}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->getProgress()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeedKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    invoke-virtual {v6}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->getProgress()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    const-string v4, "MODIFIED"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    if-ge v4, v5, :cond_2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "MODIFIED"

    iget v6, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    :cond_2
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    invoke-virtual {v4}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->getProgress()I

    move-result v0

    .line 286
    .local v0, currWaitingTime:I
    const-string v4, "Feature_UserProfilingLog"

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v1, v0, :cond_3

    .line 288
    new-instance v3, Lcom/htc/android/htcime/util/ULogUtil;

    invoke-direct {v3}, Lcom/htc/android/htcime/util/ULogUtil;-><init>()V

    .line 289
    .local v3, ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    const-string v4, "waiting_time"

    const-string v5, "waiting_time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/htcime/util/ULogUtil;->writeSinglePairULogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v0           #currWaitingTime:I
    .end local v1           #prevWaitingTime:I
    .end local v3           #ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    :cond_3
    iput v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 172
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromMenu"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFromMenu:Z

    .line 125
    iput-boolean v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFromMenu:Z

    .line 127
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->addPreferencesFromResource(I)V

    .line 128
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->initKey()V

    .line 129
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mTypeKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    .line 131
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYLangTypeKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

    .line 132
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFuzzyPYKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFuzzyPYType:Lcom/htc/preference/HtcPreferenceScreen;

    .line 134
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTLangTypeKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

    .line 136
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHWLangTypeKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingChineseLangType:Lcom/htc/preference/HtcListPreference;

    .line 137
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHWPatternWordKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPatternWord:Lcom/htc/preference/HtcPreferenceScreen;

    .line 138
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHWColorTypeKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPenColorType:Lcom/htc/preference/HtcListPreference;

    .line 139
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidthKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidth:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    .line 141
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeedKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    .line 142
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidth:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    invoke-virtual {v1, v5}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->setMax(I)V

    .line 143
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidth:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidthKey:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->setProgress(I)V

    .line 144
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeWidth:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->setOnProgressSubmittedListener(Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;)V

    .line 145
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    invoke-virtual {v1, v5}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->setMax(I)V

    .line 146
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeedKey:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->setProgress(I)V

    .line 147
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mStrokeSpeed:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->setOnProgressSubmittedListener(Lcom/htc/android/htcime/settings/SpeedSeekBarPreference$OnProgressSubmittedListener;)V

    .line 149
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mZYSmartKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mZYSmart:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 151
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mCMCCUseQwertyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mCMCCUseQwertyType:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 154
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    .line 158
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 334
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onDestroy()V

    .line 335
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->upDateUIData()V

    .line 336
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    .line 329
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->upDateUIData()V

    .line 330
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 191
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, updateKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 197
    .local v2, sp:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mLangSwitchedKey:Ljava/lang/String;

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, lang_switched:I
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYLangTypeKey:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 201
    .local v1, select_idx:I
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mPYChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    if-nez v1, :cond_2

    .line 204
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFuzzyPYType:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 208
    :goto_0
    sget v4, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->PY_LANG_SWITCED:I

    or-int/2addr v0, v4

    .line 209
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mLangSwitchedKey:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    .end local v1           #select_idx:I
    :cond_0
    :goto_1
    iput v6, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    .line 228
    iget-boolean v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFromMenu:Z

    if-eqz v4, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->finish()V

    .line 263
    :cond_1
    return v6

    .line 206
    .restart local v1       #select_idx:I
    :cond_2
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mFuzzyPYType:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 210
    .end local v1           #select_idx:I
    .restart local p2
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTLangTypeKey:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 212
    .restart local v1       #select_idx:I
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mSTChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    sget v4, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->ST_LANG_SWITCED:I

    or-int/2addr v0, v4

    .line 215
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mLangSwitchedKey:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 216
    .end local v1           #select_idx:I
    .restart local p2
    :cond_4
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHWLangTypeKey:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 217
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingChineseLangType:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 218
    .restart local v1       #select_idx:I
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingChineseLangType:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingChineseLangType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    sget v4, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->HW_LANG_SWITCED:I

    or-int/2addr v0, v4

    .line 221
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mLangSwitchedKey:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 222
    .end local v1           #select_idx:I
    .restart local p2
    :cond_5
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHWColorTypeKey:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPenColorType:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 224
    .restart local v1       #select_idx:I
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPenColorType:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mHandwritingPenColorType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 176
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public onProgressSubmitted(Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;I)V
    .locals 1
    .parameter "ssbpreference"
    .parameter "newValue"

    .prologue
    .line 185
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    .line 186
    return-void
.end method

.method public onProgressSubmitted(Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;I)V
    .locals 1
    .parameter "ssbpreference"
    .parameter "newValue"

    .prologue
    .line 181
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->modifiedFlag:I

    .line 182
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onResume()V

    .line 164
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->mOrientation:I

    .line 165
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->initKeyboardSetting()Z

    .line 166
    return-void
.end method

.method protected setIntentTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "packagename"
    .parameter "classname"

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/settings/KeyboardSettingsCP;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 823
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_0

    .line 824
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 825
    .local v0, I:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 828
    .end local v0           #I:Landroid/content/Intent;
    :cond_0
    return-void
.end method
