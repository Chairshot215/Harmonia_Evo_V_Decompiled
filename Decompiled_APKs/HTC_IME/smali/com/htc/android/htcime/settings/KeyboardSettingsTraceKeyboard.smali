.class public Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettingsTraceKeyboard.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAutoCommitSpeedKey:Ljava/lang/String;

.field private mAutoCommitSpeedPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

.field private mModifiedFlag:I

.field private mStrokeColorKey:Ljava/lang/String;

.field private mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

.field private mStrokeWidthKey:Ljava/lang/String;

.field private mStrokeWidthPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

.field private mTracePredictionKey:Ljava/lang/String;

.field private mTracePredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->DEBUG:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mModifiedFlag:I

    return-void
.end method

.method private initSetting()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 103
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->addPreferencesFromResource(I)V

    .line 105
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f090119

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mTracePredictionKey:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mTracePredictionKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mTracePredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 110
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mTracePredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mTracePredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 113
    const v2, 0x7f09011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorKey:Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    iput-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    .line 115
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorKey:Ljava/lang/String;

    const-string v4, "7"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->removeColorFulFromEntries()V

    .line 120
    const v2, 0x7f09011b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthKey:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    iput-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    .line 122
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    invoke-virtual {v2, v5}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->setMax(I)V

    .line 123
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthKey:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->setProgress(I)V

    .line 124
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    invoke-virtual {v2, p0}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->setOnProgressSubmittedListener(Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;)V

    .line 126
    const v2, 0x7f09011c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedKey:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    iput-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    .line 128
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->setMax(I)V

    .line 129
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedKey:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->setProgress(I)V

    .line 130
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    invoke-virtual {v2, p0}, Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;->setOnProgressSubmittedListener(Lcom/htc/android/htcime/settings/StrokeSeekBarPreference$OnProgressSubmittedListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 135
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 137
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->initSetting()Z

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    .line 63
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->syncModifiedLevelToSP()V

    .line 64
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 68
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, select_idx:I
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->setModifiedLevel(I)V

    .line 81
    .end local v0           #select_idx:I
    :cond_0
    :goto_0
    return v5

    .line 73
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mTracePredictionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v2, :cond_0

    move-object v2, p2

    .line 74
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->setModifiedLevel(I)V

    goto :goto_0
.end method

.method public onProgressSubmitted(Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;I)V
    .locals 4
    .parameter "ssbpreference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x2

    .line 85
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    if-ne p1, v1, :cond_1

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeWidthKey:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->setModifiedLevel(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedPref:Lcom/htc/android/htcime/settings/StrokeSeekBarPreference;

    if-ne p1, v1, :cond_0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mAutoCommitSpeedKey:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->setModifiedLevel(I)V

    goto :goto_0
.end method

.method removeColorFulFromEntries()V
    .locals 11

    .prologue
    .line 144
    const/4 v0, -0x1

    .line 145
    .local v0, colorfulPosInEntries:I
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color_used_in_setting:[I

    .line 146
    .local v1, colors:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v1

    if-ge v2, v9, :cond_0

    .line 147
    aget v9, v1, v2

    sget-object v10, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->COLORFUL:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 148
    move v0, v2

    .line 152
    :cond_0
    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    .line 178
    :goto_1
    return-void

    .line 146
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_2
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 158
    .local v6, oldEntries:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 160
    .local v7, oldEntryValues:[Ljava/lang/CharSequence;
    array-length v9, v6

    array-length v10, v7

    if-eq v9, v10, :cond_3

    .line 161
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->TAG:Ljava/lang/String;

    const-string v10, "[removeColorFulFromEntries] mStrokeColorPref\'s entries size is not equal than its EntryValues size!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    :cond_3
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    new-array v3, v9, [Ljava/lang/CharSequence;

    .line 166
    .local v3, newEntries:[Ljava/lang/CharSequence;
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    new-array v4, v9, [Ljava/lang/CharSequence;

    .line 168
    .local v4, newEntryValues:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .local v8, oldIdx:I
    const/4 v5, 0x0

    .local v5, newIdx:I
    :goto_2
    array-length v9, v6

    if-ge v8, v9, :cond_5

    .line 169
    if-ne v8, v0, :cond_4

    .line 168
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 172
    :cond_4
    aget-object v9, v6, v8

    aput-object v9, v3, v5

    .line 173
    aget-object v9, v7, v8

    aput-object v9, v4, v5

    .line 174
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 176
    :cond_5
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 177
    iget-object v9, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mStrokeColorPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method setModifiedLevel(I)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 181
    iget v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mModifiedFlag:I

    if-le p1, v0, :cond_0

    .line 182
    iput p1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mModifiedFlag:I

    .line 183
    :cond_0
    return-void
.end method

.method syncModifiedLevelToSP()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    .local v0, sp:Landroid/content/SharedPreferences;
    iget v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mModifiedFlag:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mModifiedFlag:I

    const-string v2, "MODIFIED"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MODIFIED"

    iget v3, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mModifiedFlag:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    :cond_0
    iput v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsTraceKeyboard;->mModifiedFlag:I

    .line 192
    return-void
.end method
