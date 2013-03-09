.class public Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettingsHWKBSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# instance fields
.field private DEBUG:Z

.field private INFO:Z

.field private final TAG:Ljava/lang/String;

.field private mCANGJIEKey:Ljava/lang/String;

.field mChineseKeyboardKey:Ljava/lang/String;

.field private mDefLangKey:Ljava/lang/String;

.field private mDefLangList:Lcom/htc/preference/HtcListPreference;

.field mEIMELangKeyDef:Ljava/lang/String;

.field private mHWKBZHKey:Ljava/lang/String;

.field private mLatinLangKey:Ljava/lang/String;

.field private mOldCangJie:I

.field private mOldLang:I

.field private mOldSip:I

.field mPredictionKey:Ljava/lang/String;

.field private mSIPSwitchKey:Ljava/lang/String;

.field mSIPSwitchKeyDef:Ljava/lang/String;

.field private modifiedFlag:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 19
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->DEBUG:Z

    .line 23
    iput-boolean v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->INFO:Z

    .line 24
    const-string v0, "KeyboardSettingsHWKBSettings"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->TAG:Ljava/lang/String;

    .line 29
    iput v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->modifiedFlag:I

    .line 31
    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mOldSip:I

    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mOldLang:I

    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mOldCangJie:I

    return-void
.end method

.method private getKey()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0900ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangKey:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    .line 59
    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mSIPSwitchKeyDef:Ljava/lang/String;

    .line 60
    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mEIMELangKeyDef:Ljava/lang/String;

    .line 61
    const v1, 0x7f0900ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mPredictionKey:Ljava/lang/String;

    .line 63
    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mSIPSwitchKey:Ljava/lang/String;

    .line 64
    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mLatinLangKey:Ljava/lang/String;

    .line 65
    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mCANGJIEKey:Ljava/lang/String;

    .line 67
    const v1, 0x7f0900f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mHWKBZHKey:Ljava/lang/String;

    .line 69
    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mChineseKeyboardKey:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private initDefLangList2()V
    .locals 38

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 74
    .local v32, sp:Landroid/content/SharedPreferences;
    if-nez v32, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 80
    .local v26, r:Landroid/content/res/Resources;
    const v34, 0x7f070009

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, defaultLatinString:[Ljava/lang/String;
    const v34, 0x7f07000b

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, defaultLatinValue:[Ljava/lang/String;
    sget-boolean v34, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v34, :cond_3

    sget-object v34, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    const-string v35, "zh"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 85
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    array-length v0, v9

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 86
    aget-object v34, v9, v16

    const-string v35, "English"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 87
    const-string v34, "\u82f1\u6587"

    aput-object v34, v9, v16

    .line 85
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 93
    .end local v16           #i:I
    :cond_3
    const v34, 0x7f07002c

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, defaultZHString:[Ljava/lang/String;
    const v34, 0x7f070020

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 95
    .local v12, defaultZHValue:[Ljava/lang/String;
    const v34, 0x7f07002d

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, cangjie_type:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mSIPSwitchKey:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 99
    .local v30, sips:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mLatinLangKey:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 100
    .local v22, latin_langs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mCANGJIEKey:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 101
    .local v7, cangjie_types:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->DEBUG:Z

    move/from16 v34, v0

    if-eqz v34, :cond_4

    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "eime_langs - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " , sip_switch = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mHWKBZHKey:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mHWKBZHKey:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 114
    .local v18, isbZHCIDSku:Z
    :goto_2
    sget-boolean v34, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v34, :cond_9

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    if-eqz v34, :cond_5

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 128
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mOldSip:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mOldLang:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mOldCangJie:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v0, v7, :cond_0

    .line 132
    :cond_6
    const/4 v5, 0x0

    .line 133
    .local v5, c:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_4
    const/16 v34, 0x6

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    .line 134
    const/16 v34, 0x1

    shl-int v34, v34, v16

    and-int v34, v34, v30

    if-eqz v34, :cond_d

    .line 135
    if-nez v16, :cond_a

    .line 136
    const/16 v19, 0x0

    .local v19, j:I
    :goto_5
    const/16 v34, 0x1c

    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_d

    .line 137
    const/16 v34, 0x1

    shl-int v34, v34, v19

    and-int v34, v34, v22

    if-eqz v34, :cond_7

    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 136
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 108
    .end local v5           #c:I
    .end local v16           #i:I
    .end local v18           #isbZHCIDSku:Z
    .end local v19           #j:I
    :cond_8
    const v34, 0x7f070045

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v34

    sput-object v34, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_ZH_SUK_LIST:[Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/htc/android/htcime/util/SIPSwitcherData;->isZHSKU()Z

    move-result v18

    .restart local v18       #isbZHCIDSku:Z
    goto :goto_2

    .line 119
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    if-eqz v34, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v34

    if-eqz v34, :cond_5

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mSIPSwitchKeyDef:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 121
    .local v31, sipsDef:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mEIMELangKeyDef:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 122
    .local v23, latin_langsDef:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->getExponent(F)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->getExponent(F)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 140
    .end local v23           #latin_langsDef:I
    .end local v31           #sipsDef:I
    .restart local v5       #c:I
    .restart local v16       #i:I
    :cond_a
    const/16 v34, 0x3

    move/from16 v0, v34

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 141
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_6
    const/16 v34, 0x2

    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_d

    .line 142
    const/16 v34, 0x1

    shl-int v34, v34, v19

    and-int v34, v34, v7

    if-eqz v34, :cond_b

    .line 143
    add-int/lit8 v5, v5, 0x1

    .line 141
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 147
    .end local v19           #j:I
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 133
    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 151
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->DEBUG:Z

    move/from16 v34, v0

    if-eqz v34, :cond_f

    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "list count - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_f
    new-array v13, v5, [Ljava/lang/String;

    .line 153
    .local v13, deflang_list:[Ljava/lang/String;
    new-array v14, v5, [Ljava/lang/String;

    .line 154
    .local v14, deflang_list_value:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 155
    const/16 v16, 0x0

    :goto_7
    const/16 v34, 0x6

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_18

    .line 156
    const/16 v34, 0x1

    shl-int v34, v34, v16

    and-int v34, v34, v30

    if-eqz v34, :cond_16

    .line 157
    if-nez v16, :cond_13

    .line 158
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_8
    const/16 v34, 0x1c

    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_16

    .line 159
    const/16 v34, 0x1

    shl-int v34, v34, v19

    and-int v34, v34, v22

    if-eqz v34, :cond_11

    .line 160
    sget-object v34, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAPPING:Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 161
    .local v15, e:I
    const/16 v20, 0x0

    .line 162
    .local v20, k:I
    move-object v4, v10

    .local v4, arr$:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_9
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    aget-object v27, v4, v17

    .line 163
    .local v27, s:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v0, v34

    if-ne v0, v15, :cond_12

    .line 164
    new-instance v34, Ljava/lang/String;

    aget-object v35, v9, v20

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v34, v13, v5

    .line 169
    .end local v27           #s:Ljava/lang/String;
    :cond_10
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "0-"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v34, v14, v5

    .line 170
    add-int/lit8 v5, v5, 0x1

    .line 158
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v15           #e:I
    .end local v17           #i$:I
    .end local v20           #k:I
    .end local v24           #len$:I
    :cond_11
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 167
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v15       #e:I
    .restart local v17       #i$:I
    .restart local v20       #k:I
    .restart local v24       #len$:I
    .restart local v27       #s:Ljava/lang/String;
    :cond_12
    add-int/lit8 v20, v20, 0x1

    .line 162
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 173
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v15           #e:I
    .end local v17           #i$:I
    .end local v19           #j:I
    .end local v20           #k:I
    .end local v24           #len$:I
    .end local v27           #s:Ljava/lang/String;
    :cond_13
    const/16 v34, 0x3

    move/from16 v0, v34

    move/from16 v1, v16

    if-ne v0, v1, :cond_15

    .line 174
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_a
    const/16 v34, 0x2

    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_16

    .line 175
    const/16 v34, 0x1

    shl-int v34, v34, v19

    and-int v34, v34, v7

    if-eqz v34, :cond_14

    .line 176
    new-instance v34, Ljava/lang/String;

    aget-object v35, v6, v19

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v34, v13, v5

    .line 177
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "3-"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v34, v14, v5

    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 174
    :cond_14
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 183
    .end local v19           #j:I
    :cond_15
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_b
    array-length v0, v12

    move/from16 v34, v0

    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_16

    .line 184
    aget-object v34, v12, v19

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v0, v34

    move/from16 v1, v16

    if-ne v0, v1, :cond_17

    .line 185
    new-instance v34, Ljava/lang/String;

    add-int/lit8 v35, v19, -0x1

    aget-object v35, v11, v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v34, v13, v5

    .line 186
    new-instance v34, Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v34, v14, v5

    .line 187
    add-int/lit8 v5, v5, 0x1

    .line 155
    .end local v19           #j:I
    :cond_16
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 183
    .restart local v19       #j:I
    :cond_17
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 195
    .end local v19           #j:I
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->DEBUG:Z

    move/from16 v34, v0

    if-eqz v34, :cond_19

    .line 196
    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "c - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v16, 0x0

    :goto_c
    array-length v0, v13

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_19

    .line 198
    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "deflang_list[i] - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    aget-object v36, v13, v16

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "deflang_list_value[i] - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    aget-object v36, v14, v16

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 203
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v33

    .line 207
    .local v33, v:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->INFO:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1a

    .line 208
    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "v - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "mSIPSwitchKeyDef - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mSIPSwitchKeyDef:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "mEIMELangKeyDef - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mEIMELangKeyDef:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_21

    .line 214
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->DEBUG:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1b

    const-string v34, "KeyboardSettingsHWKBSettings"

    const-string v35, "mLPTypes.findIndexOfValue() == -1 "

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mSIPSwitchKeyDef:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .local v28, sip_def:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mEIMELangKeyDef:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 216
    .local v21, lang_def:I
    const/4 v8, 0x0

    .line 219
    .local v8, def_input:Ljava/lang/String;
    move-object v4, v14

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_d
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_1d

    aget-object v27, v4, v17

    .line 220
    .restart local v27       #s:Ljava/lang/String;
    const-string v34, "-"

    invoke-static/range {v34 .. v34}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v25

    .line 221
    .local v25, list:[Ljava/lang/String;
    const/16 v34, 0x1

    const/16 v35, 0x0

    aget-object v35, v25, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    shl-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v28

    if-ne v0, v1, :cond_1c

    const/16 v34, 0x1

    const/16 v35, 0x1

    aget-object v35, v25, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    shl-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 222
    move-object/from16 v8, v27

    .line 219
    :cond_1c
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 226
    .end local v25           #list:[Ljava/lang/String;
    .end local v27           #s:Ljava/lang/String;
    :cond_1d
    if-nez v8, :cond_1e

    if-eqz v18, :cond_1e

    .line 227
    move-object v4, v14

    array-length v0, v4

    move/from16 v24, v0

    const/16 v17, 0x0

    :goto_e
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e

    aget-object v27, v4, v17

    .line 228
    .restart local v27       #s:Ljava/lang/String;
    const-string v34, "-"

    invoke-static/range {v34 .. v34}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v25

    .line 229
    .restart local v25       #list:[Ljava/lang/String;
    const/16 v34, 0x0

    aget-object v34, v25, v34

    const-string v35, "0"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_23

    .line 230
    move-object/from16 v8, v27

    .line 236
    .end local v25           #list:[Ljava/lang/String;
    .end local v27           #s:Ljava/lang/String;
    :cond_1e
    if-nez v8, :cond_1f

    .line 237
    invoke-static {}, Lcom/htc/android/htcime/util/SIPSwitcherData;->getDefInputMethod()Ljava/lang/String;

    move-result-object v8

    .line 239
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->DEBUG:Z

    move/from16 v34, v0

    if-eqz v34, :cond_20

    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "def_input - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 241
    const-string v34, "-"

    invoke-static/range {v34 .. v34}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v29

    .line 242
    .local v29, sip_lang:[Ljava/lang/String;
    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mSIPSwitchKeyDef:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    const/16 v37, 0x0

    aget-object v37, v29, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    shl-int v36, v36, v37

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mEIMELangKeyDef:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    const/16 v37, 0x1

    aget-object v37, v29, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    shl-int v36, v36, v37

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mHWKBZHKey:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    const-string v35, "MODIFIED"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->modifiedFlag:I

    move/from16 v36, v0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #def_input:Ljava/lang/String;
    .end local v17           #i$:I
    .end local v21           #lang_def:I
    .end local v24           #len$:I
    .end local v28           #sip_def:I
    .end local v29           #sip_lang:[Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 253
    if-nez v18, :cond_22

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mChineseKeyboardKey:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 255
    .local v3, ZHKeySettings:Lcom/htc/preference/HtcPreference;
    if-eqz v3, :cond_24

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 265
    .end local v3           #ZHKeySettings:Lcom/htc/preference/HtcPreference;
    :cond_22
    :goto_f
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mOldSip:I

    .line 266
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mOldLang:I

    .line 267
    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mOldCangJie:I

    goto/16 :goto_0

    .line 227
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #def_input:Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v21       #lang_def:I
    .restart local v24       #len$:I
    .restart local v25       #list:[Ljava/lang/String;
    .restart local v27       #s:Ljava/lang/String;
    .restart local v28       #sip_def:I
    :cond_23
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_e

    .line 259
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #def_input:Ljava/lang/String;
    .end local v17           #i$:I
    .end local v21           #lang_def:I
    .end local v24           #len$:I
    .end local v25           #list:[Ljava/lang/String;
    .end local v27           #s:Ljava/lang/String;
    .end local v28           #sip_def:I
    .restart local v3       #ZHKeySettings:Lcom/htc/preference/HtcPreference;
    :cond_24
    const-string v34, "KeyboardSettingsHWKBSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "HtcPreference of \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mChineseKeyboardKey:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\' not found"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    .line 40
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->getKey()V

    .line 44
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->initDefLangList2()V

    .line 45
    return-void
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 375
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    .line 376
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 377
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 380
    :cond_0
    iget v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->modifiedFlag:I

    if-lez v3, :cond_2

    .line 381
    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, v:Ljava/lang/String;
    const-string v3, "-"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, sip_lang:[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "KeyboardSettingsHWKBSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPause() v - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , sip_lang[0] - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , sip_lang[1] - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mSIPSwitchKeyDef:Ljava/lang/String;

    aget-object v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shl-int v5, v7, v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mEIMELangKeyDef:Ljava/lang/String;

    aget-object v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shl-int v5, v7, v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    const-string v3, "MODIFIED"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->modifiedFlag:I

    if-ge v3, v4, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "MODIFIED"

    iget v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->modifiedFlag:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    .end local v0           #sip_lang:[Ljava/lang/String;
    .end local v2           #v:Ljava/lang/String;
    :cond_2
    iput v6, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->modifiedFlag:I

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->INFO:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyboardSettingsHWKBSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mDefLangList:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->modifiedFlag:I

    .line 370
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->INFO:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyboardSettingsHWKBSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->mPredictionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->modifiedFlag:I

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSettings;->initDefLangList2()V

    .line 50
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onResume()V

    .line 51
    return-void
.end method
