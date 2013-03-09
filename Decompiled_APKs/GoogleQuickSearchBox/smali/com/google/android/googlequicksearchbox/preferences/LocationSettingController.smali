.class public Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.source "LocationSettingController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mUseLocationPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    .line 34
    return-void
.end method

.method private updateUseLocationPreference()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;->mUseLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getUseLocationForServices()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public handlePreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 43
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;->mUseLocationPreference:Landroid/preference/CheckBoxPreference;

    .line 44
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;->mUseLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;->mUseLocationPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 53
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 54
    .local v0, useLocation:Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setUseLocationForServices(Z)V

    .line 57
    .end local v0           #useLocation:Z
    :cond_0
    return v1

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;->updateUseLocationPreference()V

    .line 39
    return-void
.end method
