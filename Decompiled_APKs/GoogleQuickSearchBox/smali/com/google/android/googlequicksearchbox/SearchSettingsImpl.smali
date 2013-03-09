.class public Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;
.super Ljava/lang/Object;
.source "SearchSettingsImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SearchSettings;


# static fields
.field public static final RLZ_PROVIDER_URI:Landroid/net/Uri;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field protected final mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "content://com.google.android.partnersetup.rlzappprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/LocationSettings;)V
    .locals 0
    .parameter "context"
    .parameter "config"
    .parameter "locationSettings"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 159
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 160
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    .line 161
    return-void
.end method

.method private getNumVisibleSuggestionSlotsKey(I)Ljava/lang/String;
    .locals 2
    .parameter "orientation"

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "num_visible_suggestion_slots_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOldPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    const-string v1, "GoogleSearchSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getSourceClickStatsPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "sourceName"

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source_stats_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSourceEnabledPreference(Lcom/google/android/googlequicksearchbox/Source;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_corpus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebSourceEnabledPreference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "enable_corpus_web"

    return-object v0
.end method

.method private setSearchDomain(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "searchDomain"
    .parameter "countryCode"
    .parameter "applyTime"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 364
    .local v0, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "search_domain"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    const-string v1, "search_domain_country_code"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    const-string v1, "search_domain_apply_time"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 369
    return-void
.end method

.method private upgradeBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "oldKey"
    .parameter "newKey"
    .parameter "removeOld"

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 443
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 445
    if-eqz p3, :cond_0

    .line 446
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->removePref(Ljava/lang/String;)V

    .line 449
    :cond_0
    return-void
.end method

.method private upgradeSearchHistoryPreferenceIfNeeded()V
    .locals 6

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 411
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "search_history"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getOldPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 413
    .local v0, oldPrefs:Landroid/content/SharedPreferences;
    const-string v3, "search_history"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    const-string v3, "search_history"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 415
    .local v1, oldValue:Z
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->setShowSearchHistory(Z)V

    .line 416
    const-string v3, "QSB.SearchSettingsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copied old search history value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v0           #oldPrefs:Landroid/content/SharedPreferences;
    .end local v1           #oldValue:Z
    :cond_0
    return-void
.end method


# virtual methods
.method public addMenuItems(Landroid/view/Menu;Z)V
    .locals 3
    .parameter "menu"
    .parameter "showDisabled"

    .prologue
    .line 312
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f0f0001

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 314
    const v2, 0x7f100030

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 315
    .local v1, item:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 316
    return-void
.end method

.method public broadcastSettingsChanged()V
    .locals 4

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "QSB.SearchSettingsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method public firstRunDialogShown()V
    .locals 2

    .prologue
    .line 500
    const-string v0, "first_run_dialog_version"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeInt(Ljava/lang/String;I)V

    .line 501
    return-void
.end method

.method public getCachedZeroQueryWebResults()Ljava/lang/String;
    .locals 3

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zero_query_web_results"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method public getGoogleAccountToUse()Ljava/lang/String;
    .locals 3

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "google_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKnownSourceNames()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 221
    .local v4, knownSourceNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "known_source_names"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, json:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 224
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, array:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 226
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    :catch_0
    move-exception v2

    .line 229
    .local v2, je:Lorg/json/JSONException;
    const-string v5, "QSB.SearchSettingsImpl"

    const-string v6, "Error loading known source names."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v2           #je:Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method

.method public getNotificationsState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notifications_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumVisibleSuggestionSlots(II)I
    .locals 2
    .parameter "orientation"
    .parameter "defaultValue"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getNumVisibleSuggestionSlotsKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSearchDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_domain"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchDomainApplyTime()J
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_domain_apply_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchDomainCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_domain_country_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    const-string v1, "SearchSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSearchSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, settings:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    return-object v0
.end method

.method public getSourceClickStats(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sourceName"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSourceClickStatsPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseLocationForServices()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->shouldSendLocation()Z

    move-result v0

    return v0
.end method

.method public isSearchHistoryEnabled()Z
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->isPsuggestAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_history"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSourceEnabled(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 3
    .parameter "source"

    .prologue
    .line 213
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v0

    .line 214
    .local v0, defaultEnabled:Z
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSourceEnabledPreference(Lcom/google/android/googlequicksearchbox/Source;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, sourceEnabledPref:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public isWebSourceEnabled()Z
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getWebSourceEnabledPreference()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 543
    return-void
.end method

.method protected removePref(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 297
    return-void
.end method

.method public resetSearchDomainApplyTime()V
    .locals 3

    .prologue
    .line 378
    const-string v0, "search_domain_apply_time"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeLong(Ljava/lang/String;J)V

    .line 379
    return-void
.end method

.method public setCachedZeroQueryWebResults(Ljava/lang/String;)V
    .locals 1
    .parameter "jsonData"

    .prologue
    .line 510
    const-string v0, "zero_query_web_results"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public setFirstRunComplete()V
    .locals 2

    .prologue
    .line 537
    const-string v0, "first_run_help_version_displayed"

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeInt(Ljava/lang/String;I)V

    .line 538
    return-void
.end method

.method public setGoogleAccountToUse(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 477
    const-string v0, "google_account"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->removePref(Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->setShowSearchHistory(Z)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v0, "google_account"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setKnownSourceNames(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, knownSourceNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 238
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    .local v2, sourceName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 241
    .end local v2           #sourceName:Ljava/lang/String;
    :cond_0
    const-string v3, "known_source_names"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public setNotificationsState(Ljava/lang/String;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 251
    const-string v0, "notifications_state"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setNumVisibleSuggestionSlots(II)V
    .locals 1
    .parameter "orientation"
    .parameter "count"

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getNumVisibleSuggestionSlotsKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeInt(Ljava/lang/String;I)V

    .line 522
    return-void
.end method

.method public setPsuggestAvailableIfAbsent()V
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "psuggest_available"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const-string v0, "psuggest_available"

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->isPsuggestAvailable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 430
    :cond_0
    return-void
.end method

.method public setSearchDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "searchDomain"
    .parameter "countryCode"

    .prologue
    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->setSearchDomain(Ljava/lang/String;Ljava/lang/String;J)V

    .line 374
    return-void
.end method

.method public setShowSearchHistory(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 467
    const-string v0, "search_history"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 468
    return-void
.end method

.method public setSourceClickStats(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceName"
    .parameter "stats"

    .prologue
    .line 270
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSourceClickStatsPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public setUseGoogleCom(Z)V
    .locals 1
    .parameter "useGoogleCom"

    .prologue
    .line 336
    const-string v0, "use_google_com"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->storeBoolean(Ljava/lang/String;Z)V

    .line 337
    return-void
.end method

.method public setUseLocationForServices(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->setUseLocationForServices(Z)V

    .line 389
    return-void
.end method

.method public shouldSendLocation(Z)Z
    .locals 1
    .parameter "prompt"

    .prologue
    .line 393
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->isUseLocationSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->showLocationOptIn()V

    .line 395
    const/4 v0, 0x0

    .line 397
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->shouldSendLocation()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldShowFirstRunDialog()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 489
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 490
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 495
    :goto_0
    return v3

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "first_run_dialog_version"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 495
    .local v1, lastVersion:I
    if-eq v1, v2, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public shouldShowFirstRunHelp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 530
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "first_run_help_version_displayed"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 532
    .local v0, version:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public shouldUseGoogleCom()Z
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_google_com"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldUseLocalWebHistory()Z
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->isSearchHistoryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected storeBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 281
    return-void
.end method

.method protected storeInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 285
    return-void
.end method

.method protected storeLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 289
    return-void
.end method

.method protected storeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 293
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 548
    return-void
.end method

.method public upgradeSettingsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 173
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->upgradeSearchHistoryPreferenceIfNeeded()V

    .line 176
    const-string v0, "enable_corpus_apps"

    const-string v1, "enable_corpus_com.android.providers.applications/.ApplicationLauncher"

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->upgradeBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    const-string v0, "enable_corpus_web"

    const-string v1, "enable_corpus_com.android.browser/.BookmarkSearch"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->upgradeBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isIceCreamSandwichOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "enable_corpus_com.android.contacts/.SearchResultsActivity"

    const-string v1, "enable_corpus_com.android.contacts/.activities.PeopleActivity"

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->upgradeBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    const-string v0, "enable_corpus_com.android.contacts/.activities.ContactBrowserActivity"

    const-string v1, "enable_corpus_com.android.contacts/.activities.PeopleActivity"

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->upgradeBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    :cond_0
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "enable_corpus_com.google.android.music/com.android.music.QueryBrowserActivity"

    const-string v1, "enable_corpus_com.google.android.music/com.android.music.activitymanagement.TopLevelActivity"

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->upgradeBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->setPsuggestAvailableIfAbsent()V

    .line 196
    return-void
.end method
