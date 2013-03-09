.class public Lcom/google/android/voicesearch/VoiceSearchPreferences;
.super Landroid/preference/PreferenceActivity;
.source "VoiceSearchPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mLanguagePref:Landroid/preference/ListPreference;

.field private mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mManagePersonalizationPref:Landroid/preference/PreferenceScreen;

.field private mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

.field private mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getSafeSearchSetting(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 144
    const-string v3, "VoiceSearchPreferences"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "safeSearch"

    const-string v4, "moderate"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, safeSearch:Ljava/lang/String;
    const-string v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    :goto_0
    return v2

    .line 149
    :cond_0
    const-string v2, "strict"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const/4 v2, 0x2

    goto :goto_0

    .line 152
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setSafeSearchSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 3
    .parameter "safeSearch"
    .parameter "value"

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, summary:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const v1, 0x7f0a07c4

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a07c7

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 239
    :cond_0
    const-string v1, "strict"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const v1, 0x7f0a07c6

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_1
    const v1, 0x7f0a07c5

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setShouldShowFirstRunMessage(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "shouldShow"

    .prologue
    .line 136
    const-string v1, "VoiceSearchPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showFirstRunDialog"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 141
    return-void
.end method

.method private setUpLanguagePref()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 205
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageChoices()[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, languageCodes:[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v3, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, languageNames:[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 210
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 219
    :cond_0
    const-string v3, "VoiceSearchPreferences"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLanguagePref.getValue() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getLanguageOverride()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, languageOverride:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 225
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    const v4, 0x7f0a0736

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    iget-object v5, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static shouldShowFirstRunMessage(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 131
    const-string v0, "VoiceSearchPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showFirstRunDialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 95
    .local v0, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 96
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    .line 97
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "VoiceSearchPreferences"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 104
    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->addPreferencesFromResource(I)V

    .line 107
    const-string v3, "safeSearch"

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 108
    .local v2, safeSearch:Landroid/preference/ListPreference;
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->setSafeSearchSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 111
    const-string v3, "language"

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    .line 112
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 113
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    invoke-direct {p0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->setUpLanguagePref()V

    .line 116
    const-string v3, "personalizedResults"

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

    .line 117
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    const-string v3, "managePersonalization"

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mManagePersonalizationPref:Landroid/preference/PreferenceScreen;

    .line 120
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mManagePersonalizationPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 124
    .local v1, prefsScreen:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->isPersonalizationAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mManagePersonalizationPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 159
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x1

    .line 183
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, key:Ljava/lang/String;
    const-string v4, "safeSearch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->setSafeSearchSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return v7

    .line 186
    .restart local p1
    :cond_1
    const-string v4, "language"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    iget-object v4, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v4, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_2
    const-string v4, "personalizedResults"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 192
    check-cast v1, Ljava/lang/Boolean;

    .line 193
    .local v1, enable:Ljava/lang/Boolean;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.voicesearch.action.PERSONALIZATION_OPT_IN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, startIntent:Landroid/content/Intent;
    const-string v4, "PERSONALIZATION_OPT_IN_ENABLE"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "VoiceSearchPreferences"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t start personalization opt-in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, key:Ljava/lang/String;
    const-string v2, "managePersonalization"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationDashboardLink()V

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationDashboardUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .local v1, viewIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->startActivity(Landroid/content/Intent;)V

    .line 175
    const/4 v2, 0x1

    .line 177
    .end local v1           #viewIntent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    return-void
.end method
