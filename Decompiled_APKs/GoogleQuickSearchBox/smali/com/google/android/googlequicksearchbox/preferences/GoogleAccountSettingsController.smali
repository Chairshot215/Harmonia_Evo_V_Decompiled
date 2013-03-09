.class public Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.source "GoogleAccountSettingsController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mAccountObserver:Landroid/database/DataSetObserver;

.field private final mActivity:Landroid/app/Activity;

.field private mClearShortcutsPreference:Landroid/preference/Preference;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

.field private mManageSearchHistoryPreference:Landroid/preference/Preference;

.field private final mPsuggestAvailable:Z

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

.field private mSelectAccountPreference:Landroid/preference/ListPreference;

.field private final mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/Config;Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V
    .locals 1
    .parameter "settings"
    .parameter "loginHelper"
    .parameter "config"
    .parameter "activity"
    .parameter "urlHelper"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    .line 62
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$1;-><init>(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mAccountObserver:Landroid/database/DataSetObserver;

    .line 72
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 73
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mActivity:Landroid/app/Activity;

    .line 74
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 75
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->isPsuggestAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccount()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccounts()V

    return-void
.end method

.method private getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    return-object v0
.end method

.method private hasAccount()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setManageSearchHistoryPreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "manageSearchHistory"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    .line 158
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 159
    return-void
.end method

.method private setSearchHistoryPreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "searchHistory"

    .prologue
    .line 152
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    .line 153
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    return-void
.end method

.method private setSelectAccountPreference(Landroid/preference/Preference;)V
    .locals 3
    .parameter "selectAccount"

    .prologue
    const/4 v2, 0x0

    .line 162
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    .line 163
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    return-void
.end method

.method private updateAccount()V
    .locals 8

    .prologue
    const v7, 0x7f0b0023

    const v3, 0x7f0b0020

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->hasAccount()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 258
    const-string v1, "QSB.GoogleAccountSettingsController"

    const-string v2, "No account configured. Disabling search history."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 264
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 267
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 268
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 270
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, account:Ljava/lang/String;
    const-string v1, "QSB.GoogleAccountSettingsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0021

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0022

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 283
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0025

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAccounts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 169
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAllAccounts()[Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, accounts:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 173
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v3, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccount()V

    .line 187
    return-void

    .line 176
    :cond_0
    if-eqz v0, :cond_2

    array-length v1, v0

    if-le v1, v3, :cond_2

    .line 178
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSearchHistorySettingVisibility()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->areShortcutsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mClearShortcutsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mClearShortcutsPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mClearShortcutsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public filterPreference(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, key:Ljava/lang/String;
    const-string v1, "search_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->setSearchHistoryPreference(Landroid/preference/Preference;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v1, "manage_search_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->setManageSearchHistoryPreference(Landroid/preference/Preference;)V

    goto :goto_0

    .line 146
    :cond_2
    const-string v1, "google_account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->setSelectAccountPreference(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onCreateComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onCreateComplete(Landroid/os/Bundle;)V

    .line 83
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mAccountObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mAccountObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onDestroy()V

    .line 119
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x1

    .line 226
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSelectAccountPreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    if-eqz v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->setAccountToUse(Ljava/lang/String;)Z

    move-result v0

    .line 232
    :cond_0
    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    .line 193
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;-><init>(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->requestAccount(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateSearchHistorySettingVisibility()V

    .line 220
    :cond_1
    :goto_0
    return v5

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 216
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    .line 218
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->start()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onResume()V

    .line 98
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateSearchHistorySettingVisibility()V

    .line 99
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mPsuggestAvailable:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccounts()V

    .line 102
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->cancel()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mManageSearchHistoryHelper:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    .line 110
    :cond_0
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onStop()V

    .line 111
    return-void
.end method

.method public setScreen(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    if-eq v0, p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    .line 133
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "clear_shortcuts"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mClearShortcutsPreference:Landroid/preference/Preference;

    .line 136
    :cond_0
    return-void
.end method
