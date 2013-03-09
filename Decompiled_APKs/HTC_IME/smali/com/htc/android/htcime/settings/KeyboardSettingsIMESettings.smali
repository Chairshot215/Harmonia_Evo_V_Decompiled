.class public Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettingsIMESettings.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mCalibrateResetKey:Ljava/lang/String;

.field private mCalibrateRunKey:Ljava/lang/String;

.field private mFQwertyPredictionKey:Ljava/lang/String;

.field private mFQwertyPredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field protected mFromMenu:Z

.field private mImePCQwertyKey:Ljava/lang/String;

.field private mImePCQwertySC:Ljava/lang/String;

.field private mImePCQwertyWC:Ljava/lang/String;

.field private mOrientation:I

.field private mVibrateKey:Ljava/lang/String;

.field private mWordCompKey:Ljava/lang/String;

.field private mWordCompPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private modifiedFlag:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 41
    const-string v0, "KeyboardSettingIMESettings"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->TAG:Ljava/lang/String;

    .line 42
    iput-boolean v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->DEBUG:Z

    .line 43
    iput v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->modifiedFlag:I

    .line 48
    iput v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mOrientation:I

    .line 49
    iput-boolean v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFromMenu:Z

    .line 51
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mVibrateKey:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompKey:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 55
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFQwertyPredictionKey:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFQwertyPredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    return-void
.end method

.method private getExtraValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mOrientation:I

    .line 67
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromMenu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFromMenu:Z

    .line 69
    return-void
.end method

.method private initKey()V
    .locals 3

    .prologue
    const v2, 0x7f0900cc

    .line 137
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mCalibrateRunKey:Ljava/lang/String;

    .line 140
    const v1, 0x7f0900d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mCalibrateResetKey:Ljava/lang/String;

    .line 141
    const v1, 0x7f0900ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mImePCQwertyKey:Ljava/lang/String;

    .line 143
    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mImePCQwertySC:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mImePCQwertyWC:Ljava/lang/String;

    .line 147
    const v1, 0x7f0900d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mVibrateKey:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompKey:Ljava/lang/String;

    .line 150
    const v1, 0x7f0900cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFQwertyPredictionKey:Ljava/lang/String;

    .line 151
    return-void
.end method

.method private initSetting()Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 81
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->initKey()V

    .line 82
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mOrientation:I

    .line 85
    iget v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mOrientation:I

    if-ne v7, v8, :cond_4

    .line 86
    const v7, 0x7f030026

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->addPreferencesFromResource(I)V

    .line 93
    :goto_0
    const v7, 0x7f0b0009

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 94
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mImePCQwertyKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 96
    .local v2, PCQwerty_setting:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_0

    .line 97
    const/high16 v7, 0x7f07

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, sip_type:[Ljava/lang/String;
    aget-object v7, v4, v8

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    .end local v2           #PCQwerty_setting:Lcom/htc/preference/HtcPreference;
    .end local v4           #sip_type:[Ljava/lang/String;
    :cond_0
    const v7, 0x7f0b0010

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mImePCQwertyKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 106
    .restart local v2       #PCQwerty_setting:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 108
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mImePCQwertySC:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 109
    .local v0, PCQwerty_SC:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 111
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mImePCQwertyWC:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 112
    .local v1, PCQwerty_WC:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 117
    .end local v0           #PCQwerty_SC:Lcom/htc/preference/HtcPreference;
    .end local v1           #PCQwerty_WC:Lcom/htc/preference/HtcPreference;
    .end local v2           #PCQwerty_setting:Lcom/htc/preference/HtcPreference;
    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompKey:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 118
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 119
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_2

    .line 120
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompPref:Lcom/htc/preference/HtcCheckBoxPreference;

    sget-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 124
    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFQwertyPredictionKey:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 125
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFQwertyPredictionKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFQwertyPredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 126
    iget-object v7, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFQwertyPredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 128
    .local v5, sp:Landroid/content/SharedPreferences;
    const v7, 0x7f090119

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 129
    .local v6, tracePrediction:Z
    iget-object v10, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mFQwertyPredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v6, :cond_5

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 133
    .end local v5           #sp:Landroid/content/SharedPreferences;
    .end local v6           #tracePrediction:Z
    :cond_3
    return v8

    .line 89
    :cond_4
    const v7, 0x7f030027

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .restart local v5       #sp:Landroid/content/SharedPreferences;
    .restart local v6       #tracePrediction:Z
    :cond_5
    move v7, v9

    .line 129
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->initSetting()Z

    .line 62
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getExtraValue()V

    .line 64
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    .line 233
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->modifiedFlag:I

    if-lez v1, :cond_1

    const-string v1, "MODIFIED"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->modifiedFlag:I

    if-ge v1, v2, :cond_1

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MODIFIED"

    iget v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->modifiedFlag:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    :cond_1
    iput v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->modifiedFlag:I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 156
    const/4 v8, 0x0

    .line 157
    .local v8, vibratePref:Lcom/htc/preference/HtcPreference;
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mVibrateKey:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 158
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mVibrateKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    .line 161
    :cond_0
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mCalibrateRunKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 162
    .local v3, finger_calibrate_run:Lcom/htc/preference/HtcPreference;
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mCalibrateResetKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 164
    .local v2, finger_calibrate_reset:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 166
    .local v1, cr:Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 167
    const/4 v9, 0x0

    .line 228
    :goto_0
    return v9

    .line 178
    :cond_1
    if-ne p2, v3, :cond_2

    .line 179
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "com.htc.android.htcime"

    const-string v10, "com.htc.android.htcime.tools.Calibration"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->startActivity(Landroid/content/Intent;)V

    .line 182
    const/4 v9, 0x4

    iput v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->modifiedFlag:I

    .line 228
    .end local v5           #intent:Landroid/content/Intent;
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 184
    :cond_2
    if-ne p2, v2, :cond_5

    .line 187
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_3

    .line 189
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS:[Ljava/lang/String;

    aget-object v9, v9, v4

    sget-object v10, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS_DEF:[F

    aget v10, v10, v4

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 191
    :cond_3
    const/4 v4, 0x0

    :goto_3
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_L_BIAS:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_4

    .line 193
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_L_BIAS:[Ljava/lang/String;

    aget-object v9, v9, v4

    sget-object v10, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_L_BIAS_DEF:[F

    aget v10, v10, v4

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 195
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090029

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 196
    .local v7, toast:Landroid/widget/Toast;
    const/16 v9, 0x50

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 197
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 198
    const/4 v9, 0x4

    iput v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->modifiedFlag:I

    goto :goto_1

    .line 201
    .end local v4           #i:I
    .end local v7           #toast:Landroid/widget/Toast;
    :cond_5
    if-eqz v8, :cond_8

    if-ne p2, v8, :cond_8

    .line 202
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 203
    .local v6, sp:Landroid/content/SharedPreferences;
    if-eqz v6, :cond_6

    .line 204
    invoke-virtual {v8}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 206
    .local v0, clickValue:Z
    if-eqz v0, :cond_7

    .line 207
    const-string v9, "htc.ime.isVibrateOn"

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    .end local v0           #clickValue:Z
    :cond_6
    :goto_4
    const/4 v9, 0x2

    iput v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->modifiedFlag:I

    goto :goto_1

    .line 209
    .restart local v0       #clickValue:Z
    :cond_7
    const-string v9, "htc.ime.isVibrateOn"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 216
    .end local v0           #clickValue:Z
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_8
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v9, :cond_9

    .line 217
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->mWordCompPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    .line 218
    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mWordComplete:Z

    .line 220
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 221
    .restart local v6       #sp:Landroid/content/SharedPreferences;
    if-eqz v6, :cond_9

    .line 222
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900cc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lcom/htc/android/htcime/HTCIMMData;->mWordComplete:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_9
    const/4 v9, 0x2

    iput v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsIMESettings;->modifiedFlag:I

    goto/16 :goto_1
.end method
