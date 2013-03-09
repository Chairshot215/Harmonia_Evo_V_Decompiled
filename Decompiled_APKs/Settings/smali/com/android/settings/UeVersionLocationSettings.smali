.class public Lcom/android/settings/UeVersionLocationSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "UeVersionLocationSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UeVersionLocationSettings"


# instance fields
.field private vzwLaunchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/UeVersionLocationSettings;->vzwLaunchIntent:Landroid/content/Intent;

    return-void
.end method

.method private pluginExtraComponents_LocationService()V
    .locals 8

    .prologue
    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v4, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    const/4 v1, 0x0

    .line 175
    .local v1, category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/UeVersionLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 176
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 211
    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getPhoneFinderVisibility(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 179
    new-instance v3, Lcom/android/settings/framework/preference/location/HtcLocatePreference;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;-><init>(Landroid/content/Context;)V

    .line 180
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getIntegrateGoogleNavigationVisibility(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 184
    new-instance v3, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;-><init>(Landroid/content/Context;)V

    .line 185
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_3
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getReinstallLocationAppVisibility(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 189
    new-instance v3, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;-><init>(Landroid/content/Context;)V

    .line 190
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 194
    .local v6, size:I
    if-lez v6, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/UeVersionLocationSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    .line 197
    .local v5, root:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v5, :cond_0

    .line 202
    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v1           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-direct {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 203
    .restart local v1       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v7, 0x7f0c00b1

    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 204
    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 207
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 208
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v11, "LOG_TAG"

    const-string v12, "onCreate"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/UeVersionLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 53
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 57
    iget-object v11, p0, Lcom/android/settings/UeVersionLocationSettings;->vzwLaunchIntent:Landroid/content/Intent;

    const-class v12, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    iget-object v11, p0, Lcom/android/settings/UeVersionLocationSettings;->vzwLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/android/settings/UeVersionLocationSettings;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 69
    .local v10, privateData:Landroid/content/Intent;
    const/4 v2, -0x1

    .line 70
    .local v2, forceOrientation:I
    if-eqz v10, :cond_2

    .line 71
    const-string v11, "com.htc.content.intent.extra.EXTRA_FORCE_APP_ORIENTATION"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 72
    :cond_2
    const/4 v11, -0x1

    if-eq v11, v2, :cond_4

    const/4 v11, 0x3

    if-eq v11, v2, :cond_3

    if-eqz v2, :cond_3

    const/4 v11, 0x5

    if-eq v11, v2, :cond_3

    const/4 v11, 0x1

    if-eq v11, v2, :cond_3

    const/4 v11, 0x4

    if-eq v11, v2, :cond_3

    const/4 v11, -0x1

    if-eq v11, v2, :cond_3

    const/4 v11, 0x2

    if-ne v11, v2, :cond_4

    .line 80
    :cond_3
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 84
    :cond_4
    new-instance v4, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v4, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 85
    .local v4, locationCat:Lcom/htc/preference/HtcPreferenceCategory;
    const v11, 0x7f0c0a8a

    invoke-virtual {v4, v11}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/UeVersionLocationSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/settings/UeVersionLocationSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/UeVersionLocationSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 91
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getUseWirelessNetworkVisibility(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 92
    new-instance v8, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;

    invoke-direct {v8, v0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;-><init>(Landroid/content/Context;)V

    .line 94
    .local v8, mNetworkPreference:Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;
    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 95
    invoke-virtual {p0, v8}, Lcom/android/settings/UeVersionLocationSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 102
    .end local v8           #mNetworkPreference:Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;
    :cond_5
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getGPSOneLocNetworkVisibility(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 103
    sget-object v11, Lcom/android/settings/HtcCdmaFeatureReceiver;->contentObserverOfGPS:Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;

    if-nez v11, :cond_6

    .line 104
    invoke-static {v0}, Lcom/android/settings/HtcCdmaFeatureReceiver;->checkGPSONEObserver(Landroid/content/Context;)V

    .line 106
    :cond_6
    new-instance v7, Lcom/android/settings/framework/preference/location/HtcGPSOneLocSettings;

    invoke-direct {v7, v0}, Lcom/android/settings/framework/preference/location/HtcGPSOneLocSettings;-><init>(Landroid/content/Context;)V

    .line 108
    .local v7, mGPSOnePreference:Lcom/android/settings/framework/preference/location/HtcGPSOneLocSettings;
    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 109
    invoke-virtual {p0, v7}, Lcom/android/settings/UeVersionLocationSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 113
    .end local v7           #mGPSOnePreference:Lcom/android/settings/framework/preference/location/HtcGPSOneLocSettings;
    :cond_7
    new-instance v3, Lcom/android/settings/framework/preference/location/HtcGPSPreference;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;-><init>(Landroid/content/Context;)V

    .line 114
    .local v3, gpsPreference:Lcom/android/settings/framework/preference/location/HtcGPSPreference;
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/settings/UeVersionLocationSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 117
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAGPSAssistanceVisibility(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 119
    new-instance v5, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-direct {v5, v0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;-><init>(Landroid/content/Context;)V

    .line 121
    .local v5, mAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 122
    invoke-virtual {p0, v5}, Lcom/android/settings/UeVersionLocationSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 124
    .end local v5           #mAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
    :cond_8
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAGPSSyncTimeVisibility(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 126
    new-instance v6, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;-><init>(Landroid/content/Context;)V

    .line 128
    .local v6, mAGPSSyncTime:Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;
    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 129
    invoke-virtual {p0, v6}, Lcom/android/settings/UeVersionLocationSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 132
    .end local v6           #mAGPSSyncTime:Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;
    :cond_9
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAssistedGPSVisibility(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 135
    new-instance v1, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;-><init>(Landroid/content/Context;)V

    .line 137
    .local v1, assistedGpsPreference:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/settings/UeVersionLocationSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 141
    .end local v1           #assistedGpsPreference:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
    :cond_a
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getUseLocationForGoogleVisibility(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 143
    new-instance v9, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;

    invoke-direct {v9, v0}, Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;-><init>(Landroid/content/Context;)V

    .line 145
    .local v9, preference:Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;
    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 146
    invoke-virtual {p0, v9}, Lcom/android/settings/UeVersionLocationSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 150
    .end local v9           #preference:Lcom/android/settings/framework/preference/location/HtcUseLocationForGooglePreference;
    :cond_b
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->supportCompassWraningFeature()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 151
    new-instance v9, Lcom/android/settings/framework/preference/location/HtcCompassWarningPreference;

    invoke-virtual {p0}, Lcom/android/settings/UeVersionLocationSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/android/settings/framework/preference/location/HtcCompassWarningPreference;-><init>(Landroid/content/Context;)V

    .line 152
    .local v9, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/UeVersionLocationSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 153
    invoke-virtual {p0, v9}, Lcom/android/settings/UeVersionLocationSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 157
    .end local v9           #preference:Lcom/htc/preference/HtcPreference;
    :cond_c
    const-string v11, "UeVersionLocationSettings"

    const-string v12, "onCreate()"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/android/settings/UeVersionLocationSettings;->pluginExtraComponents_LocationService()V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/UeVersionLocationSettings;->requestHandlers()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 216
    const-string v0, "UeVersionLocationSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 223
    const-string v0, "UeVersionLocationSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 227
    const-string v0, "LOG_TAG"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/UeVersionLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 232
    :cond_0
    return-void
.end method
