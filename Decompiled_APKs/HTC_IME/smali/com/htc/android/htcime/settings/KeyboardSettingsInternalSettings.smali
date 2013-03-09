.class public Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettingsInternalSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLPNonWordVibratePeriod:Lcom/htc/preference/HtcListPreference;

.field private mLPNonWordVibrateTimes:Lcom/htc/preference/HtcListPreference;

.field private mLPVibratePeriod:Lcom/htc/preference/HtcListPreference;

.field private mLPVibrateSkipThreshold:Lcom/htc/preference/HtcListPreference;

.field private mLPVibrateTimes:Lcom/htc/preference/HtcListPreference;

.field private mNonwordVibratePeriodKey:Ljava/lang/String;

.field private mNonwordVibrateTimesKey:Ljava/lang/String;

.field private mVibratePeriodKey:Ljava/lang/String;

.field private mVibrateSkipThresholdKey:Ljava/lang/String;

.field private mVibrateTimesKey:Ljava/lang/String;

.field private modifiedFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 33
    const-string v0, "KeyboardSettingsInternalSettings"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->modifiedFlag:I

    return-void
.end method

.method private initKey()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mNonwordVibrateTimesKey:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mNonwordVibratePeriodKey:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mVibrateTimesKey:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mVibratePeriodKey:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mVibrateSkipThresholdKey:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private initLists()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mNonwordVibrateTimesKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibrateTimes:Lcom/htc/preference/HtcListPreference;

    .line 62
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibrateTimes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibrateTimes:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibrateTimes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mNonwordVibratePeriodKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibratePeriod:Lcom/htc/preference/HtcListPreference;

    .line 65
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibratePeriod:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibratePeriod:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibratePeriod:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mVibrateTimesKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateTimes:Lcom/htc/preference/HtcListPreference;

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateTimes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateTimes:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateTimes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mVibratePeriodKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibratePeriod:Lcom/htc/preference/HtcListPreference;

    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibratePeriod:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibratePeriod:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibratePeriod:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mVibrateSkipThresholdKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateSkipThreshold:Lcom/htc/preference/HtcListPreference;

    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateSkipThreshold:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 76
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateSkipThreshold:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateSkipThreshold:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->addPreferencesFromResource(I)V

    .line 46
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->initKey()V

    .line 48
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->initLists()Z

    .line 49
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    .line 115
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->modifiedFlag:I

    if-lez v1, :cond_1

    const-string v1, "MODIFIED"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->modifiedFlag:I

    if-ge v1, v2, :cond_1

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MODIFIED"

    iget v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->modifiedFlag:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    :cond_1
    iput v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->modifiedFlag:I

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mNonwordVibrateTimesKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, value:I
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibrateTimes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    .end local v0           #value:I
    :cond_0
    :goto_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->modifiedFlag:I

    .line 109
    const/4 v1, 0x1

    return v1

    .line 91
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mNonwordVibratePeriodKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .restart local v0       #value:I
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPNonWordVibratePeriod:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    .end local v0           #value:I
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mVibrateTimesKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    .restart local v0       #value:I
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateTimes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    .end local v0           #value:I
    .restart local p2
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mVibratePeriodKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 101
    .restart local v0       #value:I
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibratePeriod:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    .end local v0           #value:I
    .restart local p2
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mVibrateSkipThresholdKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .restart local v0       #value:I
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->mLPVibrateSkipThreshold:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsInternalSettings;->modifiedFlag:I

    .line 83
    const/4 v0, 0x1

    return v0
.end method
