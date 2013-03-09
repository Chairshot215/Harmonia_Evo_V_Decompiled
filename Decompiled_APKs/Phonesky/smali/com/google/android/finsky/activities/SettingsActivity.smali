.class public Lcom/google/android/finsky/activities/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mDestroyed:Z

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mUserSettingsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SettingsActivity;Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/SettingsActivity;->setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private changePasscode(Ljava/lang/String;)V
    .locals 4
    .parameter "newPasscode"

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 273
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "purchase-lock"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 277
    .local v0, purchaseLock:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    .end local v0           #purchaseLock:Landroid/preference/CheckBoxPreference;
    :goto_0
    return-void

    .line 280
    :cond_0
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private configureAboutSection(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "preferenceScreen"

    .prologue
    .line 285
    const-string v3, "build-version"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 286
    .local v0, buildVersion:Landroid/preference/Preference;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v2

    .line 287
    .local v2, repository:Lcom/google/android/finsky/appstate/PackageStateRepository;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, marketVersionName:Ljava/lang/String;
    const v3, 0x7f07020a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method private configureAdPrefsSection(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .parameter "preferenceScreen"

    .prologue
    .line 327
    const-string v5, "admob-ad"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 329
    .local v3, preference:Landroid/preference/CheckBoxPreference;
    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->INTEREST_BASED_ADS_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/google/android/finsky/activities/SettingsActivity;->setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V

    .line 331
    const-string v5, "admob-ad-desc"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/LinkPreference;

    .line 333
    .local v1, admobMore:Lcom/google/android/finsky/utils/LinkPreference;
    const v5, 0x7f04008f

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/utils/LinkPreference;->setLayoutResource(I)V

    .line 334
    sget-object v5, Lcom/google/android/finsky/config/G;->adPrefsLearnMoreUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    .local v0, adPrefsLearnMoreUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/ads/AdSettings;->getSigString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, sigString:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?sig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_0
    const v5, 0x7f070219

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, descriptionText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/utils/LinkPreference;->setLink(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method private configureAutoAddShortcuts(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "preferenceScreen"

    .prologue
    .line 409
    const-string v2, "auto-add-shortcuts"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 411
    .local v0, autoAddShortcuts:Landroid/preference/CheckBoxPreference;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    .line 412
    .local v1, isIcsAndAbove:Z
    :goto_0
    if-eqz v1, :cond_1

    const v2, 0x7f070225

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 414
    if-eqz v1, :cond_2

    const v2, 0x7f070226

    :goto_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 416
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 417
    return-void

    .line 411
    .end local v1           #isIcsAndAbove:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 412
    .restart local v1       #isIcsAndAbove:Z
    :cond_1
    const v2, 0x7f070223

    goto :goto_1

    .line 414
    :cond_2
    const v2, 0x7f070224

    goto :goto_2
.end method

.method private configureAutoUpdateByDefault(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "preferenceScreen"

    .prologue
    .line 402
    const-string v2, "auto-update-by-default"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 404
    .local v0, autoUpdateByDefault:Landroid/preference/CheckBoxPreference;
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 405
    .local v1, value:Ljava/lang/Boolean;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 406
    return-void

    .line 405
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method private configureUpdateNotifications(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter "preferenceScreen"

    .prologue
    .line 378
    const-string v1, "update-notifications"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 380
    .local v0, updateNotifications:Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 381
    return-void
.end method

.method private configureUpdateOverWifiOnly(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "preferenceScreen"

    .prologue
    .line 384
    const-string v2, "update-over-wifi-only"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 386
    .local v1, updateOverWifiOnly:Landroid/preference/CheckBoxPreference;
    if-nez v1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->hasMobileNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 394
    :cond_1
    const-string v2, "category-general"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 396
    .local v0, generalCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private configureUserControlsSection(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "preferenceScreen"

    .prologue
    .line 296
    sget-object v3, Lcom/google/android/finsky/config/G;->vendingHideContentRating:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 297
    .local v1, hideContentRating:Z
    if-eqz v1, :cond_0

    .line 298
    const-string v3, "content-level"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 299
    .local v0, contentLevel:Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    .end local v0           #contentLevel:Landroid/preference/Preference;
    :cond_0
    const-string v3, "purchase-lock"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 303
    .local v2, preference:Landroid/preference/CheckBoxPreference;
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->syncUserControlsState()V

    .line 306
    return-void
.end method

.method private processAdSettingChange(Landroid/preference/CheckBoxPreference;Z)V
    .locals 3
    .parameter "preference"
    .parameter "isChecked"

    .prologue
    .line 358
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 361
    new-instance v0, Lcom/google/android/finsky/ads/AdSettings;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/ads/AdSettings;-><init>(Landroid/content/Context;Lcom/android/volley/RequestQueue;)V

    .line 362
    .local v0, settings:Lcom/google/android/finsky/ads/AdSettings;
    new-instance v1, Lcom/google/android/finsky/activities/SettingsActivity$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/finsky/activities/SettingsActivity$1;-><init>(Lcom/google/android/finsky/activities/SettingsActivity;ZLandroid/preference/CheckBoxPreference;)V

    new-instance v2, Lcom/google/android/finsky/activities/SettingsActivity$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/finsky/activities/SettingsActivity$2;-><init>(Lcom/google/android/finsky/activities/SettingsActivity;Landroid/preference/CheckBoxPreference;Z)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/finsky/ads/AdSettings;->enableInterestBasedAds(ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 375
    return-void
.end method

.method private setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1
    .parameter "preference"
    .parameter "isEnabled"

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 141
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const v1, 0x7f0701d4

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private syncUserControlsState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 314
    const-string v1, "unlock-settings"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 317
    const-string v1, "content-level"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-boolean v4, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 319
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 321
    .local v0, enablePurchaseLock:Z
    :goto_1
    const-string v1, "purchase-lock"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    const-string v1, "change-passcode"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 324
    return-void

    .end local v0           #enablePurchaseLock:Z
    :cond_0
    move v1, v3

    .line 314
    goto :goto_0

    :cond_1
    move v0, v3

    .line 319
    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 233
    const/16 v2, 0x1e

    if-ne p1, v2, :cond_0

    if-ne p2, v3, :cond_0

    .line 234
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 235
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->setResult(I)V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->finish()V

    .line 263
    :goto_0
    return-void

    .line 238
    :cond_0
    const/16 v2, 0x1f

    if-ne p1, v2, :cond_1

    if-ne p2, v3, :cond_1

    .line 239
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    .line 240
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->syncUserControlsState()V

    goto :goto_0

    .line 242
    :cond_1
    const/16 v2, 0x20

    if-ne p1, v2, :cond_3

    if-ne p2, v3, :cond_3

    .line 243
    const-string v2, "new-pin"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, newPin:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-direct {p0, v4}, Lcom/google/android/finsky/activities/SettingsActivity;->changePasscode(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v3, "pinLock.confirm"

    invoke-interface {v2, v4, v4, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v3, "pinLock.confirm"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    const v2, 0x7f0701ce

    const-string v3, "new-pin"

    invoke-static {p0, v2, v1, v3, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 254
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v6}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 257
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #newPin:Ljava/lang/String;
    :cond_3
    if-ne p1, v6, :cond_4

    if-ne p2, v3, :cond_4

    .line 259
    const-string v2, "new-pin"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->changePasscode(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x7

    const/4 v5, 0x0

    .line 83
    invoke-static {}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->shouldUseSystemActionBar()Z

    move-result v1

    .line 84
    .local v1, useSystemActionBar:Z
    if-eqz v1, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->requestWindowFeature(I)Z

    .line 86
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v4, 0x7f04

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 90
    :cond_0
    const v2, 0x7f040105

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->addPreferencesFromResource(I)V

    .line 91
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 92
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    .line 93
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v3, "settings"

    invoke-interface {v2, v6, v6, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v3, "settings"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 98
    const-string v2, "Exit SettingsActivity - no current account."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->finish()V

    .line 111
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 84
    goto :goto_0

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->setupActionBar()V

    .line 104
    if-nez p1, :cond_3

    .line 105
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 109
    :cond_3
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 110
    .local v0, emptyPin:Z
    const-string v2, "unlocked"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mDestroyed:Z

    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 123
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->onBackPressed()V

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 163
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v3, "admob-ad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 169
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->processAdSettingChange(Landroid/preference/CheckBoxPreference;Z)V

    move v0, v1

    .line 224
    :goto_0
    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 228
    :cond_0
    return v2

    .line 170
    :cond_1
    const-string v3, "update-notifications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 172
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v1

    .line 173
    goto :goto_0

    :cond_2
    const-string v3, "auto-update-by-default"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 175
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 176
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v2

    .line 178
    goto :goto_0

    :cond_3
    const-string v3, "update-over-wifi-only"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 180
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v2

    .line 182
    goto :goto_0

    :cond_4
    const-string v3, "auto-add-shortcuts"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 184
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v2

    .line 186
    goto :goto_0

    :cond_5
    const-string v3, "clear-history"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 187
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    move v0, v1

    .line 189
    goto/16 :goto_0

    :cond_6
    const-string v3, "purchase-lock"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 190
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 191
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v0, v2

    .line 193
    goto/16 :goto_0

    :cond_7
    const-string v3, "unlock-settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 194
    const v3, 0x7f0701d0

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v3, v0, v5, v1}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 196
    iget-object v3, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v4, "pinLock.unlockSettings"

    invoke-interface {v3, v5, v5, v4}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v4, "pinLock.unlockSettings"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const/16 v3, 0x1f

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 199
    goto/16 :goto_0

    :cond_8
    const-string v3, "content-level"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 200
    const-class v0, Lcom/google/android/finsky/activities/ContentFilterActivity;

    const-string v3, "authAccount"

    iget-object v4, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-static {p0, v0, v3, v4}, Lcom/google/android/finsky/utils/IntentUtils;->createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    const/16 v3, 0x1e

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 206
    goto/16 :goto_0

    :cond_9
    const-string v3, "change-passcode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 207
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    move v3, v2

    .line 209
    :goto_1
    if-eqz v3, :cond_b

    const v0, 0x7f0701cc

    .line 211
    :goto_2
    const-string v4, "new-pin"

    invoke-static {p0, v0, v5, v4, v3}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 213
    iget-object v3, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v4, "pinLock.set"

    invoke-interface {v3, v5, v5, v4}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v4, "pinLock.set"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const/16 v3, 0x20

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 216
    goto/16 :goto_0

    :cond_a
    move v3, v1

    .line 208
    goto :goto_1

    .line 209
    :cond_b
    const v0, 0x7f0701cd

    goto :goto_2

    .line 216
    :cond_c
    const-string v3, "os-licenses"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 217
    const v0, 0x7f0701c7

    const-string v3, "file:///android_asset/licenses.html"

    invoke-static {p0, v0, v3}, Lcom/google/android/finsky/activities/WebViewDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 220
    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 221
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 131
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUpdateNotifications(Landroid/preference/PreferenceScreen;)V

    .line 132
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAutoUpdateByDefault(Landroid/preference/PreferenceScreen;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAutoAddShortcuts(Landroid/preference/PreferenceScreen;)V

    .line 134
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUpdateOverWifiOnly(Landroid/preference/PreferenceScreen;)V

    .line 135
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUserControlsSection(Landroid/preference/PreferenceScreen;)V

    .line 136
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAdPrefsSection(Landroid/preference/PreferenceScreen;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAboutSection(Landroid/preference/PreferenceScreen;)V

    .line 138
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "unlocked"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mUserSettingsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    return-void
.end method
