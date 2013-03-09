.class public Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettingsHWKBSSSettings.java"


# static fields
.field private static ShowL:Z


# instance fields
.field private DEBUG:Z

.field private INFO:Z

.field private final KEY_PRE_CANGJIE:Ljava/lang/String;

.field private final KEY_PRE_LATIN:Ljava/lang/String;

.field private final KEY_PRE_SIPS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCANGJIEKey:Ljava/lang/String;

.field private mIntialSIPSwitchKey:Ljava/lang/String;

.field private mLatinLangKey:Ljava/lang/String;

.field private mSIPSwitchKey:Ljava/lang/String;

.field private mSIPSwitchKeyList:Ljava/lang/String;

.field private mSIPSwitchlist:Lcom/htc/preference/HtcPreferenceCategory;

.field private mSupportSIPs:I

.field private modifiedFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->ShowL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->DEBUG:Z

    .line 25
    iput-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->INFO:Z

    .line 26
    const-string v0, "KeyboardSettingsHWKBSSSettings"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "SS_SIPS_"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->KEY_PRE_SIPS:Ljava/lang/String;

    .line 37
    const-string v0, "SS_LATIN_"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->KEY_PRE_LATIN:Ljava/lang/String;

    .line 43
    const-string v0, "SS_CANGJIE_"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->KEY_PRE_CANGJIE:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->modifiedFlag:I

    .line 52
    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSupportSIPs:I

    return-void
.end method

.method private genSIPsCheckBoxPreference(ILjava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 5
    .parameter "i"
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->INFO:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyboardSettingsHWKBSSSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genSIPsCheckBoxPreference, i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS_SIPS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 194
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 195
    return-object v0
.end method

.method private genSpecificCheckBoxPreference(Ljava/lang/String;ILjava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 5
    .parameter "type"
    .parameter "i"
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->INFO:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyboardSettingsHWKBSSSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genCheckBoxPreference, i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p3}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 183
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 184
    return-object v0
.end method

.method private getKey()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0900e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSIPSwitchKeyList:Ljava/lang/String;

    .line 70
    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSIPSwitchKey:Ljava/lang/String;

    .line 71
    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mIntialSIPSwitchKey:Ljava/lang/String;

    .line 72
    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mLatinLangKey:Ljava/lang/String;

    .line 73
    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mCANGJIEKey:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static getShowLFlag()Z
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->ShowL:Z

    return v0
.end method

.method private initSSList()V
    .locals 21

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSIPSwitchKeyList:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSIPSwitchlist:Lcom/htc/preference/HtcPreferenceCategory;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 85
    .local v13, r:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 86
    .local v15, sp:Landroid/content/SharedPreferences;
    const v18, 0x7f07002d

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, cangjie_type:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mIntialSIPSwitchKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSupportSIPs:I

    .line 92
    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSupportSIPs:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 94
    const v18, 0x7f070044

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, hwkb_cid_list:[Ljava/lang/String;
    const v18, 0x7f070046

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, hwkb_cid_lang_list_mapping:[Ljava/lang/String;
    const v18, 0x7f070047

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, hwkb_cid_def_lang_mapping:[Ljava/lang/String;
    array-length v7, v10

    .line 98
    .local v7, cid_list_len:I
    array-length v6, v9

    .line 99
    .local v6, cid_lang_list_mapping_len:I
    array-length v5, v8

    .line 100
    .local v5, cid_def_lang_mapping_len:I
    if-ne v7, v6, :cond_0

    if-eq v7, v5, :cond_1

    .line 101
    :cond_0
    const-string v18, "KeyboardSettingsHWKBSSSettings"

    const-string v19, "cid mapping array size error!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v7, :cond_2

    .line 104
    sget-object v18, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_LANG_MAPPING:Ljava/util/HashMap;

    aget-object v19, v10, v11

    aget-object v20, v9, v11

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v18, Lcom/htc/android/htcime/util/SIPSwitcherData;->CID_DEF_LANG_MAPPING:Ljava/util/HashMap;

    aget-object v19, v10, v11

    aget-object v20, v8, v11

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->LoadDefaultList(Landroid/content/Context;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mIntialSIPSwitchKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSupportSIPs:I

    .line 112
    .end local v5           #cid_def_lang_mapping_len:I
    .end local v6           #cid_lang_list_mapping_len:I
    .end local v7           #cid_list_len:I
    .end local v8           #hwkb_cid_def_lang_mapping:[Ljava/lang/String;
    .end local v9           #hwkb_cid_lang_list_mapping:[Ljava/lang/String;
    .end local v10           #hwkb_cid_list:[Ljava/lang/String;
    .end local v11           #i:I
    :cond_3
    sget-boolean v18, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->ShowL:Z

    if-eqz v18, :cond_4

    .line 113
    const/16 v18, 0x3d

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSupportSIPs:I

    .line 124
    :cond_4
    sget-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mIsEnableHandWriting:Z

    if-eqz v18, :cond_5

    .line 125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSupportSIPs:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSupportSIPs:I

    .line 127
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const-string v18, "KeyboardSettingsHWKBSSSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mSupportSIPs - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSupportSIPs:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_6
    const v18, 0x7f07002c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 131
    .local v17, zh_type:[Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_1
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v11, v0, :cond_b

    .line 132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSupportSIPs:I

    move/from16 v18, v0

    const/16 v19, 0x1

    shl-int v19, v19, v11

    and-int v18, v18, v19

    if-eqz v18, :cond_7

    .line 133
    if-nez v11, :cond_8

    .line 131
    :cond_7
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 135
    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v11, :cond_9

    sget-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v18, :cond_7

    .line 137
    :cond_9
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v0, v11, :cond_a

    .line 138
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSIPSwitchlist:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v18, v0

    const-string v19, "SS_CANGJIE_"

    aget-object v20, v3, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->genSpecificCheckBoxPreference(Ljava/lang/String;ILjava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 138
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 143
    .end local v12           #j:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSIPSwitchlist:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, -0x1

    aget-object v19, v17, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->genSIPsCheckBoxPreference(ILjava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2

    .line 149
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSIPSwitchKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 150
    .local v14, sips:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const-string v18, "KeyboardSettingsHWKBSSSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " sip_switch = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_c
    const/4 v11, 0x0

    :goto_4
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v11, v0, :cond_10

    .line 155
    const/16 v18, 0x1

    shl-int v18, v18, v11

    and-int v18, v18, v14

    if-eqz v18, :cond_e

    .line 156
    if-nez v11, :cond_d

    .line 159
    :cond_d
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v0, v11, :cond_f

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mCANGJIEKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 162
    .local v16, type:I
    const-string v18, "SS_CANGJIE_"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->setSpecificCheckBoxPreference(Ljava/lang/String;I)V

    .line 154
    .end local v16           #type:I
    :cond_e
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 165
    :cond_f
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SS_SIPS_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 166
    .local v4, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v4, :cond_e

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_5

    .line 170
    .end local v4           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_10
    return-void
.end method

.method private setSpecificCheckBoxPreference(Ljava/lang/String;I)V
    .locals 5
    .parameter "type"
    .parameter "flag"

    .prologue
    const/4 v4, 0x1

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, max:I
    const-string v3, "SS_LATIN_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    const/16 v2, 0x1c

    .line 208
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 210
    .local v0, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    shl-int v3, v4, v1

    and-int/2addr v3, p2

    if-eqz v3, :cond_3

    .line 211
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 208
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    .end local v0           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v1           #i:I
    :cond_2
    const-string v3, "SS_CANGJIE_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    const/4 v2, 0x2

    goto :goto_0

    .line 213
    .restart local v0       #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    .restart local v1       #i:I
    :cond_3
    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 216
    .end local v0           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->addPreferencesFromResource(I)V

    .line 59
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->getKey()V

    .line 62
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->initSSList()V

    .line 63
    return-void
.end method

.method public onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 271
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 272
    .local v6, sp:Landroid/content/SharedPreferences;
    if-nez v6, :cond_0

    .line 336
    :goto_0
    return-void

    .line 277
    :cond_0
    iget v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->modifiedFlag:I

    if-lez v7, :cond_9

    .line 279
    const/4 v4, 0x0

    .line 280
    .local v4, latin_langs:I
    const/4 v5, 0x0

    .line 281
    .local v5, sip_switch:I
    const/4 v0, 0x0

    .line 283
    .local v0, cangjie_type:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v7, 0x6

    if-ge v2, v7, :cond_6

    .line 284
    if-nez v2, :cond_2

    .line 286
    add-int/lit8 v4, v4, 0x1

    .line 287
    add-int/lit8 v5, v5, 0x1

    .line 283
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    :cond_2
    const/4 v7, 0x3

    if-ne v7, v2, :cond_5

    .line 297
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    const/4 v7, 0x2

    if-ge v3, v7, :cond_4

    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SS_CANGJIE_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 299
    .local v1, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 300
    shl-int v7, v9, v3

    add-int/2addr v0, v7

    .line 297
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 303
    .end local v1           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_4
    if-eqz v0, :cond_1

    .line 304
    shl-int v7, v9, v2

    add-int/2addr v5, v7

    goto :goto_2

    .line 307
    .end local v3           #j:I
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SS_SIPS_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 308
    .restart local v1       #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 309
    shl-int v7, v9, v2

    add-int/2addr v5, v7

    goto :goto_2

    .line 314
    .end local v1           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_6
    iget-boolean v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "KeyboardSettingsHWKBSSSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPause,eime_langs - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sip_switch - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_7
    if-nez v4, :cond_8

    if-nez v5, :cond_8

    .line 317
    add-int/lit8 v4, v4, 0x1

    .line 318
    add-int/lit8 v5, v5, 0x1

    .line 321
    :cond_8
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mLatinLangKey:Ljava/lang/String;

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->mCANGJIEKey:Ljava/lang/String;

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    .end local v0           #cangjie_type:I
    .end local v2           #i:I
    .end local v4           #latin_langs:I
    .end local v5           #sip_switch:I
    :cond_9
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->modifiedFlag:I

    .line 335
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 265
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsHWKBSSSettings;->modifiedFlag:I

    .line 266
    const/4 v0, 0x1

    return v0
.end method
