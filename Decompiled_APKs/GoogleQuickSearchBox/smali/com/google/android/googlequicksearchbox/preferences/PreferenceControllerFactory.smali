.class public Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;
.super Ljava/lang/Object;
.source "PreferenceControllerFactory.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory$UnknownPreferenceException;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private final mControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private final mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/NewSourceWatcher;Landroid/app/Activity;)V
    .locals 2
    .parameter "settings"
    .parameter "loginHelper"
    .parameter "config"
    .parameter "helper"
    .parameter "newSourceWatcher"
    .parameter "activity"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    .line 60
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 61
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mActivity:Landroid/app/Activity;

    .line 62
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 63
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 64
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    .line 65
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 66
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 67
    return-void
.end method

.method private createControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    .locals 8
    .parameter "p"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getControllerId(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v6

    .line 129
    .local v6, app:Lcom/google/android/googlequicksearchbox/QsbApplication;
    const-string v0, "search_sources"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryStrategy()Lcom/google/android/googlequicksearchbox/QueryStrategy;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/NewSourceWatcher;Landroid/content/Context;Lcom/google/android/googlequicksearchbox/QueryStrategy;)V

    .line 145
    :goto_0
    return-object v0

    .line 132
    :cond_0
    const-string v0, "clear_shortcuts"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClickLog()Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryStrategy()Lcom/google/android/googlequicksearchbox/QueryStrategy;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/ClearShortcutsController;-><init>(Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;Lcom/google/android/googlequicksearchbox/QueryStrategy;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;)V

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "use_location"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/LocationSettingController;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    goto :goto_0

    .line 137
    :cond_2
    const-string v0, "search_history"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/Config;Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V

    goto :goto_0

    .line 140
    :cond_3
    const-string v0, "use_google_com"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;-><init>(Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Landroid/app/Activity;)V

    goto :goto_0

    .line 142
    :cond_4
    const-string v0, "open_source_licenses"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 145
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    .locals 3
    .parameter "p"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getControllerId(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 152
    .local v0, c:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->createControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, v1, v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->addController(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;)V

    .line 158
    :cond_0
    return-object v0
.end method

.method private getControllerId(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, key:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 123
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 117
    .restart local v0       #key:Ljava/lang/String;
    :cond_1
    const-string v1, "search_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "manage_search_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "google_account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :cond_2
    const-string v0, "search_history"

    goto :goto_0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private handlePrerenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 179
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 180
    .local v0, child:Landroid/preference/Preference;
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->filterPreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->handlePreference(Landroid/preference/Preference;)V

    goto :goto_1

    .line 186
    .end local v0           #child:Landroid/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected addController(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;)V
    .locals 1
    .parameter "key"
    .parameter "controller"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public filterPreference(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "p"

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, c:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    instance-of v2, p1, Landroid/preference/PreferenceGroup;

    if-nez v2, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    move-result-object v0

    .line 168
    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, filter:Z
    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->filterPreference(Landroid/preference/Preference;)Z

    move-result v1

    .line 173
    :cond_1
    return v1
.end method

.method protected getContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->getControllerFor(Landroid/preference/Preference;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    move-result-object v0

    .line 194
    .local v0, c:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    if-eqz v0, :cond_1

    .line 196
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    .line 206
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 197
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    .line 198
    check-cast p1, Landroid/preference/PreferenceGroup;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->handlePrerenceGroup(Landroid/preference/PreferenceGroup;)V

    goto :goto_0

    .line 201
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory$UnknownPreferenceException;

    invoke-direct {v1, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory$UnknownPreferenceException;-><init>(Landroid/preference/Preference;)V

    throw v1
.end method

.method public onCreateComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 78
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 79
    .local v0, controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onCreateComplete(Landroid/os/Bundle;)V

    goto :goto_0

    .line 81
    .end local v0           #controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 97
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 98
    .local v0, controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onDestroy()V

    goto :goto_0

    .line 100
    .end local v0           #controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 101
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 84
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 85
    .local v0, controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-interface {v0, v2}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->setScreen(Landroid/preference/PreferenceScreen;)V

    .line 86
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onResume()V

    goto :goto_0

    .line 88
    .end local v0           #controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 105
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 106
    .local v0, controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 108
    .end local v0           #controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 91
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 92
    .local v0, controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onStop()V

    goto :goto_0

    .line 94
    .end local v0           #controller:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    :cond_0
    return-void
.end method

.method public setScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->mScreen:Landroid/preference/PreferenceScreen;

    .line 211
    return-void
.end method
