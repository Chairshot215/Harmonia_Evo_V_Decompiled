.class public Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettingsSSSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# instance fields
.field private DEBUG:Z

.field private INFO:Z

.field private final KEY_PRE_LATIN:Ljava/lang/String;

.field private final KEY_PRE_SIPS:Ljava/lang/String;

.field private ShowL:Z

.field private final TAG:Ljava/lang/String;

.field private mLatinLangKey:Ljava/lang/String;

.field private mSIPSwitchKey:Ljava/lang/String;

.field private mSIPSwitchKeyList:Ljava/lang/String;

.field private mSIPSwitchlist:Lcom/htc/preference/HtcPreferenceCategory;

.field private mSupportSIPs:I

.field private modifiedFlag:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->DEBUG:Z

    .line 26
    iput-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->INFO:Z

    .line 27
    const-string v0, "KeyboardSettingsSSSettings"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "SS_SIPS_"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->KEY_PRE_SIPS:Ljava/lang/String;

    .line 38
    const-string v0, "SS_LATIN_"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->KEY_PRE_LATIN:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->modifiedFlag:I

    .line 46
    iput-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->ShowL:Z

    .line 47
    iput v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSupportSIPs:I

    return-void
.end method

.method private genLatinLangCheckBoxPreference(ILjava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 5
    .parameter "i"
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->INFO:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyboardSettingsSSSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genCheckBoxPreference, i = "

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

    .line 86
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS_LATIN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 90
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 91
    return-object v0
.end method

.method private genSIPsCheckBoxPreference(ILjava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 5
    .parameter "i"
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-boolean v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->INFO:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyboardSettingsSSSettings"

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

    .line 75
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 76
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

    .line 77
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 79
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 80
    return-object v0
.end method

.method private getKey()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0900e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSIPSwitchKeyList:Ljava/lang/String;

    .line 68
    const v1, 0x7f0900e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSIPSwitchKey:Ljava/lang/String;

    .line 69
    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mLatinLangKey:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private initSSList()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x1

    .line 221
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSIPSwitchKeyList:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSIPSwitchlist:Lcom/htc/preference/HtcPreferenceCategory;

    .line 224
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 230
    .local v5, sp:Landroid/content/SharedPreferences;
    iget v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSupportSIPs:I

    sget v8, Lcom/htc/android/htcime/util/CustomizeUtil;->mZHSIP:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSupportSIPs:I

    .line 231
    iget-boolean v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->ShowL:Z

    if-eqz v7, :cond_0

    .line 232
    const/16 v7, 0x3d

    iput v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSupportSIPs:I

    .line 239
    :cond_0
    iget-boolean v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "KeyboardSettingsSSSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSupportSIPs - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSupportSIPs:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, zh_type:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v12, :cond_4

    .line 244
    iget v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSupportSIPs:I

    shl-int v8, v11, v1

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 245
    if-nez v1, :cond_2

    .line 247
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    if-ge v2, v7, :cond_3

    .line 248
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSIPSwitchlist:Lcom/htc/preference/HtcPreferenceCategory;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    aget-object v9, v9, v2

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {p0, v8, v9}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->genLatinLangCheckBoxPreference(ILjava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    .end local v2           #j:I
    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSIPSwitchlist:Lcom/htc/preference/HtcPreferenceCategory;

    add-int/lit8 v8, v1, -0x1

    aget-object v8, v6, v8

    invoke-direct {p0, v1, v8}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->genSIPsCheckBoxPreference(ILjava/lang/String;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 243
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_4
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 260
    .local v4, sips:I
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mLatinLangKey:Ljava/lang/String;

    const/4 v8, 0x7

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 261
    .local v3, latin_langs:I
    iget-boolean v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "KeyboardSettingsSSSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eime_langs - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , sip_switch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v12, :cond_8

    .line 266
    shl-int v7, v11, v1

    and-int/2addr v7, v4

    if-eqz v7, :cond_6

    .line 267
    if-nez v1, :cond_7

    .line 268
    invoke-direct {p0, v3}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->setLatinLangCheckBoxPreference(I)V

    .line 265
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 270
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SS_SIPS_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 271
    .local v0, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v0, :cond_6

    invoke-virtual {v0, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 275
    .end local v0           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_8
    return-void
.end method

.method private onPause1()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 173
    .local v5, sp:Landroid/content/SharedPreferences;
    if-nez v5, :cond_0

    .line 215
    :goto_0
    return-void

    .line 178
    :cond_0
    iget v6, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->modifiedFlag:I

    if-lez v6, :cond_9

    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, latin_langs:I
    const/4 v4, 0x0

    .line 183
    .local v4, sip_switch:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v6, 0x6

    if-ge v1, v6, :cond_5

    .line 184
    if-nez v1, :cond_4

    .line 185
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    const/16 v6, 0x1c

    if-ge v2, v6, :cond_2

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SS_LATIN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 187
    .local v0, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    shl-int v6, v8, v2

    add-int/2addr v3, v6

    .line 185
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 191
    .end local v0           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_2
    if-eqz v3, :cond_3

    .line 192
    shl-int v6, v8, v1

    add-int/2addr v4, v6

    .line 183
    .end local v2           #j:I
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SS_SIPS_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 195
    .restart local v0       #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 196
    shl-int v6, v8, v1

    add-int/2addr v4, v6

    goto :goto_3

    .line 201
    .end local v0           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_5
    iget-boolean v6, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "KeyboardSettingsSSSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPause,eime_langs - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sip_switch - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_6
    if-nez v3, :cond_7

    if-nez v4, :cond_7

    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 205
    add-int/lit8 v4, v4, 0x1

    .line 208
    :cond_7
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mLatinLangKey:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->mSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    iget v6, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->modifiedFlag:I

    if-lez v6, :cond_8

    const-string v6, "MODIFIED"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->modifiedFlag:I

    if-ge v6, v7, :cond_8

    .line 210
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "MODIFIED"

    iget v8, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->modifiedFlag:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPSwitcher;->listItemCheck(Landroid/content/Context;)V

    .line 214
    .end local v1           #i:I
    .end local v3           #latin_langs:I
    .end local v4           #sip_switch:I
    :cond_9
    iput v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->modifiedFlag:I

    goto/16 :goto_0
.end method

.method private setLatinLangCheckBoxPreference(I)V
    .locals 5
    .parameter "eime_langs"

    .prologue
    const/4 v4, 0x1

    .line 100
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x1c

    if-ge v1, v2, :cond_2

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS_LATIN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 102
    .local v0, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    shl-int v2, v4, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 103
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 100
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 108
    .end local v0           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f03002a

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->addPreferencesFromResource(I)V

    .line 56
    const/4 v1, 0x0

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    .line 57
    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    .line 58
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/CustomizeUtil;->customizationLanguagePicker(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->getKey()V

    .line 62
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->initSSList()V

    .line 63
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->onPause1()V

    .line 168
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    .line 169
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 157
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsSSSettings;->modifiedFlag:I

    .line 158
    const/4 v0, 0x1

    return v0
.end method
