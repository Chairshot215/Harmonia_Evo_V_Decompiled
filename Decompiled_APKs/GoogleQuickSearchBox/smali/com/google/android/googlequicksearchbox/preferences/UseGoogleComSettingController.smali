.class public Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.source "UseGoogleComSettingController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Landroid/app/Activity;)V
    .locals 0
    .parameter "config"
    .parameter "settings"
    .parameter "searchUrlHelper"
    .parameter "activity"

    .prologue
    .line 49
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    .line 50
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 51
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 52
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mActivity:Landroid/app/Activity;

    .line 53
    invoke-interface {p2, p0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 54
    return-void
.end method

.method private getSummary(Z)Ljava/lang/String;
    .locals 5
    .parameter "alwaysGoogleCom"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    const v0, 0x7f0b002e

    .line 88
    .local v0, stringId:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getLocalSearchDomain()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    .end local v0           #stringId:I
    :cond_0
    const v0, 0x7f0b002d

    goto :goto_0
.end method


# virtual methods
.method public filterPreference(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->isDotComAnyway()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getFixedSearchDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 65
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    .line 66
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onDestroy()V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 96
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 78
    const-string v0, "search_domain_apply_time"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    return-void
.end method
