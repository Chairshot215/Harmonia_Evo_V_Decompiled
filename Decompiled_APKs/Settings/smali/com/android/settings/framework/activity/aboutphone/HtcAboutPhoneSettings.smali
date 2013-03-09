.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;,
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;,
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;
    }
.end annotation


# static fields
.field private static ACTION_CHANGE_SUMMARY:Ljava/lang/String; = null

.field private static ACU_VAR_PROCESSING:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcAboutPhoneSettings"

.field private static htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;


# instance fields
.field private mIsUpdaterProcessing:Z

.field private mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "com.android.updater.ACU_CHANGE_SUMMARY"

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    .line 94
    const-string v0, "isUpdaterProcessing"

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACU_VAR_PROCESSING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 361
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACU_VAR_PROCESSING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/settings/framework/preference/update/HtcFOTAPreference;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->isUpdaterProcessing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    return-object v0
.end method

.method private doPlugin()V
    .locals 10

    .prologue
    .line 110
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v7

    .line 116
    .local v7, deviceType:Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 117
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    sget-object v0, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;

    if-ne v7, v0, :cond_8

    .line 118
    const v0, 0x7f0c012d

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 122
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 125
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 127
    .local v8, nPhone:Landroid/telephony/TelephonyManager;
    const/4 v6, 0x0

    .line 128
    .local v6, bCDMAPhone:Z
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 129
    const/4 v6, 0x1

    .line 134
    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0005:Z

    if-eqz v0, :cond_1

    .line 135
    new-instance v9, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 136
    .local v9, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 137
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 138
    new-instance v9, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;

    .end local v9           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;-><init>(Landroid/content/Context;)V

    .line 139
    .restart local v9       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 140
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 151
    .end local v9           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isD0001:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isI0001:Z

    if-eqz v0, :cond_9

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportActivities(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    const v0, 0x7f0c09ee

    const v2, 0x7f0c09ef

    const-string v3, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;)V

    .line 170
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    .line 174
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v0

    const/high16 v2, 0x4080

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    .line 175
    new-instance v9, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHelpPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHelpPreference;-><init>(Landroid/content/Context;)V

    .line 176
    .restart local v9       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 177
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 182
    .end local v9           #preference:Lcom/htc/preference/HtcPreference;
    :cond_4
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0003:Z

    if-eqz v0, :cond_5

    .line 184
    const v0, 0x7f0c03d6

    const v2, 0x7f0c03d7

    const-class v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/Class;)V

    .line 194
    :cond_5
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_SETTING_MOBILE_NETOWKR_4G_SP:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportNetwork()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    new-instance v9, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneNetworkPreference;-><init>(Landroid/content/Context;)V

    .line 197
    .restart local v9       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 198
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 203
    .end local v9           #preference:Lcom/htc/preference/HtcPreference;
    :cond_6
    new-instance v9, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;-><init>(Landroid/content/Context;)V

    .line 204
    .restart local v9       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 205
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 214
    new-instance v9, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;

    .end local v9           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;-><init>(Landroid/content/Context;)V

    .line 215
    .restart local v9       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 216
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 219
    new-instance v9, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneSoftwarePreference;

    .end local v9           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneSoftwarePreference;-><init>(Landroid/content/Context;)V

    .line 220
    .restart local v9       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 221
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 223
    new-instance v9, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;

    .end local v9           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;-><init>(Landroid/content/Context;)V

    .line 224
    .restart local v9       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 225
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->get(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    const v2, 0x7f0c04a7

    const v3, 0x7f0c04a8

    const-string v4, "com.htc.android.htcsetupwizard"

    const-string v5, "com.htc.android.htcsetupwizard.activity.TutorialActivity"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->requestHandlers()V

    .line 238
    return-void

    .line 120
    .end local v6           #bCDMAPhone:Z
    .end local v8           #nPhone:Landroid/telephony/TelephonyManager;
    .end local v9           #preference:Lcom/htc/preference/HtcPreference;
    :cond_8
    const v0, 0x7f0c0a95

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    goto/16 :goto_0

    .line 163
    .restart local v6       #bCDMAPhone:Z
    .restart local v8       #nPhone:Landroid/telephony/TelephonyManager;
    :cond_9
    new-instance v0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    .line 164
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    .line 165
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    iget-boolean v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setDownloadSummary(Z)V

    goto/16 :goto_1
.end method

.method private isUpdaterProcessing()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "status"

    aput-object v3, v2, v1

    .line 379
    .local v2, queryProjection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "otaupdate=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "1"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 380
    .local v6, cursor:Landroid/database/Cursor;
    const/16 v7, -0x270f

    .line 381
    .local v7, downloadStatus:I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 383
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v9

    .line 390
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #queryProjection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #downloadStatus:I
    :goto_0
    return v1

    .line 387
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #queryProjection:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #downloadStatus:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v10

    .line 388
    goto :goto_0

    .line 389
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #queryProjection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #downloadStatus:I
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v1, v10

    .line 390
    goto :goto_0
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/Class;)V
    .locals 4
    .parameter "root"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p4, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 283
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 284
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 285
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 289
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 291
    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;)V
    .locals 4
    .parameter "root"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter "action"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 316
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 317
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 318
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 323
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "root"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 300
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 301
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 302
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .parameter "root"
    .parameter "title"
    .parameter "summary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p4, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 267
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 268
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 273
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method private pluginPreferenceScreenForFragment(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/Class;)V
    .locals 4
    .parameter "root"
    .parameter "aboutphoneBatteryTitle"
    .parameter "aboutphoneBatterySummary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p4, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 249
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 250
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 251
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 255
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 256
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 258
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->requestHandlers()V

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 356
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;)V

    .line 357
    .local v0, updaterThread:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;
    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;->start()V

    .line 359
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 339
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    .line 342
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    .line 343
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 349
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    return-void
.end method
