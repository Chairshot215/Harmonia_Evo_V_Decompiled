.class public Lcom/htc/android/htcime/settings/KeyboardSettings;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field public static sHtcSenseVer:F


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mBilingualKey:Ljava/lang/String;

.field protected mFromMenu:Z

.field private mHWKBKey:Ljava/lang/String;

.field private mLPBilingual:Lcom/htc/preference/HtcListPreference;

.field private mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

.field private mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

.field private mLPTypes:Lcom/htc/preference/HtcListPreference;

.field private mLQwertyTypeKey:Ljava/lang/String;

.field protected mOrientation:I

.field private mPQwertyTypeKey:Ljava/lang/String;

.field private mSipSwitchKey:Ljava/lang/String;

.field private mTypeKey:Ljava/lang/String;

.field private mUDBEditorKey:Ljava/lang/String;

.field private mZHKey:Ljava/lang/String;

.field private modifiedFlag:I

.field private sLimitToPortrait:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/settings/KeyboardSettings;->sHtcSenseVer:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 50
    const-string v0, "KeyboardSettings"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->TAG:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->sLimitToPortrait:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->DEBUG:Z

    .line 56
    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mOrientation:I

    .line 57
    iput-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mFromMenu:Z

    .line 58
    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->modifiedFlag:I

    return-void
.end method

.method private buildSecondLanguageList()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 336
    sget v7, Lcom/htc/android/htcime/settings/KeyboardSettings;->sHtcSenseVer:F

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    .line 337
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    if-eqz v7, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 399
    :goto_0
    return-void

    .line 341
    :cond_0
    const-string v7, "KeyboardSettings"

    const-string v8, "mLPBilingual preference is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v12}, Lcom/htc/android/htcime/util/BilingualTool;->isValid1stLang(Landroid/content/Context;Z)Z

    move-result v7

    if-nez v7, :cond_4

    .line 348
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 356
    :goto_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 359
    .local v2, lhm:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, noneTitle:Ljava/lang/String;
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, noneValue:Ljava/lang/String;
    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const/4 v3, 0x0

    .line 365
    .local v3, localeIdx:I
    :goto_2
    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    if-ge v3, v7, :cond_6

    .line 367
    const/4 v1, 0x1

    .line 368
    .local v1, isValid:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    sget-object v7, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 369
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    aget-object v7, v7, v3

    aget-object v7, v7, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/htc/android/htcime/util/BilingualTool;->EXCLUDE_LANG_ID_LIST:[I

    aget v8, v8, v0

    if-ne v7, v8, :cond_5

    .line 370
    const/4 v1, 0x0

    .line 374
    :cond_2
    if-eqz v1, :cond_3

    .line 375
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    aget-object v7, v7, v3

    aget-object v7, v7, v11

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v12

    invoke-virtual {v2, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 379
    goto :goto_2

    .line 352
    .end local v0           #i:I
    .end local v1           #isValid:Z
    .end local v2           #lhm:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #localeIdx:I
    .end local v4           #noneTitle:Ljava/lang/String;
    .end local v5           #noneValue:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v12}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 368
    .restart local v0       #i:I
    .restart local v1       #isValid:Z
    .restart local v2       #lhm:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #localeIdx:I
    .restart local v4       #noneTitle:Ljava/lang/String;
    .restart local v5       #noneValue:Ljava/lang/String;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 383
    .end local v0           #i:I
    .end local v1           #isValid:Z
    :cond_6
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_8

    .line 384
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    if-eqz v7, :cond_7

    .line 385
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 388
    :cond_7
    const-string v7, "KeyboardSettings"

    const-string v8, "mLPBilingual preference is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 393
    :cond_8
    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    new-array v9, v11, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 394
    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    new-array v9, v11, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 398
    .local v6, sp:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mBilingualKey:Ljava/lang/String;

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private constructTypeList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 454
    iget v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mOrientation:I

    if-ne v8, v9, :cond_2

    sget-boolean v8, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZHSupport:Z

    if-ne v8, v9, :cond_2

    .line 457
    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, v:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 460
    .local v2, res:Landroid/content/res/Resources;
    const/high16 v8, 0x7f07

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, sip_type:[Ljava/lang/String;
    const v8, 0x7f07000c

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, sip_type_value:[Ljava/lang/String;
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    new-array v3, v8, [Ljava/lang/String;

    .line 463
    .local v3, sip_list:[Ljava/lang/String;
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    new-array v4, v8, [Ljava/lang/String;

    .line 468
    .local v4, sip_list_value:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 470
    .local v0, c:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v3

    if-ge v1, v8, :cond_1

    .line 471
    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 472
    new-instance v8, Ljava/lang/String;

    aget-object v9, v5, v1

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v0

    .line 473
    new-instance v8, Ljava/lang/String;

    aget-object v9, v6, v1

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v4, v0

    .line 474
    add-int/lit8 v0, v0, 0x1

    .line 470
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :cond_1
    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 487
    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 490
    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 492
    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 493
    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    .end local v0           #c:I
    .end local v1           #i:I
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #sip_list:[Ljava/lang/String;
    .end local v4           #sip_list_value:[Ljava/lang/String;
    .end local v5           #sip_type:[Ljava/lang/String;
    .end local v6           #sip_type_value:[Ljava/lang/String;
    .end local v7           #v:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getExtraValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fromMenu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mFromMenu:Z

    .line 196
    iget-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->sLimitToPortrait:Z

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mOrientation:I

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v1, "orientation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mOrientation:I

    goto :goto_0
.end method

.method private initKey()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mTypeKey:Ljava/lang/String;

    .line 176
    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mPQwertyTypeKey:Ljava/lang/String;

    .line 177
    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLQwertyTypeKey:Ljava/lang/String;

    .line 178
    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mUDBEditorKey:Ljava/lang/String;

    .line 179
    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mBilingualKey:Ljava/lang/String;

    .line 181
    const v1, 0x7f0900ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mHWKBKey:Ljava/lang/String;

    .line 182
    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mZHKey:Ljava/lang/String;

    .line 184
    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mSipSwitchKey:Ljava/lang/String;

    .line 185
    return-void
.end method

.method private layoutCheck()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 208
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 210
    .local v7, res:Landroid/content/res/Resources;
    iget v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mOrientation:I

    if-nez v9, :cond_0

    .line 211
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mOrientation:I

    .line 217
    :cond_0
    iget-boolean v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->sLimitToPortrait:Z

    if-eqz v9, :cond_1

    .line 218
    invoke-virtual {p0, v12}, Lcom/htc/android/htcime/settings/KeyboardSettings;->setRequestedOrientation(I)V

    .line 232
    :cond_1
    iget v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mOrientation:I

    if-ne v9, v12, :cond_a

    .line 233
    const v9, 0x7f030021

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettings;->addPreferencesFromResource(I)V

    .line 234
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mTypeKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    iput-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    .line 235
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 236
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    if-eqz v9, :cond_2

    const v9, 0x7f0b0010

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 249
    :cond_2
    :goto_0
    iget v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mOrientation:I

    if-ne v9, v12, :cond_b

    .line 250
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mPQwertyTypeKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    iput-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

    .line 251
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

    if-eqz v9, :cond_3

    .line 252
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 253
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mIsLargeTablet:Z

    if-nez v9, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 272
    :cond_3
    :goto_1
    sget-boolean v9, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZHSupport:Z

    if-nez v9, :cond_4

    .line 273
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mZHKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 274
    .local v3, ZHKeySettings:Lcom/htc/preference/HtcPreference;
    if-eqz v3, :cond_c

    .line 275
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 283
    .end local v3           #ZHKeySettings:Lcom/htc/preference/HtcPreference;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 284
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v9, "UseExternalHWKB"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 287
    .local v4, isUseExternalHWKB:Z
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    if-eq v9, v12, :cond_5

    if-eqz v4, :cond_6

    .line 288
    :cond_5
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mHWKBKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 289
    .local v1, HWKBKeySettings:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_d

    .line 290
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 298
    .end local v1           #HWKBKeySettings:Lcom/htc/preference/HtcPreference;
    :cond_6
    :goto_3
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x10

    if-ne v9, v10, :cond_7

    .line 299
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mSipSwitchKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 300
    .local v2, SipSwitchKeySettings:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_e

    .line 301
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 309
    .end local v2           #SipSwitchKeySettings:Lcom/htc/preference/HtcPreference;
    :cond_7
    :goto_4
    const v9, 0x7f0b0009

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 310
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->constructTypeList()V

    .line 313
    :cond_8
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mBilingualKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    iput-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    .line 314
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    const v10, 0x7f090035

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(I)V

    .line 315
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPBilingual:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 316
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->buildSecondLanguageList()V

    .line 319
    const v9, 0x7f090319

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b000e

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 322
    .local v0, EnableDAM:Z
    if-nez v0, :cond_9

    .line 323
    const v9, 0x7f0900a5

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, prefKeyDAM:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceScreen;

    .line 325
    .local v6, preferenceDAM:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v6, :cond_9

    .line 326
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 329
    .end local v5           #prefKeyDAM:Ljava/lang/String;
    .end local v6           #preferenceDAM:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_9
    return-void

    .line 245
    .end local v0           #EnableDAM:Z
    .end local v4           #isUseExternalHWKB:Z
    .end local v8           #sp:Landroid/content/SharedPreferences;
    :cond_a
    const v9, 0x7f030029

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 261
    :cond_b
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLQwertyTypeKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcListPreference;

    iput-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

    .line 262
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

    if-eqz v9, :cond_3

    .line 263
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 264
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mIsLargeTablet:Z

    if-nez v9, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .line 278
    .restart local v3       #ZHKeySettings:Lcom/htc/preference/HtcPreference;
    :cond_c
    const-string v9, "KeyboardSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HtcPreference of \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mZHKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 293
    .end local v3           #ZHKeySettings:Lcom/htc/preference/HtcPreference;
    .restart local v1       #HWKBKeySettings:Lcom/htc/preference/HtcPreference;
    .restart local v4       #isUseExternalHWKB:Z
    .restart local v8       #sp:Landroid/content/SharedPreferences;
    :cond_d
    const-string v9, "KeyboardSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HtcPreference of \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mHWKBKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 304
    .end local v1           #HWKBKeySettings:Lcom/htc/preference/HtcPreference;
    .restart local v2       #SipSwitchKeySettings:Lcom/htc/preference/HtcPreference;
    :cond_e
    const-string v9, "KeyboardSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HtcPreference of \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mSipSwitchKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method


# virtual methods
.method public getHtcActionBarTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 547
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0900b6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, label:Ljava/lang/CharSequence;
    const v3, 0x7f09000f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, title:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 66
    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x98

    if-ne v2, v3, :cond_0

    .line 73
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->sLimitToPortrait:Z

    .line 77
    :goto_0
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->fetchHtcSenseVer()F

    move-result v2

    sput v2, Lcom/htc/android/htcime/settings/KeyboardSettings;->sHtcSenseVer:F

    .line 79
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->initKey()V

    .line 82
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getExtraValue()V

    .line 86
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getCustomizationData(Landroid/content/Context;)V

    .line 88
    invoke-static {v0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getIMESettingsData(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->layoutCheck()V

    .line 91
    .end local v0           #context:Landroid/content/Context;
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "KeyboardSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyboardSettings onCreate error, icicle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 75
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->sLimitToPortrait:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    .line 152
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->modifiedFlag:I

    if-lez v1, :cond_1

    const-string v1, "MODIFIED"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->modifiedFlag:I

    if-ge v1, v2, :cond_1

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MODIFIED"

    iget v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->modifiedFlag:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    :cond_1
    iput v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->modifiedFlag:I

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mBilingualKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    iput v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->modifiedFlag:I

    .line 127
    .end local p2
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mFromMenu:Z

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->finish()V

    .line 130
    :cond_1
    return v5

    .line 104
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mPQwertyTypeKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v2, 0x7f0900da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPPortQweryTypes:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iput v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->modifiedFlag:I

    goto :goto_0

    .line 110
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLQwertyTypeKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPLandQweryTypes:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    iput v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->modifiedFlag:I

    goto :goto_0

    .line 120
    .restart local p2
    :cond_4
    iget v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mOrientation:I

    if-ne v2, v5, :cond_0

    .line 121
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mTypeKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mLPTypes:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    iput v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->modifiedFlag:I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, isHandled:Z
    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mUDBEditorKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 137
    .local v2, preference_udb_editor:Lcom/htc/preference/HtcPreference;
    if-ne p2, v2, :cond_1

    .line 138
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    .local v0, intent:Landroid/content/Intent;
    sget v3, Lcom/htc/android/htcime/settings/KeyboardSettings;->sHtcSenseVer:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 140
    const-string v3, "com.htc.android.htcime"

    const-string v4, "com.htc.android.htcime.util.UDBEditor"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :cond_0
    const-string v3, "fromMenu"

    iget-boolean v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettings;->mFromMenu:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettings;->startActivity(Landroid/content/Intent;)V

    .line 143
    const/4 v1, 0x1

    .line 146
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return v1
.end method

.method protected setIntentTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "packagename"
    .parameter "classname"

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 508
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 509
    .local v0, I:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 514
    :goto_0
    return-void

    .line 513
    :cond_0
    const-string v2, "KeyboardSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null ps - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setIntentTargetWithExtraIB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 5
    .parameter "key"
    .parameter "packagename"
    .parameter "classname"
    .parameter "iName"
    .parameter "iExtra"
    .parameter "bName"
    .parameter "bExtra"

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 533
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v0, I:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    invoke-virtual {v0, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 541
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string v2, "KeyboardSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra, null ps - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setIntentTargetWithExtraInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "key"
    .parameter "packagename"
    .parameter "classname"
    .parameter "name"
    .parameter "extra"

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/settings/KeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 520
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 521
    .local v0, I:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 527
    :goto_0
    return-void

    .line 526
    :cond_0
    const-string v2, "KeyboardSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra, null ps - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
